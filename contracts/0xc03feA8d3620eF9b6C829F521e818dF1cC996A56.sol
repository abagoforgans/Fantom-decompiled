contract main {




// =====================  Runtime code  =====================


#
#  - leaveStaking(uint256 arg1)
#  - add(uint256 arg1, address arg2, bool arg3)
#  - enterStaking(uint256 arg1)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address wasabiAddress;
address sub_52d94e19Address;
address vaultAddress;
address devAddress;
uint256 wasabiPerBlock;
uint256 sub_5e5ef0ac;
uint256 sub_5e2b629a;
uint256 sub_b8c68910;
uint256 BONUS_MULTIPLIER;
uint8 stor10; offset 160
uint32 stor10;
uint128 stor10; offset 160
address migratorAddress;
uint256 stor10;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;

function poolLength() payable {
    return poolInfo.length
}

function sub_12519c73(?) payable {
    return bool(uint8(stor10.field_160))
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function startBlock() payable {
    return startBlock
}

function sub_52d94e19(?) payable {
    return sub_52d94e19Address
}

function sub_5e2b629a(?) payable {
    return sub_5e2b629a
}

function sub_5e5ef0ac(?) payable {
    return sub_5e5ef0ac
}

function wasabiPerBlock() payable {
    return wasabiPerBlock
}

function migrator() payable {
    return migratorAddress
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function owner() payable {
    return owner
}

function dev() payable {
    return devAddress
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_b8c68910(?) payable {
    return sub_b8c68910
}

function wasabi() payable {
    return wasabiAddress
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ee5b45ba(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    wasabiPerBlock = arg1
}

function setMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    migratorAddress = arg1
}

function updateDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    devAddress = arg1
}

function updateVaultAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    vaultAddress = arg1
}

function sub_702fed32(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    Mask(96, 0, stor10.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    if (arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / arg2 - arg1 != BONUS_MULTIPLIER:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
}

function sub_31722b68(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1.length != 3:
        revert with 0, 
                    32,
                    55,
                    0x724d6173746572436865663a2077726f6e67206c656e677468206f6620746865207265776172642070657263656e746167652061727261,
                    mem[(32 * arg1.length) + 251 len 9]
    require 2 < arg1.length
    require 1 < arg1.length
    require 0 < arg1.length
    if mem[160] + mem[128] < mem[128]:
        revert with 0, 'SafeMath: addition overflow'
    if mem[192] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if mem[192] + mem[160] + mem[128] != 100:
        revert with 0, 
                    32,
                    47,
                    0x794d6173746572436865663a207265776172642070657263656e74616765206e6f7420657175616c7320746f203130,
                    mem[(32 * arg1.length) + 243 len 17]
    require 0 < arg1.length
    sub_5e5ef0ac = mem[128]
    require 1 < arg1.length
    sub_5e2b629a = mem[160]
    require 2 < arg1.length
    sub_b8c68910 = mem[192]
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
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
            revert with 0, 32, 42, 0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
}

function migrate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not migratorAddress:
        revert with 0, 'migrate: no migrator'
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, migratorAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor10.field_0), uint32(stor10.field_0), ext_call.return_data[0 len 28]
    call poolInfo[arg1].field_0 with:
       funct uint32(stor10.field_0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor10.field_0), uint32(stor10.field_0), ext_call.return_data[0]
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor10.field_0):
            revert with 0, 32, 42, 0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(migratorAddress)
    call migratorAddress.migrate(address rg1) with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'migrate: bad'
    poolInfo[arg1].field_0 = address(ext_call.return_data[0])
}

function sub_ce934290(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if wasabiPerBlock:
            if sub_5e5ef0ac * wasabiPerBlock / wasabiPerBlock != sub_5e5ef0ac:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not wasabiPerBlock:
        if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
            if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if sub_5e5ef0ac * wasabiPerBlock / wasabiPerBlock != sub_5e5ef0ac:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_5e5ef0ac * wasabiPerBlock / 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if uint8(stor10.field_160):
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if wasabiPerBlock:
                        if sub_5e5ef0ac * wasabiPerBlock / wasabiPerBlock != sub_5e5ef0ac:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if 0 / totalAllocPoint:
                        require ext_code.size(wasabiAddress)
                        call wasabiAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_52d94e19Address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if wasabiPerBlock:
                        if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if 0 / totalAllocPoint:
                        require ext_code.size(wasabiAddress)
                        call wasabiAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(vaultAddress)
                        call vaultAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args (0 / totalAllocPoint)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if wasabiPerBlock:
                        if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require ext_code.size(wasabiAddress)
                        call wasabiAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(devAddress)
                        call devAddress.0xb6b55f25 with:
                             gas gas_remaining wei
                            args (0 / totalAllocPoint)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not wasabiPerBlock:
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                            if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint:
                            require ext_code.size(wasabiAddress)
                            call wasabiAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_52d94e19Address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if not wasabiPerBlock:
                            if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint:
                                require ext_code.size(wasabiAddress)
                                call wasabiAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vaultAddress)
                                call vaultAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args (0 / totalAllocPoint)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint:
                                    require ext_code.size(wasabiAddress)
                                    call wasabiAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args (0 / totalAllocPoint)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_b8c68910 * wasabiPerBlock / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint:
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args (0 / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) != poolInfo[arg1].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint:
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args ((block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        if not wasabiPerBlock:
                            if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require ext_code.size(wasabiAddress)
                                call wasabiAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(devAddress)
                                call devAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args (0 / totalAllocPoint)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require ext_code.size(wasabiAddress)
                                    call wasabiAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(devAddress)
                                    call devAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args (0 / totalAllocPoint)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_5e2b629a * wasabiPerBlock / 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(devAddress)
                                        call devAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args (0 / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) != poolInfo[arg1].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint:
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(devAddress)
                                        call devAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args ((block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if sub_5e5ef0ac * wasabiPerBlock / wasabiPerBlock != sub_5e5ef0ac:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint:
                                require ext_code.size(wasabiAddress)
                                call wasabiAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_52d94e19Address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not wasabiPerBlock:
                                if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                    if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint:
                                    require ext_code.size(wasabiAddress)
                                    call wasabiAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args (0 / totalAllocPoint)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint:
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args (0 / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_b8c68910 * wasabiPerBlock / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if 0 / totalAllocPoint:
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args ((block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            if not wasabiPerBlock:
                                if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                    if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require ext_code.size(wasabiAddress)
                                    call wasabiAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(devAddress)
                                    call devAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args (0 / totalAllocPoint)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(devAddress)
                                        call devAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args (0 / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_5e2b629a * wasabiPerBlock / 100:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(devAddress)
                                            call devAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(devAddress)
                                            call devAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args ((block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_5e5ef0ac * wasabiPerBlock / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint:
                                    require ext_code.size(wasabiAddress)
                                    call wasabiAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_52d94e19Address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not wasabiPerBlock:
                                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                        if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint:
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args (0 / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if 0 / totalAllocPoint:
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_b8c68910 * wasabiPerBlock / 100:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if 0 / totalAllocPoint:
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(vaultAddress)
                                                call vaultAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) != poolInfo[arg1].field_256:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(vaultAddress)
                                                call vaultAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args ((block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                if not wasabiPerBlock:
                                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                        if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(devAddress)
                                        call devAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args (0 / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(devAddress)
                                            call devAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_5e2b629a * wasabiPerBlock / 100:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(devAddress)
                                                call devAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) != poolInfo[arg1].field_256:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(devAddress)
                                                call devAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args ((block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) != poolInfo[arg1].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    require ext_code.size(wasabiAddress)
                                    call wasabiAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_52d94e19Address, (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not wasabiPerBlock:
                                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                        if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint:
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args (0 / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if 0 / totalAllocPoint:
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_b8c68910 * wasabiPerBlock / 100:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if 0 / totalAllocPoint:
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(vaultAddress)
                                                call vaultAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) != poolInfo[arg1].field_256:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(vaultAddress)
                                                call vaultAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args ((block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                if not wasabiPerBlock:
                                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                        if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint:
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(devAddress)
                                        call devAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args (0 / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if 0 / totalAllocPoint:
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(devAddress)
                                            call devAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != sub_5e2b629a * wasabiPerBlock / 100:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if 0 / totalAllocPoint:
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(devAddress)
                                                call devAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) != poolInfo[arg1].field_256:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(devAddress)
                                                call devAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args ((block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 11
        if block.number > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if uint8(stor10.field_160):
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if wasabiPerBlock:
                            if sub_5e5ef0ac * wasabiPerBlock / wasabiPerBlock != sub_5e5ef0ac:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint:
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = sub_52d94e19Address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(wasabiAddress)
                            call wasabiAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_52d94e19Address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if wasabiPerBlock:
                            if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if 0 / totalAllocPoint:
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(wasabiAddress)
                            call wasabiAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                            mem[100] = 0 / totalAllocPoint
                            require ext_code.size(vaultAddress)
                            call vaultAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args (0 / totalAllocPoint)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if wasabiPerBlock:
                            if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(wasabiAddress)
                            call wasabiAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                            mem[100] = 0 / totalAllocPoint
                            require ext_code.size(devAddress)
                            call devAddress.0xb6b55f25 with:
                                 gas gas_remaining wei
                                args (0 / totalAllocPoint)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not wasabiPerBlock:
                            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint:
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = sub_52d94e19Address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(wasabiAddress)
                                call wasabiAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_52d94e19Address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if not wasabiPerBlock:
                                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                    if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint:
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(wasabiAddress)
                                    call wasabiAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                    mem[100] = 0 / totalAllocPoint
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args (0 / totalAllocPoint)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint:
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                        mem[100] = 0 / totalAllocPoint
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args (0 / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_b8c68910 * wasabiPerBlock / 100:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if 0 / totalAllocPoint:
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                            mem[100] = 0 / totalAllocPoint
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                            mem[132] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                            mem[100] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args ((block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                            if not wasabiPerBlock:
                                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                    if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(wasabiAddress)
                                    call wasabiAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                    mem[100] = 0 / totalAllocPoint
                                    require ext_code.size(devAddress)
                                    call devAddress.0xb6b55f25 with:
                                         gas gas_remaining wei
                                        args (0 / totalAllocPoint)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                        mem[100] = 0 / totalAllocPoint
                                        require ext_code.size(devAddress)
                                        call devAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args (0 / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_5e2b629a * wasabiPerBlock / 100:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                            mem[100] = 0 / totalAllocPoint
                                            require ext_code.size(devAddress)
                                            call devAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                            mem[132] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                            mem[100] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(devAddress)
                                            call devAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args ((block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if sub_5e5ef0ac * wasabiPerBlock / wasabiPerBlock != sub_5e5ef0ac:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint:
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = sub_52d94e19Address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(wasabiAddress)
                                    call wasabiAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_52d94e19Address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not wasabiPerBlock:
                                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint:
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                        mem[100] = 0 / totalAllocPoint
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args (0 / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if 0 / totalAllocPoint:
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                            mem[100] = 0 / totalAllocPoint
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_b8c68910 * wasabiPerBlock / 100:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if 0 / totalAllocPoint:
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = 0 / totalAllocPoint
                                                require ext_code.size(vaultAddress)
                                                call vaultAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                                mem[132] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(vaultAddress)
                                                call vaultAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args ((block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                if not wasabiPerBlock:
                                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                        mem[100] = 0 / totalAllocPoint
                                        require ext_code.size(devAddress)
                                        call devAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args (0 / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                            mem[100] = 0 / totalAllocPoint
                                            require ext_code.size(devAddress)
                                            call devAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_5e2b629a * wasabiPerBlock / 100:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = 0 / totalAllocPoint
                                                require ext_code.size(devAddress)
                                                call devAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                                mem[132] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(devAddress)
                                                call devAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args ((block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_5e5ef0ac * wasabiPerBlock / 100:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint:
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = sub_52d94e19Address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args sub_52d94e19Address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not wasabiPerBlock:
                                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if 0 / totalAllocPoint:
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                            mem[100] = 0 / totalAllocPoint
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if 0 / totalAllocPoint:
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = 0 / totalAllocPoint
                                                require ext_code.size(vaultAddress)
                                                call vaultAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_b8c68910 * wasabiPerBlock / 100:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if 0 / totalAllocPoint:
                                                    mem[132] = 0 / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, 0 / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = 0 / totalAllocPoint
                                                    require ext_code.size(vaultAddress)
                                                    call vaultAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args (0 / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    mem[132] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    require ext_code.size(vaultAddress)
                                                    call vaultAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args ((block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not wasabiPerBlock:
                                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                            mem[100] = 0 / totalAllocPoint
                                            require ext_code.size(devAddress)
                                            call devAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = 0 / totalAllocPoint
                                                require ext_code.size(devAddress)
                                                call devAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_5e2b629a * wasabiPerBlock / 100:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    mem[132] = 0 / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, 0 / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = 0 / totalAllocPoint
                                                    require ext_code.size(devAddress)
                                                    call devAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args (0 / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not 0 / totalAllocPoint:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    mem[132] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    require ext_code.size(devAddress)
                                                    call devAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args ((block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = sub_52d94e19Address
                                        mem[132] = (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args sub_52d94e19Address, (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not wasabiPerBlock:
                                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if 0 / totalAllocPoint:
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                            mem[100] = 0 / totalAllocPoint
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if 0 / totalAllocPoint:
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = 0 / totalAllocPoint
                                                require ext_code.size(vaultAddress)
                                                call vaultAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_b8c68910 * wasabiPerBlock / 100:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if 0 / totalAllocPoint:
                                                    mem[132] = 0 / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, 0 / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = 0 / totalAllocPoint
                                                    require ext_code.size(vaultAddress)
                                                    call vaultAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args (0 / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    mem[132] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    require ext_code.size(vaultAddress)
                                                    call vaultAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args ((block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not wasabiPerBlock:
                                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if 0 / totalAllocPoint:
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                            mem[100] = 0 / totalAllocPoint
                                            require ext_code.size(devAddress)
                                            call devAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if 0 / totalAllocPoint:
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = 0 / totalAllocPoint
                                                require ext_code.size(devAddress)
                                                call devAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_5e2b629a * wasabiPerBlock / 100:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if 0 / totalAllocPoint:
                                                    mem[132] = 0 / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, 0 / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = 0 / totalAllocPoint
                                                    require ext_code.size(devAddress)
                                                    call devAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args (0 / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    mem[132] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    require ext_code.size(devAddress)
                                                    call devAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args ((block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 11
            if block.number > poolInfo[idx].field_512:
                mem[100] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if uint8(stor10.field_160):
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if wasabiPerBlock:
                                if sub_5e5ef0ac * wasabiPerBlock / wasabiPerBlock != sub_5e5ef0ac:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint:
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = sub_52d94e19Address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(wasabiAddress)
                                call wasabiAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_52d94e19Address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if wasabiPerBlock:
                                if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if 0 / totalAllocPoint:
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(wasabiAddress)
                                call wasabiAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                mem[100] = 0 / totalAllocPoint
                                require ext_code.size(vaultAddress)
                                call vaultAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args (0 / totalAllocPoint)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if wasabiPerBlock:
                                if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(wasabiAddress)
                                call wasabiAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                mem[100] = 0 / totalAllocPoint
                                require ext_code.size(devAddress)
                                call devAddress.0xb6b55f25 with:
                                     gas gas_remaining wei
                                    args (0 / totalAllocPoint)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not wasabiPerBlock:
                                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                    if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if 0 / totalAllocPoint:
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = sub_52d94e19Address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(wasabiAddress)
                                    call wasabiAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_52d94e19Address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if not wasabiPerBlock:
                                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint:
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                        mem[100] = 0 / totalAllocPoint
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args (0 / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if 0 / totalAllocPoint:
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                            mem[100] = 0 / totalAllocPoint
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_b8c68910 * wasabiPerBlock / 100:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if 0 / totalAllocPoint:
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = 0 / totalAllocPoint
                                                require ext_code.size(vaultAddress)
                                                call vaultAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                                mem[132] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(vaultAddress)
                                                call vaultAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args ((block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                if not wasabiPerBlock:
                                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args this.address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                        mem[100] = 0 / totalAllocPoint
                                        require ext_code.size(devAddress)
                                        call devAddress.0xb6b55f25 with:
                                             gas gas_remaining wei
                                            args (0 / totalAllocPoint)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                            mem[100] = 0 / totalAllocPoint
                                            require ext_code.size(devAddress)
                                            call devAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_5e2b629a * wasabiPerBlock / 100:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = 0 / totalAllocPoint
                                                require ext_code.size(devAddress)
                                                call devAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                                mem[132] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                require ext_code.size(devAddress)
                                                call devAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args ((block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if sub_5e5ef0ac * wasabiPerBlock / wasabiPerBlock != sub_5e5ef0ac:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if 0 / totalAllocPoint:
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = sub_52d94e19Address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(wasabiAddress)
                                        call wasabiAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args sub_52d94e19Address, 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    if not wasabiPerBlock:
                                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if 0 / totalAllocPoint:
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                            mem[100] = 0 / totalAllocPoint
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if 0 / totalAllocPoint:
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = 0 / totalAllocPoint
                                                require ext_code.size(vaultAddress)
                                                call vaultAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_b8c68910 * wasabiPerBlock / 100:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if 0 / totalAllocPoint:
                                                    mem[132] = 0 / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, 0 / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = 0 / totalAllocPoint
                                                    require ext_code.size(vaultAddress)
                                                    call vaultAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args (0 / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    mem[132] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    require ext_code.size(vaultAddress)
                                                    call vaultAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args ((block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not wasabiPerBlock:
                                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args this.address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                            mem[100] = 0 / totalAllocPoint
                                            require ext_code.size(devAddress)
                                            call devAddress.0xb6b55f25 with:
                                                 gas gas_remaining wei
                                                args (0 / totalAllocPoint)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = 0 / totalAllocPoint
                                                require ext_code.size(devAddress)
                                                call devAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_5e2b629a * wasabiPerBlock / 100:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    mem[132] = 0 / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, 0 / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = 0 / totalAllocPoint
                                                    require ext_code.size(devAddress)
                                                    call devAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args (0 / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not 0 / totalAllocPoint:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    mem[132] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                    require ext_code.size(devAddress)
                                                    call devAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args ((block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_5e5ef0ac * wasabiPerBlock / 100:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if 0 / totalAllocPoint:
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = sub_52d94e19Address
                                            mem[132] = 0 / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args sub_52d94e19Address, 0 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if not wasabiPerBlock:
                                            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if 0 / totalAllocPoint:
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = 0 / totalAllocPoint
                                                require ext_code.size(vaultAddress)
                                                call vaultAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if 0 / totalAllocPoint:
                                                    mem[132] = 0 / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, 0 / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = 0 / totalAllocPoint
                                                    require ext_code.size(vaultAddress)
                                                    call vaultAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args (0 / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_b8c68910 * wasabiPerBlock / 100:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100):
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    if 0 / totalAllocPoint:
                                                        mem[132] = 0 / totalAllocPoint
                                                        require ext_code.size(wasabiAddress)
                                                        call wasabiAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args this.address, 0 / totalAllocPoint
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                        mem[100] = 0 / totalAllocPoint
                                                        require ext_code.size(vaultAddress)
                                                        call vaultAddress.0xb6b55f25 with:
                                                             gas gas_remaining wei
                                                            args (0 / totalAllocPoint)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        mem[132] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                        require ext_code.size(wasabiAddress)
                                                        call wasabiAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args this.address, (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                        mem[100] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                        require ext_code.size(vaultAddress)
                                                        call vaultAddress.0xb6b55f25 with:
                                                             gas gas_remaining wei
                                                            args ((block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not wasabiPerBlock:
                                            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = 0 / totalAllocPoint
                                                require ext_code.size(devAddress)
                                                call devAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    mem[132] = 0 / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, 0 / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = 0 / totalAllocPoint
                                                    require ext_code.size(devAddress)
                                                    call devAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args (0 / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not 0 / totalAllocPoint:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_5e2b629a * wasabiPerBlock / 100:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100):
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    if not 0 / totalAllocPoint:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        mem[132] = 0 / totalAllocPoint
                                                        require ext_code.size(wasabiAddress)
                                                        call wasabiAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args this.address, 0 / totalAllocPoint
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                        mem[100] = 0 / totalAllocPoint
                                                        require ext_code.size(devAddress)
                                                        call devAddress.0xb6b55f25 with:
                                                             gas gas_remaining wei
                                                            args (0 / totalAllocPoint)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if not 0 / totalAllocPoint:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                else:
                                                    if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        mem[132] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                        require ext_code.size(wasabiAddress)
                                                        call wasabiAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args this.address, (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                        mem[100] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                        require ext_code.size(devAddress)
                                                        call devAddress.0xb6b55f25 with:
                                                             gas gas_remaining wei
                                                            args ((block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    if not 0 / totalAllocPoint:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = sub_52d94e19Address
                                            mem[132] = (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                            require ext_code.size(wasabiAddress)
                                            call wasabiAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args sub_52d94e19Address, (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        if not wasabiPerBlock:
                                            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if 0 / totalAllocPoint:
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = 0 / totalAllocPoint
                                                require ext_code.size(vaultAddress)
                                                call vaultAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if sub_b8c68910 * wasabiPerBlock / wasabiPerBlock != sub_b8c68910:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if 0 / totalAllocPoint:
                                                    mem[132] = 0 / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, 0 / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = 0 / totalAllocPoint
                                                    require ext_code.size(vaultAddress)
                                                    call vaultAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args (0 / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_b8c68910 * wasabiPerBlock / 100:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100):
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    if 0 / totalAllocPoint:
                                                        mem[132] = 0 / totalAllocPoint
                                                        require ext_code.size(wasabiAddress)
                                                        call wasabiAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args this.address, 0 / totalAllocPoint
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                        mem[100] = 0 / totalAllocPoint
                                                        require ext_code.size(vaultAddress)
                                                        call vaultAddress.0xb6b55f25 with:
                                                             gas gas_remaining wei
                                                            args (0 / totalAllocPoint)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    if (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        mem[132] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                        require ext_code.size(wasabiAddress)
                                                        call wasabiAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args this.address, (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                        mem[100] = (block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                        require ext_code.size(vaultAddress)
                                                        call vaultAddress.0xb6b55f25 with:
                                                             gas gas_remaining wei
                                                            args ((block.number * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_b8c68910 * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not wasabiPerBlock:
                                            if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                if 0 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if 0 / totalAllocPoint:
                                                mem[132] = 0 / totalAllocPoint
                                                require ext_code.size(wasabiAddress)
                                                call wasabiAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args this.address, 0 / totalAllocPoint
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                mem[100] = 0 / totalAllocPoint
                                                require ext_code.size(devAddress)
                                                call devAddress.0xb6b55f25 with:
                                                     gas gas_remaining wei
                                                    args (0 / totalAllocPoint)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if sub_5e2b629a * wasabiPerBlock / wasabiPerBlock != sub_5e2b629a:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if 0 / totalAllocPoint:
                                                    mem[132] = 0 / totalAllocPoint
                                                    require ext_code.size(wasabiAddress)
                                                    call wasabiAddress.0x40c10f19 with:
                                                         gas gas_remaining wei
                                                        args this.address, 0 / totalAllocPoint
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                    mem[100] = 0 / totalAllocPoint
                                                    require ext_code.size(devAddress)
                                                    call devAddress.0xb6b55f25 with:
                                                         gas gas_remaining wei
                                                        args (0 / totalAllocPoint)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != sub_5e2b629a * wasabiPerBlock / 100:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100):
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    if 0 / totalAllocPoint:
                                                        mem[132] = 0 / totalAllocPoint
                                                        require ext_code.size(wasabiAddress)
                                                        call wasabiAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args this.address, 0 / totalAllocPoint
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                        mem[100] = 0 / totalAllocPoint
                                                        require ext_code.size(devAddress)
                                                        call devAddress.0xb6b55f25 with:
                                                             gas gas_remaining wei
                                                            args (0 / totalAllocPoint)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100) != poolInfo[idx].field_256:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    if (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        mem[132] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                        require ext_code.size(wasabiAddress)
                                                        call wasabiAddress.0x40c10f19 with:
                                                             gas gas_remaining wei
                                                            args this.address, (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[96] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
                                                        mem[100] = (block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint
                                                        require ext_code.size(devAddress)
                                                        call devAddress.0xb6b55f25 with:
                                                             gas gas_remaining wei
                                                            args ((block.number * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e2b629a * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_5e5ef0ac * wasabiPerBlock / 100 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    if poolInfo[arg1].field_256 != arg2:
        if poolInfo[arg1].field_256 > totalAllocPoint:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
}



}
