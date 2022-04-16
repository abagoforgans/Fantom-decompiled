contract main {




// =====================  Runtime code  =====================


#
#  - lazyFundStream(uint256 arg1, uint256 arg2, uint256 arg3)
#  - cancelStream(uint256 arg1)
#  - withdrawFromStream(uint256 arg1, uint256 arg2)
#  - singleFundStream(uint256 arg1, uint256 arg2)
#
const getVersion = 'APOLLO'


uint256 nextStreamId;
mapping of uint256 effectiveValues;
mapping of struct stream;

function nextStreamId() {
    return nextStreamId
}

function hasStream(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stream[arg1].field_2728)
}

function effectiveValues(uint256 arg1) {
    require calldata.size - 4 >= 32
    return effectiveValues[arg1]
}

function streams(uint256 arg1) {
    require calldata.size - 4 >= 32
    return stream[arg1].field_0, 
           stream[arg1].field_256,
           stream[arg1].field_512,
           stream[arg1].field_768,
           stream[arg1].field_1024,
           stream[arg1].field_1280,
           stream[arg1].field_1536,
           stream[arg1].field_1792,
           stream[arg1].field_2048,
           stream[arg1].field_2304,
           stream[arg1].field_2560,
           bool(stream[arg1].field_2720),
           bool(stream[arg1].field_2728)
}

function getStream(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stream[arg1].field_2728:
        revert with 0, 'stream does not exist'
    return stream[arg1].field_2560, 
           stream[arg1].field_2304,
           stream[arg1].field_2048,
           stream[arg1].field_0,
           stream[arg1].field_768,
           stream[arg1].field_1024,
           stream[arg1].field_256,
           stream[arg1].field_512,
           stream[arg1].field_1280,
           stream[arg1].field_1792,
           bool(stream[arg1].field_2720)
}

function _fallback() payable {
    revert
}

function createEtherStream(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    if not arg1:
        revert with 0, 'stream to the zero address'
    if this.address == arg1:
        revert with 0, 'stream to the contract itself'
    if msg.sender == arg1:
        revert with 0, 'stream to the caller'
    if msg.value <= 0:
        revert with 0, 'deposit amount is zero'
    if arg2 < block.number:
        revert with 0, 'start block before block.number'
    if arg3 <= 0:
        revert with 0, 'k block is zero'
    if arg4 >= 1000:
        revert with 0, 'unlockRatio must < 1000'
    if arg4 <= 0:
        revert with 0, 'unlockRatio must > 0'
    if msg.value < 10^14:
        revert with 0, 'deposit too small'
    stream[stor1].field_0 = msg.value
    stream[stor1].field_256 = msg.value
    stream[stor1].field_512 = 0
    stream[stor1].field_768 = arg2
    stream[stor1].field_1024 = arg3
    stream[stor1].field_1280 = arg4
    stream[stor1].field_1536 = 10^18
    stream[stor1].field_1792 = arg2
    stream[stor1].field_2048 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    stream[stor1].field_2304 = arg1
    stream[stor1].field_2560 = msg.sender
    stream[stor1].field_2720 = uint8(arg5)
    stream[stor1].field_2728 = 1
    stream[stor1].field_2736 = Mask(80, 16, arg5) >> 16
    if nextStreamId + 1 < nextStreamId:
        revert with 0, 'SafeMath: addition overflow'
    nextStreamId++
    emit StreamCreated(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, msg.value, arg2, arg3, arg4, arg5, nextStreamId, msg.sender, arg1);
    return nextStreamId
}

function createStream(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, bool arg7) {
    require calldata.size - 4 >= 224
    if not arg2:
        revert with 0, 'stream to the zero address'
    if this.address == arg2:
        revert with 0, 'stream to the contract itself'
    if msg.sender == arg2:
        revert with 0, 'stream to the caller'
    if arg3 <= 0:
        revert with 0, 'deposit amount is zero'
    if arg4 < block.number:
        revert with 0, 'start block before block.number'
    if arg5 <= 0:
        revert with 0, 'k block is zero'
    if arg6 >= 1000:
        revert with 0, 'unlockRatio must < 1000'
    if arg6 <= 0:
        revert with 0, 'unlockRatio must > 0'
    if not arg1:
        revert with 0, 'not contract'
    if not ext_code.size(arg1):
        revert with 0, 'not contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TRANSFER_FROM_FAILED'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 'TRANSFER_FROM_FAILED'
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TRANSFER_FROM_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 'TRANSFER_FROM_FAILED'
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^uint8(ext_call.return_data[0]) < 10^6:
        revert with 0, 'token decimal too small'
    effectiveValues[stor1] = 10^uint8(ext_call.return_data[0]) / 10000
    if arg3 < 10^uint8(ext_call.return_data[0]) / 10000:
        revert with 0, 'deposit too small'
    stream[stor1].field_0 = arg3
    stream[stor1].field_256 = arg3
    stream[stor1].field_512 = 0
    stream[stor1].field_768 = arg4
    stream[stor1].field_1024 = arg5
    stream[stor1].field_1280 = arg6
    stream[stor1].field_1536 = 10^uint8(ext_call.return_data[0])
    stream[stor1].field_1792 = arg4
    stream[stor1].field_2048 = arg1
    stream[stor1].field_2304 = arg2
    stream[stor1].field_2560 = msg.sender
    stream[stor1].field_2720 = Mask(96, 0, arg7)
    stream[stor1].field_2728 = 1
    if nextStreamId + 1 < nextStreamId:
        revert with 0, 'SafeMath: addition overflow'
    nextStreamId++
    emit StreamCreated(address(arg1), arg3, arg4, arg5, arg6, arg7, nextStreamId, msg.sender, arg2);
    return nextStreamId
}

function balanceOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stream[arg1].field_2728:
        revert with 0, 'stream does not exist'
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[0] = arg1
    mem[32] = 3
    mem[512] = stream[arg1].field_0
    mem[544] = stream[arg1].field_256
    mem[576] = stream[arg1].field_512
    mem[608] = stream[arg1].field_768
    mem[640] = stream[arg1].field_1024
    mem[672] = stream[arg1].field_1280
    mem[704] = stream[arg1].field_1536
    mem[736] = stream[arg1].field_1792
    mem[768] = stream[arg1].field_2048
    mem[800] = stream[arg1].field_2304
    mem[832] = stream[arg1].field_2560
    mem[864] = bool(stream[arg1].field_2720)
    mem[896] = bool(stream[arg1].field_2728)
    if block.number < stream[arg1].field_768:
        return 0, stream[arg1].field_0
    mem[928] = 30
    mem[960] = 'SafeMath: subtraction overflow'
    if stream[arg1].field_1792 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - stream[arg1].field_1792:
        mem[992] = 26
        mem[1024] = 'SafeMath: division by zero'
        if not stream[arg1].field_1024:
            revert with 0, 'SafeMath: division by zero'
        if not stream[arg1].field_1280:
            if 0 / stream[arg1].field_1024 < 10^18 * 0 / stream[arg1].field_1024 / 10^18:
                revert with 0, 'ERR_SUB_UNDERFLOW'
            idx = 10^18 * 0 / stream[arg1].field_1024 / 10^18 / 10^18 / 2
            while idx:
                idx = idx / 2
                continue 
            if (0 / stream[arg1].field_1024) - (10^18 * 0 / stream[arg1].field_1024 / 10^18):
                if (0 / stream[arg1].field_1024) - (10^18 * 0 / stream[arg1].field_1024 / 10^18) < 0:
                    if -(0 / stream[arg1].field_1024) + (10^18 * 0 / stream[arg1].field_1024 / 10^18):
                        require -(0 / stream[arg1].field_1024) + (10^18 * 0 / stream[arg1].field_1024 / 10^18)
                        if 0 / -(0 / stream[arg1].field_1024) + (10^18 * 0 / stream[arg1].field_1024 / 10^18):
                            revert with 0, 'ERR_MUL_OVERFLOW'
                else:
                    if (0 / stream[arg1].field_1024) - (10^18 * 0 / stream[arg1].field_1024 / 10^18):
                        require (0 / stream[arg1].field_1024) - (10^18 * 0 / stream[arg1].field_1024 / 10^18)
                        if 0 / (0 / stream[arg1].field_1024) - (10^18 * 0 / stream[arg1].field_1024 / 10^18):
                            revert with 0, 'ERR_MUL_OVERFLOW'
            if not stream[arg1].field_256:
                if 0 > stream[arg1].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stream[arg1].field_512:
                    if stream[arg1].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stream[arg1].field_256 > stream[arg1].field_0:
                        revert with 0, 
                                    32,
                                    50,
                                    0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                    mem[1430 len 14]
                    if stream[arg1].field_256 < effectiveValues[arg1]:
                        return 0
                    return stream[arg1].field_256, 0
                if stream[arg1].field_512 + stream[arg1].field_256 < stream[arg1].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_512 + stream[arg1].field_256 < effectiveValues[arg1]:
                    return 0
                return stream[arg1].field_512 + stream[arg1].field_256, 0
            if 10^18 * stream[arg1].field_256 / stream[arg1].field_256 != 10^18:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1285 len 31]
            if 10^18 * stream[arg1].field_256 / 10^18 > stream[arg1].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stream[arg1].field_512:
                if stream[arg1].field_256 < 10^18 * stream[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_256 - (10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                    if 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                        return 0
                    return 0, 10^18 * stream[arg1].field_256 / 10^18
                if 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return stream[arg1].field_256 - (10^18 * stream[arg1].field_256 / 10^18), 0
                return stream[arg1].field_256 - (10^18 * stream[arg1].field_256 / 10^18), 10^18 * stream[arg1].field_256 / 10^18
            if stream[arg1].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 < 10^18 * stream[arg1].field_256 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                revert with 0, 
                            32,
                            50,
                            0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                            mem[1430 len 14]
            if stream[arg1].field_512 + stream[arg1].field_256 - (10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                if 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return 0
                return 0, 10^18 * stream[arg1].field_256 / 10^18
            if 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                return stream[arg1].field_512 + stream[arg1].field_256 - (10^18 * stream[arg1].field_256 / 10^18), 0
            return stream[arg1].field_512 + stream[arg1].field_256 - (10^18 * stream[arg1].field_256 / 10^18), 
                   10^18 * stream[arg1].field_256 / 10^18
        if 10^18 * stream[arg1].field_1280 / stream[arg1].field_1280 != 10^18:
            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
        mem[1056] = 26
        mem[1088] = 'SafeMath: division by zero'
        mem[64] = 1184
        mem[1120] = 30
        mem[1152] = 'SafeMath: subtraction overflow'
        if 10^18 * stream[arg1].field_1280 / 1000 > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if -(10^18 * stream[arg1].field_1280 / 1000) + 10^18 < 1:
            revert with 0, 'ERR_BPOW_BASE_TOO_LOW'
        if -(10^18 * stream[arg1].field_1280 / 1000) + 10^18 > 1999999999999999999:
            revert with 0, 'ERR_BPOW_BASE_TOO_HIGH'
        if 0 / stream[arg1].field_1024 < 10^18 * 0 / stream[arg1].field_1024 / 10^18:
            revert with 0, 'ERR_SUB_UNDERFLOW'
        if bool(10^18 * 0 / stream[arg1].field_1024 / 10^18 / 10^18):
            s = -(10^18 * stream[arg1].field_1280 / 1000) + 10^18
            idx = 10^18 * 0 / stream[arg1].field_1024 / 10^18 / 10^18 / 2
            t = -(10^18 * stream[arg1].field_1280 / 1000) + 10^18
            while idx:
                if t:
                    require t
                    if t * t / t != t:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if (t * t) + 5 * 10^17 < t * t:
                    revert with 0, 'ERR_MUL_OVERFLOW'
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = (t * t) + 5 * 10^17 / 10^18
                    continue 
                if s:
                    require s
                    if (t * t) + 5 * 10^17 / 10^18 * s / s != (t * t) + 5 * 10^17 / 10^18:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if ((t * t) + 5 * 10^17 / 10^18 * s) + 5 * 10^17 < (t * t) + 5 * 10^17 / 10^18 * s:
                    revert with 0, 'ERR_MUL_OVERFLOW'
                s = ((t * t) + 5 * 10^17 / 10^18 * s) + 5 * 10^17 / 10^18
                idx = idx / 2
                t = (t * t) + 5 * 10^17 / 10^18
                continue 
        else:
            s = 10^18
            idx = 10^18 * 0 / stream[arg1].field_1024 / 10^18 / 10^18 / 2
            t = -(10^18 * stream[arg1].field_1280 / 1000) + 10^18
            while idx:
                if t:
                    require t
                    if t * t / t != t:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if (t * t) + 5 * 10^17 < t * t:
                    revert with 0, 'ERR_MUL_OVERFLOW'
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = (t * t) + 5 * 10^17 / 10^18
                    continue 
                if s:
                    require s
                    if (t * t) + 5 * 10^17 / 10^18 * s / s != (t * t) + 5 * 10^17 / 10^18:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if ((t * t) + 5 * 10^17 / 10^18 * s) + 5 * 10^17 < (t * t) + 5 * 10^17 / 10^18 * s:
                    revert with 0, 'ERR_MUL_OVERFLOW'
                s = ((t * t) + 5 * 10^17 / 10^18 * s) + 5 * 10^17 / 10^18
                idx = idx / 2
                t = (t * t) + 5 * 10^17 / 10^18
                continue 
        if not (0 / stream[arg1].field_1024) - (10^18 * 0 / stream[arg1].field_1024 / 10^18):
            if not stream[arg1].field_256:
                if 0 > stream[arg1].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stream[arg1].field_512:
                    if stream[arg1].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stream[arg1].field_256 > stream[arg1].field_0:
                        revert with 0, 
                                    32,
                                    50,
                                    0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                    mem[1430 len 14]
                    if stream[arg1].field_256 < effectiveValues[arg1]:
                        return 0
                    return stream[arg1].field_256, 0
                if stream[arg1].field_512 + stream[arg1].field_256 < stream[arg1].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_512 + stream[arg1].field_256 < effectiveValues[arg1]:
                    return 0
                return stream[arg1].field_512 + stream[arg1].field_256, 0
            if s * stream[arg1].field_256 / stream[arg1].field_256 != s:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1285 len 31]
            if s * stream[arg1].field_256 / 10^18 > stream[arg1].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stream[arg1].field_512:
                if stream[arg1].field_256 < s * stream[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_256 - (s * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                    if s * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                        return 0
                    return 0, s * stream[arg1].field_256 / 10^18
                if s * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return stream[arg1].field_256 - (s * stream[arg1].field_256 / 10^18), 0
                return stream[arg1].field_256 - (s * stream[arg1].field_256 / 10^18), s * stream[arg1].field_256 / 10^18
            if stream[arg1].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 < s * stream[arg1].field_256 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                revert with 0, 
                            32,
                            50,
                            0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                            mem[1430 len 14]
            if stream[arg1].field_512 + stream[arg1].field_256 - (s * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                if s * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return 0
                return 0, s * stream[arg1].field_256 / 10^18
            if s * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                return stream[arg1].field_512 + stream[arg1].field_256 - (s * stream[arg1].field_256 / 10^18), 0
            return stream[arg1].field_512 + stream[arg1].field_256 - (s * stream[arg1].field_256 / 10^18), 
                   s * stream[arg1].field_256 / 10^18
        if -(10^18 * stream[arg1].field_1280 / 1000) + 10^18 < 10^18:
            t = 1
            u = 0
            v = 10^18
            idx = 10^18
            while idx >= 100 * 10^6:
                if 10^18 * t < 10^18:
                    revert with 0, 'ERR_SUB_UNDERFLOW'
                if (0 / stream[arg1].field_1024) - (10^18 * 0 / stream[arg1].field_1024 / 10^18) < (10^18 * t) - 10^18:
                    if (10^18 * t) + -(0 / stream[arg1].field_1024) + (10^18 * 0 / stream[arg1].field_1024 / 10^18) - 10^18:
                        require (10^18 * t) + -(0 / stream[arg1].field_1024) + (10^18 * 0 / stream[arg1].field_1024 / 10^18) - 10^18
                        if (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) - (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) / (10^18 * t) + -(0 / stream[arg1].field_1024) + (10^18 * 0 / stream[arg1].field_1024 / 10^18) - 10^18 != 10^18 * stream[arg1].field_1280 / 1000:
                            revert with 0, 'ERR_MUL_OVERFLOW'
                    if idx:
                        require idx
                        if (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx / idx != (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18:
                            revert with 0, 'ERR_MUL_OVERFLOW'
                    if ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 < (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                    if not 10^18 * t:
                        revert with 0, 'ERR_DIV_ZERO'
                    if ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                        require ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18
                        if 10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 / ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 != 10^18:
                            revert with 0, 'ERR_DIV_INTERNAL'
                    if (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) < 10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                        revert with 0, 'ERR_DIV_INTERNAL'
                    require 10^18 * t
                    if (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t:
                        if not u:
                            if ((10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t) + v < v:
                                revert with 0, 'ERR_ADD_OVERFLOW'
                            t = t + 1
                            u = bool(u)
                            v = ((10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t) + v
                            idx = (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t
                            continue 
                        if v < (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t:
                            revert with 0, 'ERR_SUB_UNDERFLOW'
                        t = t + 1
                        u = bool(u)
                        v = v - ((10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t)
                        idx = (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t
                        continue 
                else:
                    if (0 / stream[arg1].field_1024) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18) + (-1 * 10^18 * t) + 10^18:
                        require (0 / stream[arg1].field_1024) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18) + (-1 * 10^18 * t) + 10^18
                        if (10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) - (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) - (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) / (0 / stream[arg1].field_1024) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18) + (-1 * 10^18 * t) + 10^18 != 10^18 * stream[arg1].field_1280 / 1000:
                            revert with 0, 'ERR_MUL_OVERFLOW'
                    if idx:
                        require idx
                        if (10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx / idx != (10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18:
                            revert with 0, 'ERR_MUL_OVERFLOW'
                    if ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 < (10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                    if not 10^18 * t:
                        revert with 0, 'ERR_DIV_ZERO'
                    if ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                        require ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18
                        if 10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 / ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 != 10^18:
                            revert with 0, 'ERR_DIV_INTERNAL'
                    if (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) < 10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                        revert with 0, 'ERR_DIV_INTERNAL'
                    require 10^18 * t
                    if (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t:
                        if u:
                            if ((10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t) + v < v:
                                revert with 0, 'ERR_ADD_OVERFLOW'
                            t = t + 1
                            u = not u
                            v = ((10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t) + v
                            idx = (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t
                            continue 
                        if v < (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t:
                            revert with 0, 'ERR_SUB_UNDERFLOW'
                        t = t + 1
                        u = not u
                        v = v - ((10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t)
                        idx = (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t
                        continue 
                if s:
                    require s
                    if v * s / s != v:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if (v * s) + 5 * 10^17 < v * s:
                    revert with 0, 'ERR_MUL_OVERFLOW'
                if not stream[arg1].field_256:
                    if 0 > stream[arg1].field_256:
                        mem[1312] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[1316] = 32
                        idx = 32
                        while idx < 30:
                            mem[idx + 1380] = mem[idx + 1280]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not stream[arg1].field_512:
                        if stream[arg1].field_256 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if stream[arg1].field_256 > stream[arg1].field_0:
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                        mem[1430 len 14]
                        if stream[arg1].field_256 < effectiveValues[arg1]:
                            return 0
                        return stream[arg1].field_256, 0
                    if stream[arg1].field_512 + stream[arg1].field_256 < stream[arg1].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if stream[arg1].field_512 + stream[arg1].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                        revert with 0, 
                                    32,
                                    50,
                                    0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                    mem[1430 len 14]
                    if stream[arg1].field_512 + stream[arg1].field_256 < effectiveValues[arg1]:
                        return 0
                    return stream[arg1].field_512 + stream[arg1].field_256, 0
                if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / stream[arg1].field_256 != (v * s) + 5 * 10^17 / 10^18:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1285 len 31]
                if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 > stream[arg1].field_256:
                    mem[1312] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[1316] = 32
                    idx = 32
                    while idx < 30:
                        mem[idx + 1380] = mem[idx + 1280]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stream[arg1].field_512:
                    if stream[arg1].field_256 < (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if stream[arg1].field_256 > stream[arg1].field_0:
                        revert with 0, 
                                    32,
                                    50,
                                    0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                    mem[1430 len 14]
                    if stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                        if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                            return 0
                        return 0, (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
                    if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                        return stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 0
                    return stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 
                           (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
                if stream[arg1].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 < (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_512 + stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                    if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                        return 0
                    return 0, (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
                if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return stream[arg1].field_512 + stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 0
                return stream[arg1].field_512 + stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 
                       (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
            if s:
                require s
                if v * s / s != v:
                    revert with 0, 'ERR_MUL_OVERFLOW'
            if (v * s) + 5 * 10^17 < v * s:
                revert with 0, 'ERR_MUL_OVERFLOW'
            if not stream[arg1].field_256:
                if 0 > stream[arg1].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stream[arg1].field_512:
                    if stream[arg1].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stream[arg1].field_256 > stream[arg1].field_0:
                        revert with 0, 
                                    32,
                                    50,
                                    0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                    mem[1430 len 14]
                    if stream[arg1].field_256 < effectiveValues[arg1]:
                        return 0
                    return stream[arg1].field_256, 0
                if stream[arg1].field_512 + stream[arg1].field_256 < stream[arg1].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_512 + stream[arg1].field_256 < effectiveValues[arg1]:
                    return 0
                return stream[arg1].field_512 + stream[arg1].field_256, 0
            if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / stream[arg1].field_256 != (v * s) + 5 * 10^17 / 10^18:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1285 len 31]
            if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 > stream[arg1].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stream[arg1].field_512:
                if stream[arg1].field_256 < (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                    if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                        return 0
                    return 0, (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
                if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 0
                return stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 
                       (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
            if stream[arg1].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 < (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                revert with 0, 
                            32,
                            50,
                            0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                            mem[1430 len 14]
            if stream[arg1].field_512 + stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return 0
                return 0, (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
            if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                return stream[arg1].field_512 + stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 0
            return stream[arg1].field_512 + stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 
                   (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
        t = 1
        u = 10^18
        idx = 10^18
        while idx >= 100 * 10^6:
            if 10^18 * t < 10^18:
                revert with 0, 'ERR_SUB_UNDERFLOW'
            if (0 / stream[arg1].field_1024) - (10^18 * 0 / stream[arg1].field_1024 / 10^18) < (10^18 * t) - 10^18:
                if (10^18 * t) + -(0 / stream[arg1].field_1024) + (10^18 * 0 / stream[arg1].field_1024 / 10^18) - 10^18:
                    require (10^18 * t) + -(0 / stream[arg1].field_1024) + (10^18 * 0 / stream[arg1].field_1024 / 10^18) - 10^18
                    if (10^18 * 10^18 * stream[arg1].field_1280 / 1000) - (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) - (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) / (10^18 * t) + -(0 / stream[arg1].field_1024) + (10^18 * 0 / stream[arg1].field_1024 / 10^18) - 10^18 != -10^18 * stream[arg1].field_1280 / 1000:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if idx:
                    require idx
                    if (10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx / idx != (10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 < (10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx:
                    revert with 0, 'ERR_MUL_OVERFLOW'
                if not 10^18 * t:
                    revert with 0, 'ERR_DIV_ZERO'
                if ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                    require ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18
                    if 10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 / ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 != 10^18:
                        revert with 0, 'ERR_DIV_INTERNAL'
                if (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) < 10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                    revert with 0, 'ERR_DIV_INTERNAL'
                require 10^18 * t
                if (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t:
                    if u < (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t:
                        revert with 0, 'ERR_SUB_UNDERFLOW'
                    t = t + 1
                    u = u - ((10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t)
                    idx = (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t
                    continue 
            else:
                if (0 / stream[arg1].field_1024) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18) + (-1 * 10^18 * t) + 10^18:
                    require (0 / stream[arg1].field_1024) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18) + (-1 * 10^18 * t) + 10^18
                    if (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) - (0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) / (0 / stream[arg1].field_1024) + (-1 * 10^18 * 0 / stream[arg1].field_1024 / 10^18) + (-1 * 10^18 * t) + 10^18 != -10^18 * stream[arg1].field_1280 / 1000:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if idx:
                    require idx
                    if (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx / idx != (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 < (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx:
                    revert with 0, 'ERR_MUL_OVERFLOW'
                if not 10^18 * t:
                    revert with 0, 'ERR_DIV_ZERO'
                if ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                    require ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18
                    if 10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 / ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 != 10^18:
                        revert with 0, 'ERR_DIV_INTERNAL'
                if (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) < 10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                    revert with 0, 'ERR_DIV_INTERNAL'
                require 10^18 * t
                if (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t:
                    if ((10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t) + u < u:
                        revert with 0, 'ERR_ADD_OVERFLOW'
                    t = t + 1
                    u = ((10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t) + u
                    idx = (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 0 / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * 0 / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t
                    continue 
            if s:
                require s
                if u * s / s != u:
                    revert with 0, 'ERR_MUL_OVERFLOW'
            if (u * s) + 5 * 10^17 < u * s:
                revert with 0, 'ERR_MUL_OVERFLOW'
            if not stream[arg1].field_256:
                if 0 > stream[arg1].field_256:
                    mem[1312] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[1316] = 32
                    idx = 32
                    while idx < 30:
                        mem[idx + 1380] = mem[idx + 1280]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stream[arg1].field_512:
                    if stream[arg1].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stream[arg1].field_256 > stream[arg1].field_0:
                        revert with 0, 
                                    32,
                                    50,
                                    0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                    mem[1430 len 14]
                    if stream[arg1].field_256 < effectiveValues[arg1]:
                        return 0
                    return stream[arg1].field_256, 0
                if stream[arg1].field_512 + stream[arg1].field_256 < stream[arg1].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_512 + stream[arg1].field_256 < effectiveValues[arg1]:
                    return 0
                return stream[arg1].field_512 + stream[arg1].field_256, 0
            if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / stream[arg1].field_256 != (u * s) + 5 * 10^17 / 10^18:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1285 len 31]
            if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 > stream[arg1].field_256:
                mem[1312] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[1316] = 32
                idx = 32
                while idx < 30:
                    mem[idx + 1380] = mem[idx + 1280]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not stream[arg1].field_512:
                if stream[arg1].field_256 < (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                    if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                        return 0
                    return 0, (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
                if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 0
                return stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 
                       (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
            if stream[arg1].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 < (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                revert with 0, 
                            32,
                            50,
                            0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                            mem[1430 len 14]
            if stream[arg1].field_512 + stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return 0
                return 0, (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
            if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                return stream[arg1].field_512 + stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 0
            return stream[arg1].field_512 + stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 
                   (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
    else:
        if (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / block.number - stream[arg1].field_1792 != 10^18:
            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
        mem[992] = 26
        mem[1024] = 'SafeMath: division by zero'
        if not stream[arg1].field_1024:
            revert with 0, 'SafeMath: division by zero'
        if not stream[arg1].field_1280:
            if (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 < 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18:
                revert with 0, 'ERR_SUB_UNDERFLOW'
            idx = 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 / 10^18 / 2
            while idx:
                idx = idx / 2
                continue 
            if ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) - (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18):
                if ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) - (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) < 0:
                    if -((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18):
                        require -((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18)
                        if 0 / -((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18):
                            revert with 0, 'ERR_MUL_OVERFLOW'
                else:
                    if ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) - (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18):
                        require ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) - (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18)
                        if 0 / ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) - (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18):
                            revert with 0, 'ERR_MUL_OVERFLOW'
            if not stream[arg1].field_256:
                if 0 > stream[arg1].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stream[arg1].field_512:
                    if stream[arg1].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stream[arg1].field_256 > stream[arg1].field_0:
                        revert with 0, 
                                    32,
                                    50,
                                    0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                    mem[1430 len 14]
                    if stream[arg1].field_256 < effectiveValues[arg1]:
                        return 0
                    return stream[arg1].field_256, 0
                if stream[arg1].field_512 + stream[arg1].field_256 < stream[arg1].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_512 + stream[arg1].field_256 < effectiveValues[arg1]:
                    return 0
                return stream[arg1].field_512 + stream[arg1].field_256, 0
            if 10^18 * stream[arg1].field_256 / stream[arg1].field_256 != 10^18:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1285 len 31]
            if 10^18 * stream[arg1].field_256 / 10^18 > stream[arg1].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stream[arg1].field_512:
                if stream[arg1].field_256 < 10^18 * stream[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_256 - (10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                    if 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                        return 0
                    return 0, 10^18 * stream[arg1].field_256 / 10^18
                if 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return stream[arg1].field_256 - (10^18 * stream[arg1].field_256 / 10^18), 0
                return stream[arg1].field_256 - (10^18 * stream[arg1].field_256 / 10^18), 10^18 * stream[arg1].field_256 / 10^18
            if stream[arg1].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 < 10^18 * stream[arg1].field_256 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                revert with 0, 
                            32,
                            50,
                            0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                            mem[1430 len 14]
            if stream[arg1].field_512 + stream[arg1].field_256 - (10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                if 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return 0
                return 0, 10^18 * stream[arg1].field_256 / 10^18
            if 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                return stream[arg1].field_512 + stream[arg1].field_256 - (10^18 * stream[arg1].field_256 / 10^18), 0
            return stream[arg1].field_512 + stream[arg1].field_256 - (10^18 * stream[arg1].field_256 / 10^18), 
                   10^18 * stream[arg1].field_256 / 10^18
        if 10^18 * stream[arg1].field_1280 / stream[arg1].field_1280 != 10^18:
            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
        mem[1056] = 26
        mem[1088] = 'SafeMath: division by zero'
        mem[64] = 1184
        mem[1120] = 30
        mem[1152] = 'SafeMath: subtraction overflow'
        if 10^18 * stream[arg1].field_1280 / 1000 > 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if -(10^18 * stream[arg1].field_1280 / 1000) + 10^18 < 1:
            revert with 0, 'ERR_BPOW_BASE_TOO_LOW'
        if -(10^18 * stream[arg1].field_1280 / 1000) + 10^18 > 1999999999999999999:
            revert with 0, 'ERR_BPOW_BASE_TOO_HIGH'
        if (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 < 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18:
            revert with 0, 'ERR_SUB_UNDERFLOW'
        if bool(10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 / 10^18):
            s = -(10^18 * stream[arg1].field_1280 / 1000) + 10^18
            idx = 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 / 10^18 / 2
            t = -(10^18 * stream[arg1].field_1280 / 1000) + 10^18
            while idx:
                if t:
                    require t
                    if t * t / t != t:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if (t * t) + 5 * 10^17 < t * t:
                    revert with 0, 'ERR_MUL_OVERFLOW'
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = (t * t) + 5 * 10^17 / 10^18
                    continue 
                if s:
                    require s
                    if (t * t) + 5 * 10^17 / 10^18 * s / s != (t * t) + 5 * 10^17 / 10^18:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if ((t * t) + 5 * 10^17 / 10^18 * s) + 5 * 10^17 < (t * t) + 5 * 10^17 / 10^18 * s:
                    revert with 0, 'ERR_MUL_OVERFLOW'
                s = ((t * t) + 5 * 10^17 / 10^18 * s) + 5 * 10^17 / 10^18
                idx = idx / 2
                t = (t * t) + 5 * 10^17 / 10^18
                continue 
        else:
            s = 10^18
            idx = 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 / 10^18 / 2
            t = -(10^18 * stream[arg1].field_1280 / 1000) + 10^18
            while idx:
                if t:
                    require t
                    if t * t / t != t:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if (t * t) + 5 * 10^17 < t * t:
                    revert with 0, 'ERR_MUL_OVERFLOW'
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = (t * t) + 5 * 10^17 / 10^18
                    continue 
                if s:
                    require s
                    if (t * t) + 5 * 10^17 / 10^18 * s / s != (t * t) + 5 * 10^17 / 10^18:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if ((t * t) + 5 * 10^17 / 10^18 * s) + 5 * 10^17 < (t * t) + 5 * 10^17 / 10^18 * s:
                    revert with 0, 'ERR_MUL_OVERFLOW'
                s = ((t * t) + 5 * 10^17 / 10^18 * s) + 5 * 10^17 / 10^18
                idx = idx / 2
                t = (t * t) + 5 * 10^17 / 10^18
                continue 
        if not ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) - (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18):
            if not stream[arg1].field_256:
                if 0 > stream[arg1].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stream[arg1].field_512:
                    if stream[arg1].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stream[arg1].field_256 > stream[arg1].field_0:
                        revert with 0, 
                                    32,
                                    50,
                                    0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                    mem[1430 len 14]
                    if stream[arg1].field_256 < effectiveValues[arg1]:
                        return 0
                    return stream[arg1].field_256, 0
                if stream[arg1].field_512 + stream[arg1].field_256 < stream[arg1].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_512 + stream[arg1].field_256 < effectiveValues[arg1]:
                    return 0
                return stream[arg1].field_512 + stream[arg1].field_256, 0
            if s * stream[arg1].field_256 / stream[arg1].field_256 != s:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1285 len 31]
            if s * stream[arg1].field_256 / 10^18 > stream[arg1].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stream[arg1].field_512:
                if stream[arg1].field_256 < s * stream[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_256 - (s * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                    if s * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                        return 0
                    return 0, s * stream[arg1].field_256 / 10^18
                if s * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return stream[arg1].field_256 - (s * stream[arg1].field_256 / 10^18), 0
                return stream[arg1].field_256 - (s * stream[arg1].field_256 / 10^18), s * stream[arg1].field_256 / 10^18
            if stream[arg1].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 < s * stream[arg1].field_256 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                revert with 0, 
                            32,
                            50,
                            0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                            mem[1430 len 14]
            if stream[arg1].field_512 + stream[arg1].field_256 - (s * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                if s * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return 0
                return 0, s * stream[arg1].field_256 / 10^18
            if s * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                return stream[arg1].field_512 + stream[arg1].field_256 - (s * stream[arg1].field_256 / 10^18), 0
            return stream[arg1].field_512 + stream[arg1].field_256 - (s * stream[arg1].field_256 / 10^18), 
                   s * stream[arg1].field_256 / 10^18
        if -(10^18 * stream[arg1].field_1280 / 1000) + 10^18 < 10^18:
            t = 1
            u = 0
            v = 10^18
            idx = 10^18
            while idx >= 100 * 10^6:
                if 10^18 * t < 10^18:
                    revert with 0, 'ERR_SUB_UNDERFLOW'
                if ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) - (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) < (10^18 * t) - 10^18:
                    if (10^18 * t) + -((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) - 10^18:
                        require (10^18 * t) + -((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) - 10^18
                        if (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) - ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) / (10^18 * t) + -((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) - 10^18 != 10^18 * stream[arg1].field_1280 / 1000:
                            revert with 0, 'ERR_MUL_OVERFLOW'
                    if idx:
                        require idx
                        if (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx / idx != (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18:
                            revert with 0, 'ERR_MUL_OVERFLOW'
                    if ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 < (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                    if not 10^18 * t:
                        revert with 0, 'ERR_DIV_ZERO'
                    if ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                        require ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18
                        if 10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 / ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 != 10^18:
                            revert with 0, 'ERR_DIV_INTERNAL'
                    if (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) < 10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                        revert with 0, 'ERR_DIV_INTERNAL'
                    require 10^18 * t
                    if (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t:
                        if not u:
                            if ((10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t) + v < v:
                                revert with 0, 'ERR_ADD_OVERFLOW'
                            t = t + 1
                            u = bool(u)
                            v = ((10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t) + v
                            idx = (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t
                            continue 
                        if v < (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t:
                            revert with 0, 'ERR_SUB_UNDERFLOW'
                        t = t + 1
                        u = bool(u)
                        v = v - ((10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t)
                        idx = (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t
                        continue 
                else:
                    if ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) + (-1 * 10^18 * t) + 10^18:
                        require ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) + (-1 * 10^18 * t) + 10^18
                        if (10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) - (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) - (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) / ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) + (-1 * 10^18 * t) + 10^18 != 10^18 * stream[arg1].field_1280 / 1000:
                            revert with 0, 'ERR_MUL_OVERFLOW'
                    if idx:
                        require idx
                        if (10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx / idx != (10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18:
                            revert with 0, 'ERR_MUL_OVERFLOW'
                    if ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 < (10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                    if not 10^18 * t:
                        revert with 0, 'ERR_DIV_ZERO'
                    if ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                        require ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18
                        if 10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 / ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 != 10^18:
                            revert with 0, 'ERR_DIV_INTERNAL'
                    if (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) < 10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                        revert with 0, 'ERR_DIV_INTERNAL'
                    require 10^18 * t
                    if (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t:
                        if u:
                            if ((10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t) + v < v:
                                revert with 0, 'ERR_ADD_OVERFLOW'
                            t = t + 1
                            u = not u
                            v = ((10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t) + v
                            idx = (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t
                            continue 
                        if v < (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t:
                            revert with 0, 'ERR_SUB_UNDERFLOW'
                        t = t + 1
                        u = not u
                        v = v - ((10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t)
                        idx = (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t
                        continue 
                if s:
                    require s
                    if v * s / s != v:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if (v * s) + 5 * 10^17 < v * s:
                    revert with 0, 'ERR_MUL_OVERFLOW'
                if not stream[arg1].field_256:
                    if 0 > stream[arg1].field_256:
                        mem[1312] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[1316] = 32
                        idx = 32
                        while idx < 30:
                            mem[idx + 1380] = mem[idx + 1280]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not stream[arg1].field_512:
                        if stream[arg1].field_256 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if stream[arg1].field_256 > stream[arg1].field_0:
                            revert with 0, 
                                        32,
                                        50,
                                        0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                        mem[1430 len 14]
                        if stream[arg1].field_256 < effectiveValues[arg1]:
                            return 0
                        return stream[arg1].field_256, 0
                    if stream[arg1].field_512 + stream[arg1].field_256 < stream[arg1].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if stream[arg1].field_512 + stream[arg1].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                        revert with 0, 
                                    32,
                                    50,
                                    0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                    mem[1430 len 14]
                    if stream[arg1].field_512 + stream[arg1].field_256 < effectiveValues[arg1]:
                        return 0
                    return stream[arg1].field_512 + stream[arg1].field_256, 0
                if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / stream[arg1].field_256 != (v * s) + 5 * 10^17 / 10^18:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1285 len 31]
                if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 > stream[arg1].field_256:
                    mem[1312] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[1316] = 32
                    idx = 32
                    while idx < 30:
                        mem[idx + 1380] = mem[idx + 1280]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stream[arg1].field_512:
                    if stream[arg1].field_256 < (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if stream[arg1].field_256 > stream[arg1].field_0:
                        revert with 0, 
                                    32,
                                    50,
                                    0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                    mem[1430 len 14]
                    if stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                        if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                            return 0
                        return 0, (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
                    if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                        return stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 0
                    return stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 
                           (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
                if stream[arg1].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 < (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_512 + stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                    if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                        return 0
                    return 0, (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
                if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return stream[arg1].field_512 + stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 0
                return stream[arg1].field_512 + stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 
                       (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
            if s:
                require s
                if v * s / s != v:
                    revert with 0, 'ERR_MUL_OVERFLOW'
            if (v * s) + 5 * 10^17 < v * s:
                revert with 0, 'ERR_MUL_OVERFLOW'
            if not stream[arg1].field_256:
                if 0 > stream[arg1].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stream[arg1].field_512:
                    if stream[arg1].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stream[arg1].field_256 > stream[arg1].field_0:
                        revert with 0, 
                                    32,
                                    50,
                                    0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                    mem[1430 len 14]
                    if stream[arg1].field_256 < effectiveValues[arg1]:
                        return 0
                    return stream[arg1].field_256, 0
                if stream[arg1].field_512 + stream[arg1].field_256 < stream[arg1].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_512 + stream[arg1].field_256 < effectiveValues[arg1]:
                    return 0
                return stream[arg1].field_512 + stream[arg1].field_256, 0
            if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / stream[arg1].field_256 != (v * s) + 5 * 10^17 / 10^18:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1285 len 31]
            if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 > stream[arg1].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stream[arg1].field_512:
                if stream[arg1].field_256 < (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                    if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                        return 0
                    return 0, (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
                if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 0
                return stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 
                       (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
            if stream[arg1].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 < (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                revert with 0, 
                            32,
                            50,
                            0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                            mem[1430 len 14]
            if stream[arg1].field_512 + stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return 0
                return 0, (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
            if (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                return stream[arg1].field_512 + stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 0
            return stream[arg1].field_512 + stream[arg1].field_256 - ((v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 
                   (v * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
        t = 1
        u = 10^18
        idx = 10^18
        while idx >= 100 * 10^6:
            if 10^18 * t < 10^18:
                revert with 0, 'ERR_SUB_UNDERFLOW'
            if ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) - (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) < (10^18 * t) - 10^18:
                if (10^18 * t) + -((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) - 10^18:
                    require (10^18 * t) + -((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) - 10^18
                    if (10^18 * 10^18 * stream[arg1].field_1280 / 1000) - (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) - (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) / (10^18 * t) + -((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) - 10^18 != -10^18 * stream[arg1].field_1280 / 1000:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if idx:
                    require idx
                    if (10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx / idx != (10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 < (10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx:
                    revert with 0, 'ERR_MUL_OVERFLOW'
                if not 10^18 * t:
                    revert with 0, 'ERR_DIV_ZERO'
                if ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                    require ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18
                    if 10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 / ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 != 10^18:
                        revert with 0, 'ERR_DIV_INTERNAL'
                if (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) < 10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                    revert with 0, 'ERR_DIV_INTERNAL'
                require 10^18 * t
                if (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t:
                    if u < (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t:
                        revert with 0, 'ERR_SUB_UNDERFLOW'
                    t = t + 1
                    u = u - ((10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t)
                    idx = (10^18 * ((10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t
                    continue 
            else:
                if ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) + (-1 * 10^18 * t) + 10^18:
                    require ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) + (-1 * 10^18 * t) + 10^18
                    if (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) - ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) / ((10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024) + (-1 * 10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18) + (-1 * 10^18 * t) + 10^18 != -10^18 * stream[arg1].field_1280 / 1000:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if idx:
                    require idx
                    if (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx / idx != (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18:
                        revert with 0, 'ERR_MUL_OVERFLOW'
                if ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 < (-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx:
                    revert with 0, 'ERR_MUL_OVERFLOW'
                if not 10^18 * t:
                    revert with 0, 'ERR_DIV_ZERO'
                if ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                    require ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18
                    if 10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 / ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18 != 10^18:
                        revert with 0, 'ERR_DIV_INTERNAL'
                if (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) < 10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18:
                    revert with 0, 'ERR_DIV_INTERNAL'
                require 10^18 * t
                if (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t:
                    if ((10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t) + u < u:
                        revert with 0, 'ERR_ADD_OVERFLOW'
                    t = t + 1
                    u = ((10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t) + u
                    idx = (10^18 * ((-1 * 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (-1 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * (10^18 * block.number) - (10^18 * stream[arg1].field_1792) / stream[arg1].field_1024 / 10^18 * 10^18 * stream[arg1].field_1280 / 1000) + (10^18 * t * 10^18 * stream[arg1].field_1280 / 1000) + 5 * 10^17 / 10^18 * idx) + 5 * 10^17 / 10^18) + (10^18 * t / 2) / 10^18 * t
                    continue 
            if s:
                require s
                if u * s / s != u:
                    revert with 0, 'ERR_MUL_OVERFLOW'
            if (u * s) + 5 * 10^17 < u * s:
                revert with 0, 'ERR_MUL_OVERFLOW'
            if not stream[arg1].field_256:
                if 0 > stream[arg1].field_256:
                    mem[1312] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[1316] = 32
                    idx = 32
                    while idx < 30:
                        mem[idx + 1380] = mem[idx + 1280]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stream[arg1].field_512:
                    if stream[arg1].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if stream[arg1].field_256 > stream[arg1].field_0:
                        revert with 0, 
                                    32,
                                    50,
                                    0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                    mem[1430 len 14]
                    if stream[arg1].field_256 < effectiveValues[arg1]:
                        return 0
                    return stream[arg1].field_256, 0
                if stream[arg1].field_512 + stream[arg1].field_256 < stream[arg1].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_512 + stream[arg1].field_256 < effectiveValues[arg1]:
                    return 0
                return stream[arg1].field_512 + stream[arg1].field_256, 0
            if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / stream[arg1].field_256 != (u * s) + 5 * 10^17 / 10^18:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1285 len 31]
            if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 > stream[arg1].field_256:
                mem[1312] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[1316] = 32
                idx = 32
                while idx < 30:
                    mem[idx + 1380] = mem[idx + 1280]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not stream[arg1].field_512:
                if stream[arg1].field_256 < (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if stream[arg1].field_256 > stream[arg1].field_0:
                    revert with 0, 
                                32,
                                50,
                                0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                                mem[1430 len 14]
                if stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                    if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                        return 0
                    return 0, (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
                if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 0
                return stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 
                       (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
            if stream[arg1].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 < (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
                revert with 0, 
                            32,
                            50,
                            0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                            mem[1430 len 14]
            if stream[arg1].field_512 + stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
                if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                    return 0
                return 0, (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
            if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                return stream[arg1].field_512 + stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 0
            return stream[arg1].field_512 + stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 
                   (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
    if s:
        require s
        if u * s / s != u:
            revert with 0, 'ERR_MUL_OVERFLOW'
    if (u * s) + 5 * 10^17 < u * s:
        revert with 0, 'ERR_MUL_OVERFLOW'
    if not stream[arg1].field_256:
        if 0 > stream[arg1].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stream[arg1].field_512:
            if stream[arg1].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if stream[arg1].field_256 > stream[arg1].field_0:
                revert with 0, 
                            32,
                            50,
                            0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                            mem[1430 len 14]
            if stream[arg1].field_256 < effectiveValues[arg1]:
                return 0
            return stream[arg1].field_256, 0
        if stream[arg1].field_512 + stream[arg1].field_256 < stream[arg1].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if stream[arg1].field_512 + stream[arg1].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
            revert with 0, 
                        32,
                        50,
                        0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                        mem[1430 len 14]
        if stream[arg1].field_512 + stream[arg1].field_256 < effectiveValues[arg1]:
            return 0
        return stream[arg1].field_512 + stream[arg1].field_256, 0
    if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / stream[arg1].field_256 != (u * s) + 5 * 10^17 / 10^18:
        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1285 len 31]
    if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 > stream[arg1].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stream[arg1].field_512:
        if stream[arg1].field_256 < (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if stream[arg1].field_256 > stream[arg1].field_0:
            revert with 0, 
                        32,
                        50,
                        0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                        mem[1430 len 14]
        if stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
            if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
                return 0
            return 0, (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
        if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
            return stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 0
        return stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 
               (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
    if stream[arg1].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if stream[arg1].field_512 + stream[arg1].field_256 < (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if stream[arg1].field_512 + stream[arg1].field_256 > stream[arg1].field_0:
        revert with 0, 
                    32,
                    50,
                    0xfe62616c616e63654f663a2072656d61696e696e67206f7220776974686472617761626c6520616d6f756e74206973206261,
                    mem[1430 len 14]
    if stream[arg1].field_512 + stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18) < effectiveValues[arg1]:
        if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
            return 0
        return 0, (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
    if (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18 < effectiveValues[arg1]:
        return stream[arg1].field_512 + stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 0
    return stream[arg1].field_512 + stream[arg1].field_256 - ((u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18), 
           (u * s) + 5 * 10^17 / 10^18 * stream[arg1].field_256 / 10^18
}



}
