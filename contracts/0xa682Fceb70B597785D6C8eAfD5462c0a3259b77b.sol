contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
address owner;
uint256 stor1;
address wNativeAddress;
uint32 stor3;
address wNativeRelayerAddress;
uint256 stor3;
array of struct poolInfo;
mapping of struct userInfo;
mapping of uint8 stor6;
mapping of uint8 stor7;
array of address stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856478;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856479;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856480;

function poolLength() {
    return poolInfo.length
}

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function wNative() {
    return wNativeAddress
}

function isPoolExist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function owner() {
    return owner
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_c804a019(?) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function wNativeRelayer() {
    return address(wNativeRelayerAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function setParams(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    wNativeAddress = arg1
    address(wNativeRelayerAddress) = arg2
    emit 0x6c2c2665: address(arg1), arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function poolPendingReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if poolInfo[arg1].field_768 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - poolInfo[arg1].field_768)
}

function poolTotalReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if poolInfo[arg1].field_768 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    return (ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024)
}

function updatePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if poolInfo[arg1].field_768 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - poolInfo[arg1].field_768:
        if poolInfo[arg1].field_512:
            if not ext_call.return_data[0] - poolInfo[arg1].field_768:
                if poolInfo[arg1].field_512 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_512
                if ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1024 = ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024
                poolInfo[arg1].field_768 = ext_call.return_data[0]
                if (0 / poolInfo[arg1].field_512) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_512
            else:
                if (10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg1].field_768) / ext_call.return_data[0] - poolInfo[arg1].field_768 != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if poolInfo[arg1].field_512 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_512
                if ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1024 = ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024
                poolInfo[arg1].field_768 = ext_call.return_data[0]
                if ((10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg1].field_768) / poolInfo[arg1].field_512) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1280 += (10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg1].field_768) / poolInfo[arg1].field_512
}

function massUpdatePools() {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        mem[100] = this.address
        require ext_code.size(poolInfo[idx].field_256)
        staticcall poolInfo[idx].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if poolInfo[idx].field_768 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] - poolInfo[idx].field_768:
            if poolInfo[idx].field_512:
                if not ext_call.return_data[0] - poolInfo[idx].field_768:
                    if poolInfo[idx].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[idx].field_512
                    if ext_call.return_data[0] - poolInfo[idx].field_768 + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 = ext_call.return_data[0] - poolInfo[idx].field_768 + poolInfo[idx].field_1024
                    poolInfo[idx].field_768 = ext_call.return_data[0]
                    if (0 / poolInfo[idx].field_512) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_512
                else:
                    if (10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[idx].field_768) / ext_call.return_data[0] - poolInfo[idx].field_768 != 10^12:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if poolInfo[idx].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[idx].field_512
                    if ext_call.return_data[0] - poolInfo[idx].field_768 + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 = ext_call.return_data[0] - poolInfo[idx].field_768 + poolInfo[idx].field_1024
                    poolInfo[idx].field_768 = ext_call.return_data[0]
                    if ((10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[idx].field_768) / poolInfo[idx].field_512) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1280 += (10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[idx].field_768) / poolInfo[idx].field_512
        idx = idx + 1
        continue 
}

function emergencyWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'nReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if userInfo[arg1][msg.sender].field_0:
        if not userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][msg.sender].field_256:
                if -userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                poolInfo[arg1].field_768 += userInfo[arg1][msg.sender].field_256
        else:
            if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                if (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                poolInfo[arg1].field_768 = poolInfo[arg1].field_768 - (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) + userInfo[arg1][msg.sender].field_256
        if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        poolInfo[arg1].field_512 -= userInfo[arg1][msg.sender].field_0
        userInfo[arg1][msg.sender].field_0 = 0
        userInfo[arg1][msg.sender].field_256 = 0
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    stor1 = 1
}

