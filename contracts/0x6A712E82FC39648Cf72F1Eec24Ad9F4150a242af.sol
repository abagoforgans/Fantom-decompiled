contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - massUpdatePools()
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const burnAddress = 57005

const earningToken = 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba

const EarningsPerBlock = 5 * 10^16

const sub_cb608cc5(?) = 5 * 10^15

const MAX_WITHDRAWAL_FEE_BP = 300

const MAX_DEPOSIT_FEE_BP = 400

const MAXIMUM_REFERRAL_COMMISSION_RATE = 2000


address owner;
uint256 stor1;
array of uint256 withdrawalFeeIntervals;
array of uint16 stor11;
address devaddr;
uint32 stor3;
address feeAddr;
uint256 stor3;
uint256 startBlock;
uint256 endBlock;
uint16 referralCommissionRate; offset 160
address sub_143d2575Address;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;

function poolLength() payable {
    return poolInfo.length
}

function endBlock() payable {
    return endBlock
}

function withdrawalFeeBP(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor11.length
    return withdrawalFeeBP[uint8(arg1)]
}

function sub_143d2575(?) payable {
    return sub_143d2575Address
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return address(poolInfo[arg1].field_0), 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           address(poolInfo[arg1].field_1024),
           uint16(poolInfo[arg1].field_1024),
           bool(uint8(poolInfo[arg1].field_1200))
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function withdrawalFeeIntervals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < withdrawalFeeIntervals.length
    return withdrawalFeeIntervals[arg1].field_0
}

