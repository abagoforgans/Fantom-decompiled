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
array of address stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856478;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856479;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856480;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function wNative() payable {
    return wNativeAddress
}

function isPoolExist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function wNativeRelayer() payable {
    return address(wNativeRelayerAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function setParams(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    wNativeAddress = arg1
    address(wNativeRelayerAddress) = arg2
}

function transferOwnership(address arg1) payable {
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

function poolPendingReward(uint256 arg1) payable {
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

function poolTotalReward(uint256 arg1) payable {
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

function updatePool(uint256 arg1) payable {
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

function massUpdatePools() payable {
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

function addPool(address arg1, address arg2) payable {
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
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    stor8A35[stor4.length] = arg2
    stor8A35[stor4.length] = 0
    stor8A35[stor4.length] = 0
    stor8A35[stor4.length] = 0
    stor8A35[stor4.length] = 0
    stor6[address(arg2)] = 1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
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

function pendingReward(address arg1, uint256 arg2) payable {
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

function harvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
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
    if not userInfo[arg1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x2e466565446973747269627574653a3a686172766573743a3a206e6f7468696e6720746f2068617276657374,
                    mem[208 len 20]
    if poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(msg.sender)].field_256 > poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256:
        emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
        if (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        poolInfo[arg1].field_768 = poolInfo[arg1].field_768 - (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) + userInfo[arg1][address(msg.sender)].field_256
        if not ext_code.size(poolInfo[arg1].field_256):
            revert with 0, 'Address: call to non-contract'
        if wNativeAddress != poolInfo[arg1].field_256:
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
            call poolInfo[arg1].field_256 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), 
                                msg.sender,
                                (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
            call poolInfo[arg1].field_256 with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), 
                                Mask(224, 0, stor3),
                                uint32(stor3),
                                (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                    revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                require ext_code.size(address(wNativeRelayerAddress))
                call address(wNativeRelayerAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if not ext_code.size(poolInfo[arg1].field_256):
                    revert with 0, 'Address: call to non-contract'
                if not return_data.size:
                    mem[456 len 64] = 0, msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                    call poolInfo[arg1].field_256 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256, mem[392 len 28], mem[520 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        Mask(224, 0, stor3),
                                        uint32(stor3),
                                        (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                        emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 31]
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
                        emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                else:
                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                    call poolInfo[arg1].field_256 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        Mask(224, 0, stor3),
                                        uint32(stor3),
                                        (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                        emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                        emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 559 len 31]
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
                    args ((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if not ext_code.size(poolInfo[arg1].field_256):
                    revert with 0, 'Address: call to non-contract'
                if not return_data.size:
                    mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                    call poolInfo[arg1].field_256 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        Mask(224, 0, stor3),
                                        uint32(stor3),
                                        (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                        emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                        emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 559 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    mem[(2 * ceil32(return_data.size)) + 458 len 64] = 0, msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                    call poolInfo[arg1].field_256 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256, mem[(2 * ceil32(return_data.size)) + 394 len 28], mem[(2 * ceil32(return_data.size)) + 522 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        Mask(224, 0, stor3),
                                        uint32(stor3),
                                        (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                            revert with 0, 
                                        32,
                                        42,
                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                        emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 559 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
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
                        emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                revert with 0, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 560 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
    stor1 = 1
}

function withdrawAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
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
        if not userInfo[arg1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x2e466565446973747269627574653a3a686172766573743a3a206e6f7468696e6720746f2068617276657374,
                        mem[208 len 20]
        if poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(msg.sender)].field_256 > poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256:
            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
            if (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            poolInfo[arg1].field_768 = poolInfo[arg1].field_768 - (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) + userInfo[arg1][address(msg.sender)].field_256
            if not ext_code.size(poolInfo[arg1].field_256):
                revert with 0, 'Address: call to non-contract'
            if wNativeAddress != poolInfo[arg1].field_256:
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                call poolInfo[arg1].field_256 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    msg.sender,
                                    (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                                                (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
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
                    emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                                                (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
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
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                call poolInfo[arg1].field_256 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    Mask(224, 0, stor3),
                                    uint32(stor3),
                                    (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    require ext_code.size(address(wNativeRelayerAddress))
                    call address(wNativeRelayerAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, '!safeTransfer'
                    if not ext_code.size(poolInfo[arg1].field_256):
                        revert with 0, 'Address: call to non-contract'
                    if not return_data.size:
                        mem[456 len 64] = 0, msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                        call poolInfo[arg1].field_256 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256, mem[392 len 28], mem[520 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, stor3),
                                            uint32(stor3),
                                            (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                                    mem[620 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args userInfo[arg1][msg.sender].field_0, mem[684 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        Mask(224, 0, stor3),
                                                        uint32(stor3),
                                                        (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[730 len 22]
                                    else:
                                        mem[652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[652]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 731 len 22]
                            emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
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
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                                    mem[ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
                                    mem[ceil32(return_data.size) + 713 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args userInfo[arg1][msg.sender].field_0, mem[ceil32(return_data.size) + 685 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        Mask(224, 0, stor3),
                                                        uint32(stor3),
                                                        (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 731 len 22]
                                        emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
                                    else:
                                        mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 653]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 732 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        emit Withdraw(address arg1, uint256 arg2, uint256 arg3):
                                                      userInfo[arg1][msg.sender].field_0,
                                                      mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                      msg.sender,
                                                      arg1,
                    else:
                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                        call poolInfo[arg1].field_256 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, stor3),
                                            uint32(stor3),
                                            (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                                    mem[ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args userInfo[arg1][msg.sender].field_0, mem[ceil32(return_data.size) + 685 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        Mask(224, 0, stor3),
                                                        uint32(stor3),
                                                        (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 731 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 653]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 732 len 22]
                            emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
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
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                                    mem[(2 * ceil32(return_data.size)) + 622 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
                                    mem[(2 * ceil32(return_data.size)) + 714 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args userInfo[arg1][msg.sender].field_0, mem[(2 * ceil32(return_data.size)) + 686 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        Mask(224, 0, stor3),
                                                        uint32(stor3),
                                                        (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 732 len 22]
                                        emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[(2 * ceil32(return_data.size)) + 654]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 733 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        emit Withdraw(address arg1, uint256 arg2, uint256 arg3):
                                                      userInfo[arg1][msg.sender].field_0,
                                                      mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 655 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                      msg.sender,
                                                      arg1,
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
                        args ((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, '!safeTransfer'
                    if not ext_code.size(poolInfo[arg1].field_256):
                        revert with 0, 'Address: call to non-contract'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                        call poolInfo[arg1].field_256 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, stor3),
                                            uint32(stor3),
                                            (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                                    mem[ceil32(return_data.size) + 621 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args userInfo[arg1][msg.sender].field_0, mem[ceil32(return_data.size) + 685 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        Mask(224, 0, stor3),
                                                        uint32(stor3),
                                                        (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 731 len 22]
                                    else:
                                        mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 653]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 732 len 22]
                            emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
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
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                                    mem[(2 * ceil32(return_data.size)) + 622 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
                                    mem[(2 * ceil32(return_data.size)) + 714 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args userInfo[arg1][msg.sender].field_0, mem[(2 * ceil32(return_data.size)) + 686 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        Mask(224, 0, stor3),
                                                        uint32(stor3),
                                                        (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 732 len 22]
                                        emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[(2 * ceil32(return_data.size)) + 654]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 733 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        emit Withdraw(address arg1, uint256 arg2, uint256 arg3):
                                                      userInfo[arg1][msg.sender].field_0,
                                                      mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 655 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                      msg.sender,
                                                      arg1,
                    else:
                        mem[(2 * ceil32(return_data.size)) + 458 len 64] = 0, msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                        call poolInfo[arg1].field_256 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256, mem[(2 * ceil32(return_data.size)) + 394 len 28], mem[(2 * ceil32(return_data.size)) + 522 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, stor3),
                                            uint32(stor3),
                                            (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                                    mem[(2 * ceil32(return_data.size)) + 622 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args userInfo[arg1][msg.sender].field_0, mem[(2 * ceil32(return_data.size)) + 686 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        Mask(224, 0, stor3),
                                                        uint32(stor3),
                                                        (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 732 len 22]
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[(2 * ceil32(return_data.size)) + 654]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 733 len 22]
                            emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
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
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 623 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 715 len 4] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args userInfo[arg1][msg.sender].field_0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        Mask(224, 0, stor3),
                                                        uint32(stor3),
                                                        (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 733 len 22]
                                        emit Withdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 655 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 655]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(4 * ceil32(return_data.size)) + 734 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        emit Withdraw(address arg1, uint256 arg2, uint256 arg3):
                                                      userInfo[arg1][msg.sender].field_0,
                                                      mem[(4 * ceil32(return_data.size)) + 656 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                      msg.sender,
                                                      arg1,
    stor1 = 1
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
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
        if not userInfo[arg1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x2e466565446973747269627574653a3a686172766573743a3a206e6f7468696e6720746f2068617276657374,
                        mem[208 len 20]
        if poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(msg.sender)].field_256 > poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256:
            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
            if (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            poolInfo[arg1].field_768 = poolInfo[arg1].field_768 - (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) + userInfo[arg1][address(msg.sender)].field_256
            if not ext_code.size(poolInfo[arg1].field_256):
                revert with 0, 'Address: call to non-contract'
            if wNativeAddress != poolInfo[arg1].field_256:
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                call poolInfo[arg1].field_256 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    msg.sender,
                                    (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                                            (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
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
                    emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
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
                                            (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
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
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                call poolInfo[arg1].field_256 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    Mask(224, 0, stor3),
                                    uint32(stor3),
                                    (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                        revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    require ext_code.size(address(wNativeRelayerAddress))
                    call address(wNativeRelayerAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, '!safeTransfer'
                    if not ext_code.size(poolInfo[arg1].field_256):
                        revert with 0, 'Address: call to non-contract'
                    if not return_data.size:
                        mem[456 len 64] = 0, msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                        call poolInfo[arg1].field_256 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256, mem[392 len 28], mem[520 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, stor3),
                                            uint32(stor3),
                                            (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                            if not arg2:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[652 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[776 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[748 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    Mask(224, 0, stor3),
                                                    uint32(stor3),
                                                    (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[762 len 14],
                                                    0,
                                                    mem[780 len 4]
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
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[753 len 23], 0, mem[780 len 4]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    mem[684 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[684]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 763 len 22]
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
                                                        mem[ceil32(return_data.size) + 754 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                            emit Deposit(arg2, msg.sender, arg1);
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
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                            if not arg2:
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
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 653 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[ceil32(return_data.size) + 777 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 749 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    Mask(224, 0, stor3),
                                                    uint32(stor3),
                                                    (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 763 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 781 len 4]
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
                                                        mem[ceil32(return_data.size) + 754 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 781 len 4]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    mem[ceil32(return_data.size) + 685 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 685]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 764 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 754 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[arg1][msg.sender].field_0 += arg2
                                    if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 754 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    poolInfo[arg1].field_512 += arg2
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(2 * ceil32(return_data.size)) + 755 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                    emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                 arg2,
                                                 mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                                                 arg1,
                    else:
                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                        call poolInfo[arg1].field_256 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, stor3),
                                            uint32(stor3),
                                            (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                            if not arg2:
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
                            else:
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 653 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[ceil32(return_data.size) + 777 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 749 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    Mask(224, 0, stor3),
                                                    uint32(stor3),
                                                    (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 763 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 781 len 4]
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
                                                        mem[ceil32(return_data.size) + 754 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 781 len 4]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    mem[ceil32(return_data.size) + 685 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 685]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 764 len 22]
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
                                                        mem[(2 * ceil32(return_data.size)) + 755 len 31]
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
                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                            if not arg2:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                emit Deposit(arg2, msg.sender, arg1);
                            else:
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(2 * ceil32(return_data.size)) + 654 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(2 * ceil32(return_data.size)) + 778 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(2 * ceil32(return_data.size)) + 750 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    Mask(224, 0, stor3),
                                                    uint32(stor3),
                                                    (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 764 len 14],
                                                    0,
                                                    mem[(2 * ceil32(return_data.size)) + 782 len 4]
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
                                                        mem[(2 * ceil32(return_data.size)) + 755 len 23],
                                                        0,
                                                        mem[(2 * ceil32(return_data.size)) + 782 len 4]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 686 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(2 * ceil32(return_data.size)) + 686]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 765 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 755 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[arg1][msg.sender].field_0 += arg2
                                    if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 755 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    poolInfo[arg1].field_512 += arg2
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 756 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                    emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                 arg2,
                                                 mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                                                 arg1,
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
                        args ((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, '!safeTransfer'
                    if not ext_code.size(poolInfo[arg1].field_256):
                        revert with 0, 'Address: call to non-contract'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                        call poolInfo[arg1].field_256 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, stor3),
                                            uint32(stor3),
                                            (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                            if not arg2:
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
                            else:
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 653 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[ceil32(return_data.size) + 777 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 749 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    Mask(224, 0, stor3),
                                                    uint32(stor3),
                                                    (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 763 len 14],
                                                    0,
                                                    mem[ceil32(return_data.size) + 781 len 4]
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
                                                        mem[ceil32(return_data.size) + 754 len 23],
                                                        0,
                                                        mem[ceil32(return_data.size) + 781 len 4]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    mem[ceil32(return_data.size) + 685 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 685]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 764 len 22]
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
                                                        mem[(2 * ceil32(return_data.size)) + 755 len 31]
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
                                                mem[(2 * ceil32(return_data.size)) + 568 len 22]
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                            if not arg2:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                emit Deposit(arg2, msg.sender, arg1);
                            else:
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(2 * ceil32(return_data.size)) + 654 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(2 * ceil32(return_data.size)) + 778 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(2 * ceil32(return_data.size)) + 750 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    Mask(224, 0, stor3),
                                                    uint32(stor3),
                                                    (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 764 len 14],
                                                    0,
                                                    mem[(2 * ceil32(return_data.size)) + 782 len 4]
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
                                                        mem[(2 * ceil32(return_data.size)) + 755 len 23],
                                                        0,
                                                        mem[(2 * ceil32(return_data.size)) + 782 len 4]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 686 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(2 * ceil32(return_data.size)) + 686]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 765 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 755 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[arg1][msg.sender].field_0 += arg2
                                    if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 755 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    poolInfo[arg1].field_512 += arg2
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 756 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                    emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                 arg2,
                                                 mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 687 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                                                 arg1,
                    else:
                        mem[(2 * ceil32(return_data.size)) + 458 len 64] = 0, msg.sender, Mask(224, 32, (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256) >> 32
                        call poolInfo[arg1].field_256 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256, mem[(2 * ceil32(return_data.size)) + 394 len 28], mem[(2 * ceil32(return_data.size)) + 522 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, stor3),
                                            uint32(stor3),
                                            (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 
                                            32,
                                            42,
                                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                            if not arg2:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(2 * ceil32(return_data.size)) + 654 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(2 * ceil32(return_data.size)) + 778 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(2 * ceil32(return_data.size)) + 750 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    Mask(224, 0, stor3),
                                                    uint32(stor3),
                                                    (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 764 len 14],
                                                    0,
                                                    mem[(2 * ceil32(return_data.size)) + 782 len 4]
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
                                                        mem[(2 * ceil32(return_data.size)) + 755 len 23],
                                                        0,
                                                        mem[(2 * ceil32(return_data.size)) + 782 len 4]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 686 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(2 * ceil32(return_data.size)) + 686]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 765 len 22]
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
                                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 756 len 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                            emit Deposit(arg2, msg.sender, arg1);
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
                            emit Harvest(((poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
                            if not arg2:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 560 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                emit Deposit(arg2, msg.sender, arg1);
                            else:
                                if not ext_code.size(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 655 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 779 len 4] = 0
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 480, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 751 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    Mask(224, 0, stor3),
                                                    uint32(stor3),
                                                    (poolInfo[arg1].field_1280 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 765 len 14],
                                                    0,
                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 783 len 4]
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
                                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 756 len 23],
                                                        0,
                                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 783 len 4]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                    emit Deposit(arg2, msg.sender, arg1);
                                else:
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 687]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(4 * ceil32(return_data.size)) + 766 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(4 * ceil32(return_data.size)) + 756 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    userInfo[arg1][msg.sender].field_0 += arg2
                                    if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(4 * ceil32(return_data.size)) + 756 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    poolInfo[arg1].field_512 += arg2
                                    if not userInfo[arg1][msg.sender].field_0:
                                        userInfo[arg1][msg.sender].field_256 = 0
                                    else:
                                        if poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1280:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(4 * ceil32(return_data.size)) + 757 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_1280 * userInfo[arg1][msg.sender].field_0 / 10^12
                                    emit Deposit(address arg1, uint256 arg2, uint256 arg3):
                                                 arg2,
                                                 mem[(4 * ceil32(return_data.size)) + 688 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                                                 arg1,
    stor1 = 1
}



}