function addPool(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        mem[100] = this.address
        require ext_code.size(poolInfo[idx].field_256)
        staticcall poolInfo[idx].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if poolInfo[idx].field_768 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] - poolInfo[idx].field_768:
            if poolInfo[idx].field_512:
                if not ext_call.return_data[0] - poolInfo[idx].field_768:
                    if poolInfo[idx].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[idx].field_512
                    if ext_call.return_data[0] - poolInfo[idx].field_768 + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 = ext_call.return_data[0] - poolInfo[idx].field_768 + poolInfo[idx].field_1024
                    poolInfo[idx].field_768 = ext_call.return_data[0]
                    if (0 / poolInfo[idx].field_512) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_512
                else:
                    if (10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[idx].field_768) / ext_call.return_data[0] - poolInfo[idx].field_768 != 10^12:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if poolInfo[idx].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[idx].field_512
                    if ext_call.return_data[0] - poolInfo[idx].field_768 + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 = ext_call.return_data[0] - poolInfo[idx].field_768 + poolInfo[idx].field_1024
                    poolInfo[idx].field_768 = ext_call.return_data[0]
                    if ((10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[idx].field_768) / poolInfo[idx].field_512) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1280 += (10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[idx].field_768) / poolInfo[idx].field_512
        idx = idx + 1
        continue 
    if not arg1:
        revert with 0, 32, 42, 0x2e466565446973747269627574653a3a616464506f6f6c3a3a206e6f74205a45524f2061646472657373, mem[206 len 22]
    if stor6[address(arg2)]:
        revert with 0, 32, 36, 0xe0466565446973747269627574653a3a616464506f6f6c3a3a20706f6f6c206578697374, mem[200 len 28]
    if stor7[address(arg2)]:
        revert with 0, 
                    32,
                    69,
                    0xfe466565446973747269627574653a3a616464506f6f6c3a3a2072657761726420746f6b656e20697320616c72656164792075736564206173207374616b6520746f6b656e,
                    mem[233 len 27]
    if stor6[address(arg1)]:
        revert with 0, 
                    32,
                    68,
                    0x2e466565446973747269627574653a3a616464506f6f6c3a3a207374616b6520746f6b656e20697320616c726561647920757365642061732072657761726420746f6b65,
                    mem[232 len 28]
    if arg1 == arg2:
        revert with 0, 
                    32,
                    63,
                    0x2e466565446973747269627574653a3a616464506f6f6c3a3a205f7374616b65546f6b656e20746f6b656e2073616d65206173205f726577617264746f6b65,
                    mem[227 len 1]
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    stor8A35[stor4.length] = arg2
    stor8A35[stor4.length] = 0
    stor8A35[stor4.length] = 0
    stor8A35[stor4.length] = 0
    stor8A35[stor4.length] = 0
    stor6[address(arg2)] = 1
    stor7[address(arg1)] = 1
    emit AddPool(arg1, arg2);
}