function feeAddr() payable {
    return address(feeAddr)
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function referralCommissionRate() payable {
    return referralCommissionRate
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 <= arg2:
        return (arg2 - arg1)
    else:
        return 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_10b37c23(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_143d2575Address = arg1
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devaddr = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(feeAddr) = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setReferralCommissionRate(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x73736574526566657272616c436f6d6d697373696f6e526174653a20696e76616c696420726566657272616c20636f6d6d697373696f6e207261746520626173697320706f696e74,
                    mem[236 len 24]
    referralCommissionRate = arg1
}

function getWithdrawFee(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if not uint8(poolInfo[arg1].field_1200):
        return 0
    idx = 0
    while idx < withdrawalFeeIntervals.length:
        mem[0] = 10
        if block.number - userInfo[arg1][address(arg2)].field_512 >= withdrawalFeeIntervals[idx].field_0:
            idx = idx + 1
            continue 
        require idx < stor11.length
        return stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]
    if withdrawalFeeIntervals.length < stor11.length:
        return stor('array', ('stor', 252, 4, ('length', ('name', 'stor10', 10))), ('name', 'stor11', 11))[uint8(stor10.length)]
    revert
}

function transferEarningTokenOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
    call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function inCaseTokensGetStuck(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function setWithdrawFee(uint256[] arg1, uint16[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length + 1 != arg2.length:
        revert with 0, 
                    32,
                    87,
                    0x7373657457697468647261774665653a205f7769746864726177616c4665654250206c656e677468206973206f6e65206d6f7265207468616e205f7769746864726177616c466565496e74657276616c73206c656e6774,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 315 len 9]
    if arg2.length <= 0:
        revert with 0, 
                    32,
                    58,
                    0x6c73657457697468647261774665653a205f7769746864726177616c4665654250206c656e677468206973206f6e65206d6f7265207468616e20,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 286 len 6]
    idx = 0
    while idx < arg1.length - 1:
        require idx + 1 < arg1.length
        require idx < arg1.length
        if mem[(32 * idx) + 128] >= mem[(32 * idx + 1) + 128]:
            revert with 0, 
                        32,
                        46,
                        0x7373657457697468647261774665653a2054686520696e74657276616c206d75737420626520617363656e64696e,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 274 len 18]
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg1.length) + 190 len 2] > 300:
            revert with 0, 
                        32,
                        51,
                        0x7373657457697468647261774665653a20696e76616c6964207769746864726177616c2066656520626173697320706f696e74,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 279 len 13]
        idx = idx + 1
        continue 
    withdrawalFeeIntervals.length = arg1.length
    if not arg1.length:
        idx = 0
        while withdrawalFeeIntervals.length > idx:
            withdrawalFeeIntervals[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            withdrawalFeeIntervals[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while withdrawalFeeIntervals.length > idx:
            withdrawalFeeIntervals[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor11.length = arg2.length
    if not arg2.length:
        idx = 0
        while stor11.length + 15 / 16 > idx:
            uint16(stor11[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            uint256(stor11) = mem[idx + 30 len 2] * 256^s or !(65535 * 256^s) and uint256(stor11)
            s = s + (2 * -s + 3 / 32) + (-1 * s * s + 3 / 32) + 2
            idx = idx + 32
            continue 
        idx = floor32(arg2.length) >> 4
        s = sha3(11)
        while idx:
            stor[s] = !(65535 * 256^idx) and stor[s]
            idx = idx + (2 * -idx + 3 / 32) + (-1 * idx * idx + 3 / 32) + 2
            s = (idx + 3 / 32) + s
            continue 
        idx = (floor32(arg2.length) >> 4) + Mask(254, 1, None + -(floor32(arg2.length) >> 4) + 3) + 3 / 32 * uint255(None + -(floor32(arg2.length) >> 4) + 3) >> 1
        while stor11.length + 15 / 16 > idx:
            uint16(stor11[idx]) = 0
            idx = idx + 1
            continue 
}

function pendingEarnings(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(address(poolInfo[arg1].field_1024))
    staticcall address(poolInfo[arg1].field_1024).wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if endBlock < block.number:
        if endBlock <= poolInfo[arg1].field_512:
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if not ext_call.return_data[0]:
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_512 > endBlock:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if not endBlock - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require endBlock - poolInfo[arg1].field_512
        if (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[arg1].field_512) / endBlock - poolInfo[arg1].field_512 != 5 * 10^16:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[arg1].field_512):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[arg1].field_512)
        if (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[arg1].field_512) != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 5 * 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[arg1].field_512):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[arg1].field_512)
    if (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[arg1].field_512) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function set(uint256 arg1, uint256 arg2, bool arg3, uint16 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 0, 'pool inexistent'
    if arg4 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number > poolInfo[idx].field_512:
                require ext_code.size(address(poolInfo[idx].field_1024))
                staticcall address(poolInfo[idx].field_1024).wantLockedTotal() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if endBlock < block.number:
                    if not ext_call.return_data[0]:
                        poolInfo[idx].field_512 = endBlock
                    else:
                        if poolInfo[idx].field_512 <= endBlock:
                            if endBlock - poolInfo[idx].field_512 > 0:
                                if not endBlock - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not endBlock - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint
                                    else:
                                        require endBlock - poolInfo[idx].field_512
                                        if (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512) / endBlock - poolInfo[idx].field_512 != 5 * 10^15:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint
                                        else:
                                            require (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512)
                                            if (5 * 10^15 * endBlock * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (5 * 10^15 * endBlock * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                    call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require endBlock - poolInfo[idx].field_512
                                    if (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[idx].field_512) / endBlock - poolInfo[idx].field_512 != 5 * 10^16:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[idx].field_512):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not endBlock - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint
                                        else:
                                            require endBlock - poolInfo[idx].field_512
                                            if (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512) / endBlock - poolInfo[idx].field_512 != 5 * 10^15:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint
                                            else:
                                                require (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512)
                                                if (5 * 10^15 * endBlock * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (5 * 10^15 * endBlock * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[idx].field_512)
                                        if (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not endBlock - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint
                                        else:
                                            require endBlock - poolInfo[idx].field_512
                                            if (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512) / endBlock - poolInfo[idx].field_512 != 5 * 10^15:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint
                                            else:
                                                require (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512)
                                                if (5 * 10^15 * endBlock * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (5 * 10^15 * endBlock * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^12 * (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = endBlock
                else:
                    if not ext_call.return_data[0]:
                        poolInfo[idx].field_512 = block.number
                    else:
                        if poolInfo[idx].field_512 <= block.number:
                            if block.number - poolInfo[idx].field_512 > 0:
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not block.number - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint
                                    else:
                                        require block.number - poolInfo[idx].field_512
                                        if (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5 * 10^15:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint
                                        else:
                                            require (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512)
                                            if (5 * 10^15 * block.number * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (5 * 10^15 * block.number * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                    call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.number - poolInfo[idx].field_512
                                    if (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5 * 10^16:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[idx].field_512):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not block.number - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint
                                        else:
                                            require block.number - poolInfo[idx].field_512
                                            if (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5 * 10^15:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint
                                            else:
                                                require (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512)
                                                if (5 * 10^15 * block.number * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (5 * 10^15 * block.number * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[idx].field_512)
                                        if (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not block.number - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint
                                        else:
                                            require block.number - poolInfo[idx].field_512
                                            if (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5 * 10^15:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint
                                            else:
                                                require (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512)
                                                if (5 * 10^15 * block.number * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (5 * 10^15 * block.number * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^12 * (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    uint16(poolInfo[arg1].field_1184) = arg4
    Mask(80, 0, poolInfo[arg1].field_1200) = Mask(80, 0, arg5)
}

function sub_fcda4628(?) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg5 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number > poolInfo[idx].field_512:
                require ext_code.size(address(poolInfo[idx].field_1024))
                staticcall address(poolInfo[idx].field_1024).wantLockedTotal() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if endBlock < block.number:
                    if not ext_call.return_data[0]:
                        poolInfo[idx].field_512 = endBlock
                    else:
                        if poolInfo[idx].field_512 <= endBlock:
                            if endBlock - poolInfo[idx].field_512 > 0:
                                if not endBlock - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not endBlock - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint
                                    else:
                                        require endBlock - poolInfo[idx].field_512
                                        if (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512) / endBlock - poolInfo[idx].field_512 != 5 * 10^15:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint
                                        else:
                                            require (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512)
                                            if (5 * 10^15 * endBlock * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (5 * 10^15 * endBlock * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                    call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require endBlock - poolInfo[idx].field_512
                                    if (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[idx].field_512) / endBlock - poolInfo[idx].field_512 != 5 * 10^16:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[idx].field_512):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not endBlock - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint
                                        else:
                                            require endBlock - poolInfo[idx].field_512
                                            if (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512) / endBlock - poolInfo[idx].field_512 != 5 * 10^15:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint
                                            else:
                                                require (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512)
                                                if (5 * 10^15 * endBlock * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (5 * 10^15 * endBlock * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[idx].field_512)
                                        if (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not endBlock - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint
                                        else:
                                            require endBlock - poolInfo[idx].field_512
                                            if (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512) / endBlock - poolInfo[idx].field_512 != 5 * 10^15:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint
                                            else:
                                                require (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512)
                                                if (5 * 10^15 * endBlock * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (5 * 10^15 * endBlock * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^12 * (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (5 * 10^16 * endBlock * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = endBlock
                else:
                    if not ext_call.return_data[0]:
                        poolInfo[idx].field_512 = block.number
                    else:
                        if poolInfo[idx].field_512 <= block.number:
                            if block.number - poolInfo[idx].field_512 > 0:
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not block.number - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint
                                    else:
                                        require block.number - poolInfo[idx].field_512
                                        if (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5 * 10^15:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint
                                        else:
                                            require (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512)
                                            if (5 * 10^15 * block.number * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, (5 * 10^15 * block.number * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                    call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.number - poolInfo[idx].field_512
                                    if (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5 * 10^16:
                                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[idx].field_512):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not block.number - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint
                                        else:
                                            require block.number - poolInfo[idx].field_512
                                            if (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5 * 10^15:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint
                                            else:
                                                require (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512)
                                                if (5 * 10^15 * block.number * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (5 * 10^15 * block.number * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[idx].field_512)
                                        if (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not block.number - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args devaddr, 0 / totalAllocPoint
                                        else:
                                            require block.number - poolInfo[idx].field_512
                                            if (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 5 * 10^15:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0 / totalAllocPoint
                                            else:
                                                require (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512)
                                                if (5 * 10^15 * block.number * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[idx].field_512) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args devaddr, (5 * 10^15 * block.number * poolInfo[idx].field_256) - (5 * 10^15 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^12 * (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^12 * (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (5 * 10^16 * block.number * poolInfo[idx].field_256) - (5 * 10^16 * poolInfo[idx].field_512 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    address(poolInfo[poolInfo.length].field_0) = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
    address(poolInfo[poolInfo.length].field_1024) = arg4
    uint16(poolInfo[poolInfo.length].field_1184) = arg5
    Mask(80, 0, poolInfo[poolInfo.length].field_1200) = Mask(80, 0, arg6)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(address(poolInfo[arg1].field_1024))
        staticcall address(poolInfo[arg1].field_1024).wantLockedTotal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if endBlock < block.number:
            if not ext_call.return_data[0]:
                poolInfo[arg1].field_512 = endBlock
            else:
                if poolInfo[arg1].field_512 <= endBlock:
                    if endBlock - poolInfo[arg1].field_512 > 0:
                        if not endBlock - poolInfo[arg1].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not endBlock - poolInfo[arg1].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint
                            else:
                                require endBlock - poolInfo[arg1].field_512
                                if (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[arg1].field_512) / endBlock - poolInfo[arg1].field_512 != 5 * 10^15:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[arg1].field_512):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                    call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint
                                else:
                                    require (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[arg1].field_512)
                                    if (5 * 10^15 * endBlock * poolInfo[arg1].field_256) - (5 * 10^15 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[arg1].field_512) != poolInfo[arg1].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                    call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (5 * 10^15 * endBlock * poolInfo[arg1].field_256) - (5 * 10^15 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require endBlock - poolInfo[arg1].field_512
                            if (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[arg1].field_512) / endBlock - poolInfo[arg1].field_512 != 5 * 10^16:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[arg1].field_512):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not endBlock - poolInfo[arg1].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                    call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint
                                else:
                                    require endBlock - poolInfo[arg1].field_512
                                    if (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[arg1].field_512) / endBlock - poolInfo[arg1].field_512 != 5 * 10^15:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[arg1].field_512):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint
                                    else:
                                        require (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[arg1].field_512)
                                        if (5 * 10^15 * endBlock * poolInfo[arg1].field_256) - (5 * 10^15 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[arg1].field_512) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (5 * 10^15 * endBlock * poolInfo[arg1].field_256) - (5 * 10^15 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[arg1].field_512)
                                if (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (5 * 10^16 * endBlock) - (5 * 10^16 * poolInfo[arg1].field_512) != poolInfo[arg1].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not endBlock - poolInfo[arg1].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                    call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint
                                else:
                                    require endBlock - poolInfo[arg1].field_512
                                    if (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[arg1].field_512) / endBlock - poolInfo[arg1].field_512 != 5 * 10^15:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[arg1].field_512):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint
                                    else:
                                        require (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[arg1].field_512)
                                        if (5 * 10^15 * endBlock * poolInfo[arg1].field_256) - (5 * 10^15 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (5 * 10^15 * endBlock) - (5 * 10^15 * poolInfo[arg1].field_512) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (5 * 10^15 * endBlock * poolInfo[arg1].field_256) - (5 * 10^15 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (5 * 10^16 * endBlock * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = endBlock
        else:
            if not ext_call.return_data[0]:
                poolInfo[arg1].field_512 = block.number
            else:
                if poolInfo[arg1].field_512 <= block.number:
                    if block.number - poolInfo[arg1].field_512 > 0:
                        if not block.number - poolInfo[arg1].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not block.number - poolInfo[arg1].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint
                            else:
                                require block.number - poolInfo[arg1].field_512
                                if (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 5 * 10^15:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[arg1].field_512):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                    call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint
                                else:
                                    require (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[arg1].field_512)
                                    if (5 * 10^15 * block.number * poolInfo[arg1].field_256) - (5 * 10^15 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[arg1].field_512) != poolInfo[arg1].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                    call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (5 * 10^15 * block.number * poolInfo[arg1].field_256) - (5 * 10^15 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                            call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - poolInfo[arg1].field_512
                            if (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 5 * 10^16:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[arg1].field_512):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not block.number - poolInfo[arg1].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                    call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint
                                else:
                                    require block.number - poolInfo[arg1].field_512
                                    if (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 5 * 10^15:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[arg1].field_512):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint
                                    else:
                                        require (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[arg1].field_512)
                                        if (5 * 10^15 * block.number * poolInfo[arg1].field_256) - (5 * 10^15 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[arg1].field_512) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (5 * 10^15 * block.number * poolInfo[arg1].field_256) - (5 * 10^15 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[arg1].field_512)
                                if (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (5 * 10^16 * block.number) - (5 * 10^16 * poolInfo[arg1].field_512) != poolInfo[arg1].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not block.number - poolInfo[arg1].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                    call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint
                                else:
                                    require block.number - poolInfo[arg1].field_512
                                    if (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 5 * 10^15:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[arg1].field_512):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, 0 / totalAllocPoint
                                    else:
                                        require (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[arg1].field_512)
                                        if (5 * 10^15 * block.number * poolInfo[arg1].field_256) - (5 * 10^15 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / (5 * 10^15 * block.number) - (5 * 10^15 * poolInfo[arg1].field_512) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                        call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devaddr, (5 * 10^15 * block.number * poolInfo[arg1].field_256) - (5 * 10^15 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba)
                                call 0xe8c93310af068aa50bd7bf0ebfa459df2a02ceba.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (5 * 10^16 * block.number * poolInfo[arg1].field_256) - (5 * 10^16 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
}

function emergencyWithdraw(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 'pool inexistent'
    mem[100] = userInfo[arg1][address(msg.sender)].field_0
    require ext_code.size(address(poolInfo[arg1].field_1024))
    call address(poolInfo[arg1].field_1024).0x2e1a7d4d with:
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(poolInfo[arg1].field_1200):
        userInfo[arg1][address(msg.sender)].field_0 = 0
        userInfo[arg1][address(msg.sender)].field_256 = 0
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call address(poolInfo[arg1].field_0) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        emit EmergencyWithdraw(ext_call.return_data[0], msg.sender, arg1);
    else:
        require arg1 < poolInfo.length
        mem[0] = msg.sender
        mem[32] = sha3(arg1, 8)
        if not uint8(poolInfo[arg1].field_1200):
            userInfo[arg1][address(msg.sender)].field_0 = 0
            userInfo[arg1][address(msg.sender)].field_256 = 0
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            call address(poolInfo[arg1].field_0) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            emit EmergencyWithdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            idx = 0
            while idx < withdrawalFeeIntervals.length:
                mem[0] = 10
                if block.number - userInfo[arg1][address(msg.sender)].field_512 >= withdrawalFeeIntervals[idx].field_0:
                    idx = idx + 1
                    continue 
                require idx < stor11.length
                if stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] <= 0:
                    userInfo[arg1][address(msg.sender)].field_0 = 0
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                    mem[132] = msg.sender
                    mem[164] = ext_call.return_data[0]
                    mem[128] = Mask(224, 32, msg.sender) >> 32 or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[196] = 32
                    mem[228] = 'SafeBEP20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    s = 128
                    t = 260
                    idx = 68
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[324] = 0 or Mask(224, 32, mem[324])
                    call address(poolInfo[arg1].field_0).mem[260 len 4] with:
                         gas gas_remaining wei
                        args mem[264 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with Mask(224, 32, msg.sender) >> 32 or 0xa9059cbb00000000000000000000000000000000000000000000000000000000, 
                                        uint32(msg.sender),
                                        ext_call.return_data[0]
                        if not Mask(224, 32, msg.sender) >> 32 and False:
                            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[260] = return_data.size
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = 32
                            idx = 0
                            while idx < 32:
                                mem[ceil32(return_data.size) + idx + 329] = mem[idx + 228]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[ceil32(return_data.size) + 329]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit EmergencyWithdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    if not ext_call.return_data[0]:
                        mem[132] = address(feeAddr)
                        mem[164] = 0
                        mem[128] = Mask(224, 0, stor3) or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[196] = 32
                        mem[228] = 'SafeBEP20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        s = 128
                        t = 260
                        idx = 68
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[324] = 0 or Mask(224, 32, mem[324])
                        call address(poolInfo[arg1].field_0).mem[260 len 4] with:
                             gas gas_remaining wei
                            args mem[264 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with Mask(224, 0, stor3) or 0xa9059cbb00000000000000000000000000000000000000000000000000000000, uint32(stor3), 0
                            if not Mask(224, 0, stor3) and False:
                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 = 0
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                            mem[296] = msg.sender
                            mem[328] = ext_call.return_data[0]
                            mem[292] = Mask(224, 32, msg.sender) >> 32 or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[360] = 32
                            mem[392] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                            if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            s = 292
                            t = 424
                            idx = 68
                            while idx >= 32:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[488] = 0 or Mask(224, 32, mem[488])
                            call address(poolInfo[arg1].field_0).mem[424 len 4] with:
                                 gas gas_remaining wei
                                args mem[428 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with Mask(224, 0, stor3) or 0xa9059cbb00000000000000000000000000000000000000000000000000000000, uint32(stor3), 0
                                if not Mask(224, 0, stor3) and False:
                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                            else:
                                mem[424] = return_data.size
                                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 429] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[ceil32(return_data.size) + idx + 493] = mem[idx + 392]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[ceil32(return_data.size) + 493]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[456]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                            emit EmergencyWithdraw(ext_call.return_data[0], msg.sender, arg1);
                        else:
                            mem[260] = return_data.size
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 265] = 32
                                idx = 0
                                while idx < 32:
                                    mem[ceil32(return_data.size) + idx + 329] = mem[idx + 228]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[ceil32(return_data.size) + 329]
                            if return_data.size <= 0:
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                mem[ceil32(return_data.size) + 297] = msg.sender
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 293] = Mask(224, 32, msg.sender) >> 32 or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 361] = 32
                                mem[ceil32(return_data.size) + 393] = 'SafeBEP20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                s = ceil32(return_data.size) + 293
                                t = ceil32(return_data.size) + 425
                                idx = 68
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[ceil32(return_data.size) + 489] = 0 or Mask(224, 32, mem[ceil32(return_data.size) + 489])
                                call address(poolInfo[arg1].field_0).mem[ceil32(return_data.size) + 425 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(return_data.size) + 429 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with Mask(224, 0, stor3) or 0xa9059cbb00000000000000000000000000000000000000000000000000000000, uint32(stor3), 0
                                    if not Mask(224, 0, stor3) and False:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                    emit EmergencyWithdraw(ext_call.return_data[0], msg.sender, arg1);
                                else:
                                    mem[ceil32(return_data.size) + 425] = return_data.size
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(2 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 430] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[(2 * ceil32(return_data.size)) + idx + 494] = mem[ceil32(return_data.size) + idx + 393]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[(2 * ceil32(return_data.size)) + 494]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    emit EmergencyWithdraw(address arg1, uint256 arg2, uint256 arg3):
                                                           ext_call.return_data[0],
                                                           mem[(2 * ceil32(return_data.size)) + 458 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                           msg.sender,
                                                           arg1,
                            else:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                mem[ceil32(return_data.size) + 297] = msg.sender
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 293] = Mask(224, 32, msg.sender) >> 32 or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 361] = 32
                                mem[ceil32(return_data.size) + 393] = 'SafeBEP20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                s = ceil32(return_data.size) + 293
                                t = ceil32(return_data.size) + 425
                                idx = 68
                                while idx >= 32:
                                    mem[t] = mem[s]
                                    s = s + 32
                                    t = t + 32
                                    idx = idx - 32
                                    continue 
                                mem[ceil32(return_data.size) + 489] = 0 or Mask(224, 32, mem[ceil32(return_data.size) + 489])
                                call address(poolInfo[arg1].field_0).mem[ceil32(return_data.size) + 425 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(return_data.size) + 429 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with Mask(224, 0, stor3) or 0xa9059cbb00000000000000000000000000000000000000000000000000000000, uint32(stor3), 0
                                    if not Mask(224, 0, stor3) and False:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 425] = return_data.size
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(2 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 430] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[(2 * ceil32(return_data.size)) + idx + 494] = mem[ceil32(return_data.size) + idx + 393]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[(2 * ceil32(return_data.size)) + 494]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                emit EmergencyWithdraw(ext_call.return_data[0], msg.sender, arg1);
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / ext_call.return_data[0] != stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        mem[132] = address(feeAddr)
                        mem[164] = ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000
                        mem[128] = Mask(224, 0, stor3) or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[196] = 32
                        mem[228] = 'SafeBEP20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        t = 128
                        u = 260
                        s = 68
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[324] = 0 or Mask(224, 32, mem[324])
                        call address(poolInfo[arg1].field_0).mem[260 len 4] with:
                             gas gas_remaining wei
                            args mem[264 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with Mask(224, 0, stor3) or 0xa9059cbb00000000000000000000000000000000000000000000000000000000, 
                                            uint32(stor3),
                                            ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000
                            if not Mask(224, 0, stor3) and False:
                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 = 0
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                            mem[296] = msg.sender
                            mem[328] = ext_call.return_data[0] - (ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000)
                            mem[292] = Mask(224, 32, msg.sender) >> 32 or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[360] = 32
                            mem[392] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                            if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            t = 292
                            u = 424
                            s = 68
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[488] = 0 or Mask(224, 32, mem[488])
                            call address(poolInfo[arg1].field_0).mem[424 len 4] with:
                                 gas gas_remaining wei
                                args mem[428 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with Mask(224, 0, stor3) or 0xa9059cbb00000000000000000000000000000000000000000000000000000000, 
                                                uint32(stor3),
                                                ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000
                                if not Mask(224, 0, stor3) and False:
                                    revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                            else:
                                mem[424] = return_data.size
                                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 429] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[ceil32(return_data.size) + idx + 493] = mem[idx + 392]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[ceil32(return_data.size) + 493]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[456]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                            emit EmergencyWithdraw((ext_call.return_data[0] - (ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000)), msg.sender, arg1);
                        else:
                            mem[260] = return_data.size
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 265] = 32
                                idx = 0
                                while idx < 32:
                                    mem[ceil32(return_data.size) + idx + 329] = mem[idx + 228]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[ceil32(return_data.size) + 329]
                            if return_data.size <= 0:
                                if ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                mem[ceil32(return_data.size) + 297] = msg.sender
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0] - (ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000)
                                mem[ceil32(return_data.size) + 293] = Mask(224, 32, msg.sender) >> 32 or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 361] = 32
                                mem[ceil32(return_data.size) + 393] = 'SafeBEP20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                t = ceil32(return_data.size) + 293
                                u = ceil32(return_data.size) + 425
                                s = 68
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[ceil32(return_data.size) + 489] = 0 or Mask(224, 32, mem[ceil32(return_data.size) + 489])
                                call address(poolInfo[arg1].field_0).mem[ceil32(return_data.size) + 425 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(return_data.size) + 429 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with Mask(224, 0, stor3) or 0xa9059cbb00000000000000000000000000000000000000000000000000000000, 
                                                    uint32(stor3),
                                                    ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000
                                    if not Mask(224, 0, stor3) and False:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 425] = return_data.size
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(2 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 430] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[(2 * ceil32(return_data.size)) + idx + 494] = mem[ceil32(return_data.size) + idx + 393]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[(2 * ceil32(return_data.size)) + 494]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                emit EmergencyWithdraw((ext_call.return_data[0] - (ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000)), msg.sender, arg1);
                            else:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                                if ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 = 0
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                mem[ceil32(return_data.size) + 297] = msg.sender
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0] - (ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000)
                                mem[ceil32(return_data.size) + 293] = Mask(224, 32, msg.sender) >> 32 or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 361] = 32
                                mem[ceil32(return_data.size) + 393] = 'SafeBEP20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                t = ceil32(return_data.size) + 293
                                u = ceil32(return_data.size) + 425
                                s = 68
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[ceil32(return_data.size) + 489] = 0 or Mask(224, 32, mem[ceil32(return_data.size) + 489])
                                call address(poolInfo[arg1].field_0).mem[ceil32(return_data.size) + 425 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(return_data.size) + 429 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with Mask(224, 0, stor3) or 0xa9059cbb00000000000000000000000000000000000000000000000000000000, 
                                                    uint32(stor3),
                                                    ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000
                                    if not Mask(224, 0, stor3) and False:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                    emit EmergencyWithdraw((ext_call.return_data[0] - (ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000)), msg.sender, arg1);
                                else:
                                    mem[ceil32(return_data.size) + 425] = return_data.size
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(2 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 430] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[(2 * ceil32(return_data.size)) + idx + 494] = mem[ceil32(return_data.size) + idx + 393]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[(2 * ceil32(return_data.size)) + 494]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    emit EmergencyWithdraw(address arg1, uint256 arg2, uint256 arg3):
                                                           ext_call.return_data[0] - (ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000),
                                                           mem[(2 * ceil32(return_data.size)) + 458 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                           msg.sender,
                                                           arg1,
                stor1 = 1
            require idx < stor11.length
            if stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] <= 0:
                userInfo[arg1][address(msg.sender)].field_0 = 0
                userInfo[arg1][address(msg.sender)].field_256 = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit EmergencyWithdraw(ext_call.return_data[0], msg.sender, arg1);
            else:
                if not ext_call.return_data[0]:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), 0
                    mem[324 len 0] = 0
                    call address(poolInfo[arg1].field_0) with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), 0
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 = 0
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                        call address(poolInfo[arg1].field_0) with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 = 0
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                        call address(poolInfo[arg1].field_0) with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), 0
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                        else:
                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    emit EmergencyWithdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / ext_call.return_data[0] != stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000) >> 32
                    mem[324 len 0] = 0
                    call address(poolInfo[arg1].field_0) with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        Mask(224, 0, stor3),
                                        uint32(stor3),
                                        ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 = 0
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = 0, msg.sender, Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000)) >> 32
                        call address(poolInfo[arg1].field_0) with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000), mem[360 len 28], mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, stor3),
                                            uint32(stor3),
                                            ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size <= 0:
                            if ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 = 0
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000)) >> 32
                            call address(poolInfo[arg1].field_0) with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - (ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000), mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                Mask(224, 0, stor3),
                                                uint32(stor3),
                                                ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeBEP20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 = 0
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x68416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 531 len 26]
                            if ext_code.size(address(poolInfo[arg1].field_0)) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000)) >> 32
                            call address(poolInfo[arg1].field_0) with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - (ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000), mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                Mask(224, 0, stor3),
                                                uint32(stor3),
                                                ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    emit EmergencyWithdraw((ext_call.return_data[0] - (ext_call.return_data[0] * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor11', 11))[uint8(idx)] / 10000)), msg.sender, arg1);
    stor1 = 1
}



}