function pendingReward(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < poolInfo.length
    require ext_code.size(poolInfo[arg2].field_256)
    staticcall poolInfo[arg2].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if poolInfo[arg2].field_768 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - poolInfo[arg2].field_768:
        if not userInfo[arg2][address(arg1)].field_0:
            if userInfo[arg2][address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg2][address(arg1)].field_256
        if poolInfo[arg2].field_1280 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg2][address(arg1)].field_256 > poolInfo[arg2].field_1280 * userInfo[arg2][address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg2].field_1280 * userInfo[arg2][address(arg1)].field_0 / 10^12) - userInfo[arg2][address(arg1)].field_256)
    if not poolInfo[arg2].field_512:
        if not userInfo[arg2][address(arg1)].field_0:
            if userInfo[arg2][address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg2][address(arg1)].field_256
        if poolInfo[arg2].field_1280 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg2][address(arg1)].field_256 > poolInfo[arg2].field_1280 * userInfo[arg2][address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg2].field_1280 * userInfo[arg2][address(arg1)].field_0 / 10^12) - userInfo[arg2][address(arg1)].field_256)
    if not ext_call.return_data[0] - poolInfo[arg2].field_768:
        if poolInfo[arg2].field_512 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg2].field_512
        if (0 / poolInfo[arg2].field_512) + poolInfo[arg2].field_1280 < poolInfo[arg2].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg2][address(arg1)].field_0:
            if userInfo[arg2][address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg2][address(arg1)].field_256
        if (0 / poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0) + (poolInfo[arg2].field_1280 * userInfo[arg2][address(arg1)].field_0) / userInfo[arg2][address(arg1)].field_0 != (0 / poolInfo[arg2].field_512) + poolInfo[arg2].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg2][address(arg1)].field_256 > (0 / poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0) + (poolInfo[arg2].field_1280 * userInfo[arg2][address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0) + (poolInfo[arg2].field_1280 * userInfo[arg2][address(arg1)].field_0) / 10^12) - userInfo[arg2][address(arg1)].field_256)
    if (10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg2].field_768) / ext_call.return_data[0] - poolInfo[arg2].field_768 != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if poolInfo[arg2].field_512 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require poolInfo[arg2].field_512
    if ((10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg2].field_768) / poolInfo[arg2].field_512) + poolInfo[arg2].field_1280 < poolInfo[arg2].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg2][address(arg1)].field_0:
        if userInfo[arg2][address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg2][address(arg1)].field_256
    if ((10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg2].field_768) / poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0) + (poolInfo[arg2].field_1280 * userInfo[arg2][address(arg1)].field_0) / userInfo[arg2][address(arg1)].field_0 != ((10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg2].field_768) / poolInfo[arg2].field_512) + poolInfo[arg2].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg2][address(arg1)].field_256 > ((10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg2].field_768) / poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0) + (poolInfo[arg2].field_1280 * userInfo[arg2][address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((((10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg2].field_768) / poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0) + (poolInfo[arg2].field_1280 * userInfo[arg2][address(arg1)].field_0) / 10^12) - userInfo[arg2][address(arg1)].field_256)
}

function harvest(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'nReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if poolInfo[arg1].field_768 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - poolInfo[arg1].field_768:
        if poolInfo[arg1].field_512:
            if not ext_call.return_data[0] - poolInfo[arg1].field_768:
                if poolInfo[arg1].field_512 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_512
                if ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1024 = ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024
                poolInfo[arg1].field_768 = ext_call.return_data[0]
                if (0 / poolInfo[arg1].field_512) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_512
            else:
                if (10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg1].field_768) / ext_call.return_data[0] - poolInfo[arg1].field_768 != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if poolInfo[arg1].field_512 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_512
                if ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1024 = ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024
                poolInfo[arg1].field_768 = ext_call.return_data[0]
                if ((10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg1].field_768) / poolInfo[arg1].field_512) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1280 += (10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg1].field_768) / poolInfo[arg1].field_512
    require arg1 < poolInfo.length
    if not userInfo[arg1][msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x2e466565446973747269627574653a3a686172766573743a3a206e6f7468696e6720746f2068617276657374,
                    mem[208 len 20]
    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
        emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
        if not userInfo[arg1][msg.sender].field_0:
            userInfo[arg1][msg.sender].field_256 = 0
        else:
            if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
    else:
        if (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        poolInfo[arg1].field_768 = poolInfo[arg1].field_768 - (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) + userInfo[arg1][msg.sender].field_256
        if not ext_code.size(poolInfo[arg1].field_256):
            revert with 0, 'Address: call to non-contract'
        if wNativeAddress != poolInfo[arg1].field_256:
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) >> 32
            call poolInfo[arg1].field_256 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), 
                                msg.sender,
                                (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 362 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) >> 32
            call poolInfo[arg1].field_256 with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), 
                                Mask(224, 0, stor3),
                                uint32(stor3),
                                (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                    revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                require ext_code.size(address(wNativeRelayerAddress))
                call address(wNativeRelayerAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
                if not return_data.size:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(address(wNativeRelayerAddress))
                call address(wNativeRelayerAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
                if not return_data.size:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(2 * ceil32(return_data.size)) + 395 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
    stor1 = 1
}

function withdrawAll(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'nReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73466565446973747269627574653a3a77697468647261773a3a206e6f7420676f6f64,
                    mem[199 len 29]
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if poolInfo[arg1].field_768 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - poolInfo[arg1].field_768:
        if poolInfo[arg1].field_512:
            if not ext_call.return_data[0] - poolInfo[arg1].field_768:
                if poolInfo[arg1].field_512 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_512
                if ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1024 = ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024
                poolInfo[arg1].field_768 = ext_call.return_data[0]
                if (0 / poolInfo[arg1].field_512) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_512
            else:
                if (10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg1].field_768) / ext_call.return_data[0] - poolInfo[arg1].field_768 != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if poolInfo[arg1].field_512 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_512
                if ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1024 = ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024
                poolInfo[arg1].field_768 = ext_call.return_data[0]
                if ((10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg1].field_768) / poolInfo[arg1].field_512) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1280 += (10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg1].field_768) / poolInfo[arg1].field_512
    if not userInfo[arg1][msg.sender].field_0:
        if userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[arg1][msg.sender].field_0 = 0
            userInfo[arg1][msg.sender].field_256 = 0
            if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            poolInfo[arg1].field_512 -= userInfo[arg1][msg.sender].field_0
            if poolInfo[arg1].field_0:
                if not ext_code.size(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
                call poolInfo[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
        emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    else:
        require arg1 < poolInfo.length
        if not userInfo[arg1][msg.sender].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x2e466565446973747269627574653a3a686172766573743a3a206e6f7468696e6720746f2068617276657374,
                        mem[208 len 20]
        if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
            if userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 = 0
                userInfo[arg1][msg.sender].field_256 = 0
                if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                poolInfo[arg1].field_512 -= userInfo[arg1][msg.sender].field_0
                if poolInfo[arg1].field_0:
                    if not ext_code.size(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
            emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
        else:
            if (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            poolInfo[arg1].field_768 = poolInfo[arg1].field_768 - (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) + userInfo[arg1][msg.sender].field_256
            if not ext_code.size(poolInfo[arg1].field_256):
                revert with 0, 'Address: call to non-contract'
            if wNativeAddress != poolInfo[arg1].field_256:
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) >> 32
                call poolInfo[arg1].field_256 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    msg.sender,
                                    (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
                    if userInfo[arg1][msg.sender].field_0:
                        if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][msg.sender].field_0 = 0
                        userInfo[arg1][msg.sender].field_256 = 0
                        if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        poolInfo[arg1].field_512 -= userInfo[arg1][msg.sender].field_0
                        if poolInfo[arg1].field_0:
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[424 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args userInfo[arg1][msg.sender].field_0, mem[488 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                msg.sender,
                                                (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                            else:
                                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[456]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                    emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
                    if not userInfo[arg1][msg.sender].field_0:
                        emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
                    else:
                        if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][msg.sender].field_0 = 0
                        userInfo[arg1][msg.sender].field_256 = 0
                        if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        poolInfo[arg1].field_512 -= userInfo[arg1][msg.sender].field_0
                        if not poolInfo[arg1].field_0:
                            emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
                        else:
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
                            mem[ceil32(return_data.size) + 517 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args userInfo[arg1][msg.sender].field_0, mem[ceil32(return_data.size) + 489 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                msg.sender,
                                                (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                                emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
                            else:
                                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 457]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                emit Withdraw(address arg1, uint256 arg2, uint256 arg3):
                                              userInfo[arg1][msg.sender].field_0,
                                              mem[(2 * ceil32(return_data.size)) + 458 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                              msg.sender,
                                              arg1,
            else:
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) >> 32
                call poolInfo[arg1].field_256 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    Mask(224, 0, stor3),
                                    uint32(stor3),
                                    (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    require ext_code.size(address(wNativeRelayerAddress))
                    call address(wNativeRelayerAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, '!safeTransfer'
                    emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
                    if not return_data.size:
                        if userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender].field_0 = 0
                            userInfo[arg1][msg.sender].field_256 = 0
                            if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: subtraction overflow'
                            poolInfo[arg1].field_512 -= userInfo[arg1][msg.sender].field_0
                            if poolInfo[arg1].field_0:
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 64] = 0, msg.sender, userInfo[arg1][msg.sender].field_32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args userInfo[arg1][msg.sender].field_0, mem[392 len 28], mem[520 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    Mask(224, 0, stor3),
                                                    uint32(stor3),
                                                    (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                    else:
                        if userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender].field_0 = 0
                            userInfo[arg1][msg.sender].field_256 = 0
                            if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: subtraction overflow'
                            poolInfo[arg1].field_512 -= userInfo[arg1][msg.sender].field_0
                            if poolInfo[arg1].field_0:
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, userInfo[arg1][msg.sender].field_32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args userInfo[arg1][msg.sender].field_0, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    Mask(224, 0, stor3),
                                                    uint32(stor3),
                                                    (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 489]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    require ext_code.size(address(wNativeRelayerAddress))
                    call address(wNativeRelayerAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, '!safeTransfer'
                    emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
                    if not return_data.size:
                        if userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender].field_0 = 0
                            userInfo[arg1][msg.sender].field_256 = 0
                            if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: subtraction overflow'
                            poolInfo[arg1].field_512 -= userInfo[arg1][msg.sender].field_0
                            if poolInfo[arg1].field_0:
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, userInfo[arg1][msg.sender].field_32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args userInfo[arg1][msg.sender].field_0, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    Mask(224, 0, stor3),
                                                    uint32(stor3),
                                                    (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                else:
                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 489]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                    else:
                        if userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_0 > userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender].field_0 = 0
                            userInfo[arg1][msg.sender].field_256 = 0
                            if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: subtraction overflow'
                            poolInfo[arg1].field_512 -= userInfo[arg1][msg.sender].field_0
                            if poolInfo[arg1].field_0:
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(2 * ceil32(return_data.size)) + 458 len 64] = 0, msg.sender, userInfo[arg1][msg.sender].field_32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args userInfo[arg1][msg.sender].field_0, mem[(2 * ceil32(return_data.size)) + 394 len 28], mem[(2 * ceil32(return_data.size)) + 522 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    Mask(224, 0, stor3),
                                                    uint32(stor3),
                                                    (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 490 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(2 * ceil32(return_data.size)) + 490]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 569 len 22]
                emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    stor1 = 1
}

function deposit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'nReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if not poolInfo[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x64466565446973747269627574653a3a6465706f7369743a3a206e6f7420616363657074206465706f736974,
                    mem[208 len 20]
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if poolInfo[arg1].field_768 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - poolInfo[arg1].field_768:
        if poolInfo[arg1].field_512:
            if not ext_call.return_data[0] - poolInfo[arg1].field_768:
                if poolInfo[arg1].field_512 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_512
                if ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1024 = ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024
                poolInfo[arg1].field_768 = ext_call.return_data[0]
                if (0 / poolInfo[arg1].field_512) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1280 += 0 / poolInfo[arg1].field_512
            else:
                if (10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg1].field_768) / ext_call.return_data[0] - poolInfo[arg1].field_768 != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if poolInfo[arg1].field_512 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_512
                if ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1024 = ext_call.return_data[0] - poolInfo[arg1].field_768 + poolInfo[arg1].field_1024
                poolInfo[arg1].field_768 = ext_call.return_data[0]
                if ((10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg1].field_768) / poolInfo[arg1].field_512) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_1280 += (10^12 * ext_call.return_data[0]) - (10^12 * poolInfo[arg1].field_768) / poolInfo[arg1].field_512
    if not userInfo[arg1][msg.sender].field_0:
        if not arg2:
            if not userInfo[arg1][msg.sender].field_0:
                userInfo[arg1][msg.sender].field_256 = 0
            else:
                if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[416 len 4] = 0
            call poolInfo[arg1].field_0 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_512 += arg2
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[arg1].field_512 += arg2
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
        emit Deposit(arg2, msg.sender, arg1);
    else:
        require arg1 < poolInfo.length
        if not userInfo[arg1][msg.sender].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x2e466565446973747269627574653a3a686172766573743a3a206e6f7468696e6720746f2068617276657374,
                        mem[208 len 20]
        if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
            if not arg2:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if not ext_code.size(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[416 len 4] = 0
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_512 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_512 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
            emit Deposit(arg2, msg.sender, arg1);
        else:
            if (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            poolInfo[arg1].field_768 = poolInfo[arg1].field_768 - (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) + userInfo[arg1][msg.sender].field_256
            if not ext_code.size(poolInfo[arg1].field_256):
                revert with 0, 'Address: call to non-contract'
            if wNativeAddress != poolInfo[arg1].field_256:
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) >> 32
                call poolInfo[arg1].field_256 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    msg.sender,
                                    (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[580 len 4] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[552 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[566 len 14],
                                            0,
                                            mem[584 len 4]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_512 += arg2
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[488]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_512 += arg2
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 558 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                    emit Deposit(arg2, msg.sender, arg1);
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
                    if not arg2:
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 362 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                        emit Deposit(arg2, msg.sender, arg1);
                    else:
                        if not ext_code.size(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[ceil32(return_data.size) + 581 len 4] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 585 len 4]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_512 += arg2
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 558 len 23],
                                                0,
                                                mem[ceil32(return_data.size) + 585 len 4]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                            emit Deposit(arg2, msg.sender, arg1);
                        else:
                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 489]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            poolInfo[arg1].field_512 += arg2
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                            emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                         arg2,
                                         mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                         msg.sender,
                                         arg1,
            else:
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) >> 32
                call poolInfo[arg1].field_256 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    Mask(224, 0, stor3),
                                    uint32(stor3),
                                    (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    require ext_code.size(address(wNativeRelayerAddress))
                    call address(wNativeRelayerAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, '!safeTransfer'
                    emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
                    if not return_data.size:
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[488 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[612 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args arg2, mem[424 len 60], mem[584 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                Mask(224, 0, stor3),
                                                uint32(stor3),
                                                (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[598 len 14],
                                                0,
                                                mem[616 len 4]
                                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += arg2
                                if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_512 += arg2
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[589 len 23], 0, mem[616 len 4]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[520]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 599 len 22]
                                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += arg2
                                if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_512 += arg2
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                Mask(224, 0, stor3),
                                                uint32(stor3),
                                                (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += arg2
                                if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_512 += arg2
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += arg2
                                if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_512 += arg2
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    require ext_code.size(address(wNativeRelayerAddress))
                    call address(wNativeRelayerAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, '!safeTransfer'
                    emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
                    if not return_data.size:
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args arg2, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                Mask(224, 0, stor3),
                                                uint32(stor3),
                                                (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 599 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 617 len 4]
                                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += arg2
                                if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_512 += arg2
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 590 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 617 len 4]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 521]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
                                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += arg2
                                if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_512 += arg2
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 591 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 395 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            if not ext_code.size(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + 490 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[(2 * ceil32(return_data.size)) + 614 len 4] = 0
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args arg2, mem[(2 * ceil32(return_data.size)) + 426 len 60], mem[(2 * ceil32(return_data.size)) + 586 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                Mask(224, 0, stor3),
                                                uint32(stor3),
                                                (poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 600 len 14],
                                                0,
                                                mem[(2 * ceil32(return_data.size)) + 618 len 4]
                                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += arg2
                                if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_512 += arg2
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 591 len 23],
                                                    0,
                                                    mem[(2 * ceil32(return_data.size)) + 618 len 4]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                mem[(2 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(2 * ceil32(return_data.size)) + 522]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 601 len 22]
                                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += arg2
                                if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_512 += arg2
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 592 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                emit Deposit(arg2, msg.sender, arg1);
    stor1 = 1
}



}
