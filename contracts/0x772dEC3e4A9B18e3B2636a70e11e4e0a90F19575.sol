contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const maxEmissionRate = 10 * 10^18

const feeaddr = 0x45472b519de9ac90a09bf51d9e161b8c6476361d

const devaddr = 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37


address owner;
uint256 stor1;
address tokenAddress;
uint256 tokenPerBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
mapping of uint8 stor8;

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

function totalAllocPoint() payable {
    return totalAllocPoint
}

function tokenPerBlock() payable {
    return tokenPerBlock
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number >= startBlock:
        revert with 0, 'FARM ALREADY STARTED'
    if block.number >= arg1:
        revert with 0, 'INCORRECT INPUT'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        poolInfo[idx].field_512 = arg1
        idx = idx + 1
        continue 
    startBlock = arg1
    emit UpdateStartBlock(startBlock);
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    if poolInfo[arg1].field_1280 < userInfo[arg1][address(msg.sender)].field_0:
        poolInfo[arg1].field_1280 = 0
    else:
        if userInfo[arg1][address(msg.sender)].field_0 > poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        poolInfo[arg1].field_1280 -= userInfo[arg1][address(msg.sender)].field_0
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    stor1 = 1
}

function pendingToken(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
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
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1280:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if totalAllocPoint <= 0:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1280
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock) / block.number - poolInfo[arg1].field_512 != tokenPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1280
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock)
    if (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^18 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if poolInfo[arg1].field_1280 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require poolInfo[arg1].field_1280
    if poolInfo[arg1].field_768 + (10^18 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        if poolInfo[arg1].field_1280:
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, 0 / totalAllocPoint / 10
                    if ext_call.success:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            if not return_data.size:
                                emit 0xa537880c: ' '
                            else:
                                emit 0xa537880c: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                        else:
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                    else:
                        if not return_data.size:
                            emit 0xa537880c: ' '
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                            if not ext_call.success:
                                if not return_data.size:
                                    emit 0xa537880c: ' '
                                else:
                                    emit 0xa537880c: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                        else:
                            emit 0xa537880c: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0
                            if not ext_call.success:
                                emit 0xa537880c: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                        if poolInfo[arg1].field_1280 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1280
                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock) / block.number - poolInfo[arg1].field_512 != tokenPerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, 0 / totalAllocPoint / 10
                        if ext_call.success:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                if not return_data.size:
                                    emit 0xa537880c: ' '
                                else:
                                    emit 0xa537880c: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            else:
                                if not 0 / totalAllocPoint:
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            if not return_data.size:
                                emit 0xa537880c: ' '
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                                if not ext_call.success:
                                    if not return_data.size:
                                        emit 0xa537880c: ' '
                                    else:
                                        emit 0xa537880c: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                            else:
                                emit 0xa537880c: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                                if not ext_call.success:
                                    emit 0xa537880c: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                    else:
                        require (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock)
                        if (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                        if ext_call.success:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                if not return_data.size:
                                    emit 0xa537880c: ' '
                                else:
                                    emit 0xa537880c: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            else:
                                if not (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    require (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^18 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (10^18 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            if not return_data.size:
                                emit 0xa537880c: ' '
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                                if not ext_call.success:
                                    if not return_data.size:
                                        emit 0xa537880c: ' '
                                    else:
                                        emit 0xa537880c: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                            else:
                                emit 0xa537880c: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0
                                if not ext_call.success:
                                    emit 0xa537880c: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.number > poolInfo[idx].field_512:
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, 0 / totalAllocPoint / 10
                        if ext_call.success:
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if ext_call.success:
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                if not return_data.size:
                                    _707 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = mem[96]
                                    _709 = mem[96]
                                    s = 0
                                    while s < _709:
                                        mem[_707 + s + 64] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    if not _709 % 32:
                                        emit 0xa537880c: mem[mem[64] len _709 + _707 + -mem[64] + 64]
                                    else:
                                        mem[floor32(_709) + _707 + 64] = mem[floor32(_709) + _707 + -(_709 % 32) + 96 len _709 % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(_709) + _707 + -mem[64] + 96]
                                else:
                                    _698 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_698] = return_data.size
                                    mem[_698 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _710 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = return_data.size
                                    s = 0
                                    while s < return_data.size:
                                        mem[_710 + s + 64] = mem[_698 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not return_data.size % 32:
                                        emit 0xa537880c: mem[mem[64] len return_data.size + _710 + -mem[64] + 64]
                                    else:
                                        mem[floor32(return_data.size) + _710 + 64] = mem[floor32(return_data.size) + _710 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _710 + -mem[64] + 96]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        else:
                            if not return_data.size:
                                _658 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[96]
                                _660 = mem[96]
                                s = 0
                                while s < _660:
                                    mem[_658 + s + 64] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                if not _660 % 32:
                                    emit 0xa537880c: mem[mem[64] len _660 + _658 + -mem[64] + 64]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                    if not ext_call.success:
                                        if not return_data.size:
                                            _1381 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = mem[96]
                                            _1383 = mem[96]
                                            s = 0
                                            while s < _1383:
                                                mem[_1381 + s + 64] = mem[s + 128]
                                                s = s + 32
                                                continue 
                                            if not _1383 % 32:
                                                emit 0xa537880c: mem[mem[64] len _1383 + _1381 + -mem[64] + 64]
                                            else:
                                                mem[floor32(_1383) + _1381 + 64] = mem[floor32(_1383) + _1381 + -(_1383 % 32) + 96 len _1383 % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(_1383) + _1381 + -mem[64] + 96]
                                        else:
                                            _1351 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1351] = return_data.size
                                            mem[_1351 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _1384 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = return_data.size
                                            s = 0
                                            while s < return_data.size:
                                                mem[_1384 + s + 64] = mem[_1351 + s + 32]
                                                s = s + 32
                                                continue 
                                            if not return_data.size % 32:
                                                emit 0xa537880c: mem[mem[64] len return_data.size + _1384 + -mem[64] + 64]
                                            else:
                                                mem[floor32(return_data.size) + _1384 + 64] = mem[floor32(return_data.size) + _1384 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1384 + -mem[64] + 96]
                                else:
                                    mem[floor32(_660) + _658 + 64] = mem[floor32(_660) + _658 + -(_660 % 32) + 96 len _660 % 32]
                                    emit 0xa537880c: mem[mem[64] len floor32(_660) + _658 + -mem[64] + 96]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                    if not ext_call.success:
                                        if not return_data.size:
                                            _1427 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = mem[96]
                                            _1429 = mem[96]
                                            s = 0
                                            while s < _1429:
                                                mem[_1427 + s + 64] = mem[s + 128]
                                                s = s + 32
                                                continue 
                                            if not _1429 % 32:
                                                emit 0xa537880c: mem[mem[64] len _1429 + _1427 + -mem[64] + 64]
                                            else:
                                                mem[floor32(_1429) + _1427 + 64] = mem[floor32(_1429) + _1427 + -(_1429 % 32) + 96 len _1429 % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(_1429) + _1427 + -mem[64] + 96]
                                        else:
                                            _1387 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1387] = return_data.size
                                            mem[_1387 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _1430 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = return_data.size
                                            s = 0
                                            while s < return_data.size:
                                                mem[_1430 + s + 64] = mem[_1387 + s + 32]
                                                s = s + 32
                                                continue 
                                            if not return_data.size % 32:
                                                emit 0xa537880c: mem[mem[64] len return_data.size + _1430 + -mem[64] + 64]
                                            else:
                                                mem[floor32(return_data.size) + _1430 + 64] = mem[floor32(return_data.size) + _1430 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1430 + -mem[64] + 96]
                            else:
                                _657 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_657] = return_data.size
                                mem[_657 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                _661 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = return_data.size
                                s = 0
                                while s < return_data.size:
                                    mem[_661 + s + 64] = mem[_657 + s + 32]
                                    s = s + 32
                                    continue 
                                if not return_data.size % 32:
                                    emit 0xa537880c: mem[mem[64] len return_data.size + _661 + -mem[64] + 64]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                    if not ext_call.success:
                                        if not return_data.size:
                                            _1388 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = mem[96]
                                            _1390 = mem[96]
                                            s = 0
                                            while s < _1390:
                                                mem[_1388 + s + 64] = mem[s + 128]
                                                s = s + 32
                                                continue 
                                            if not _1390 % 32:
                                                emit 0xa537880c: mem[mem[64] len _1390 + _1388 + -mem[64] + 64]
                                            else:
                                                mem[floor32(_1390) + _1388 + 64] = mem[floor32(_1390) + _1388 + -(_1390 % 32) + 96 len _1390 % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(_1390) + _1388 + -mem[64] + 96]
                                        else:
                                            _1352 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1352] = return_data.size
                                            mem[_1352 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _1391 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = return_data.size
                                            s = 0
                                            while s < return_data.size:
                                                mem[_1391 + s + 64] = mem[_1352 + s + 32]
                                                s = s + 32
                                                continue 
                                            if not return_data.size % 32:
                                                emit 0xa537880c: mem[mem[64] len return_data.size + _1391 + -mem[64] + 64]
                                            else:
                                                mem[floor32(return_data.size) + _1391 + 64] = mem[floor32(return_data.size) + _1391 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1391 + -mem[64] + 96]
                                else:
                                    mem[floor32(return_data.size) + _661 + 64] = mem[floor32(return_data.size) + _661 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _661 + -mem[64] + 96]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                    if not ext_call.success:
                                        if not return_data.size:
                                            _1433 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = mem[96]
                                            _1435 = mem[96]
                                            s = 0
                                            while s < _1435:
                                                mem[_1433 + s + 64] = mem[s + 128]
                                                s = s + 32
                                                continue 
                                            if not _1435 % 32:
                                                emit 0xa537880c: mem[mem[64] len _1435 + _1433 + -mem[64] + 64]
                                            else:
                                                mem[floor32(_1435) + _1433 + 64] = mem[floor32(_1435) + _1433 + -(_1435 % 32) + 96 len _1435 % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(_1435) + _1433 + -mem[64] + 96]
                                        else:
                                            _1394 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1394] = return_data.size
                                            mem[_1394 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _1436 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = return_data.size
                                            s = 0
                                            while s < return_data.size:
                                                mem[_1436 + s + 64] = mem[_1394 + s + 32]
                                                s = s + 32
                                                continue 
                                            if not return_data.size % 32:
                                                emit 0xa537880c: mem[mem[64] len return_data.size + _1436 + -mem[64] + 64]
                                            else:
                                                mem[floor32(return_data.size) + _1436 + 64] = mem[floor32(return_data.size) + _1436 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1436 + -mem[64] + 96]
                            if poolInfo[idx].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                    else:
                        require block.number - poolInfo[idx].field_512
                        if (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) / block.number - poolInfo[idx].field_512 != tokenPerBlock:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, 0 / totalAllocPoint / 10
                            if ext_call.success:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if ext_call.success:
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    if not return_data.size:
                                        _730 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = mem[96]
                                        _732 = mem[96]
                                        s = 0
                                        while s < _732:
                                            mem[_730 + s + 64] = mem[s + 128]
                                            s = s + 32
                                            continue 
                                        if not _732 % 32:
                                            emit 0xa537880c: mem[mem[64] len _732 + _730 + -mem[64] + 64]
                                        else:
                                            mem[floor32(_732) + _730 + 64] = mem[floor32(_732) + _730 + -(_732 % 32) + 96 len _732 % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(_732) + _730 + -mem[64] + 96]
                                    else:
                                        _721 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_721] = return_data.size
                                        mem[_721 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _733 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = return_data.size
                                        s = 0
                                        while s < return_data.size:
                                            mem[_733 + s + 64] = mem[_721 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not return_data.size % 32:
                                            emit 0xa537880c: mem[mem[64] len return_data.size + _733 + -mem[64] + 64]
                                        else:
                                            mem[floor32(return_data.size) + _733 + 64] = mem[floor32(return_data.size) + _733 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _733 + -mem[64] + 96]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                if not return_data.size:
                                    _667 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = mem[96]
                                    _669 = mem[96]
                                    s = 0
                                    while s < _669:
                                        mem[_667 + s + 64] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    if not _669 % 32:
                                        emit 0xa537880c: mem[mem[64] len _669 + _667 + -mem[64] + 64]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1367 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1369 = mem[96]
                                                s = 0
                                                while s < _1369:
                                                    mem[_1367 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1369 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1369 + _1367 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1369) + _1367 + 64] = mem[floor32(_1369) + _1367 + -(_1369 % 32) + 96 len _1369 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1369) + _1367 + -mem[64] + 96]
                                            else:
                                                _1349 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1349] = return_data.size
                                                mem[_1349 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1370 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1370 + s + 64] = mem[_1349 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1370 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1370 + 64] = mem[floor32(return_data.size) + _1370 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1370 + -mem[64] + 96]
                                    else:
                                        mem[floor32(_669) + _667 + 64] = mem[floor32(_669) + _667 + -(_669 % 32) + 96 len _669 % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(_669) + _667 + -mem[64] + 96]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1411 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1413 = mem[96]
                                                s = 0
                                                while s < _1413:
                                                    mem[_1411 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1413 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1413 + _1411 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1413) + _1411 + 64] = mem[floor32(_1413) + _1411 + -(_1413 % 32) + 96 len _1413 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1413) + _1411 + -mem[64] + 96]
                                            else:
                                                _1373 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1373] = return_data.size
                                                mem[_1373 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1414 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1414 + s + 64] = mem[_1373 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1414 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1414 + 64] = mem[floor32(return_data.size) + _1414 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1414 + -mem[64] + 96]
                                else:
                                    _666 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_666] = return_data.size
                                    mem[_666 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _670 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = return_data.size
                                    s = 0
                                    while s < return_data.size:
                                        mem[_670 + s + 64] = mem[_666 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not return_data.size % 32:
                                        emit 0xa537880c: mem[mem[64] len return_data.size + _670 + -mem[64] + 64]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1374 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1376 = mem[96]
                                                s = 0
                                                while s < _1376:
                                                    mem[_1374 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1376 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1376 + _1374 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1376) + _1374 + 64] = mem[floor32(_1376) + _1374 + -(_1376 % 32) + 96 len _1376 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1376) + _1374 + -mem[64] + 96]
                                            else:
                                                _1350 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1350] = return_data.size
                                                mem[_1350 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1377 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1377 + s + 64] = mem[_1350 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1377 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1377 + 64] = mem[floor32(return_data.size) + _1377 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1377 + -mem[64] + 96]
                                    else:
                                        mem[floor32(return_data.size) + _670 + 64] = mem[floor32(return_data.size) + _670 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _670 + -mem[64] + 96]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1417 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1419 = mem[96]
                                                s = 0
                                                while s < _1419:
                                                    mem[_1417 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1419 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1419 + _1417 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1419) + _1417 + 64] = mem[floor32(_1419) + _1417 + -(_1419 % 32) + 96 len _1419 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1419) + _1417 + -mem[64] + 96]
                                            else:
                                                _1380 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1380] = return_data.size
                                                mem[_1380 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1420 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1420 + s + 64] = mem[_1380 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1420 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1420 + 64] = mem[floor32(return_data.size) + _1420 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1420 + -mem[64] + 96]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        else:
                            require (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock)
                            if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[mem[64] + 36] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            if ext_call.success:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if ext_call.success:
                                    if not (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        require (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^18 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (10^18 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    if not return_data.size:
                                        _755 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = mem[96]
                                        _757 = mem[96]
                                        s = 0
                                        while s < _757:
                                            mem[_755 + s + 64] = mem[s + 128]
                                            s = s + 32
                                            continue 
                                        if not _757 % 32:
                                            emit 0xa537880c: mem[mem[64] len _757 + _755 + -mem[64] + 64]
                                        else:
                                            mem[floor32(_757) + _755 + 64] = mem[floor32(_757) + _755 + -(_757 % 32) + 96 len _757 % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(_757) + _755 + -mem[64] + 96]
                                    else:
                                        _744 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_744] = return_data.size
                                        mem[_744 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _758 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = return_data.size
                                        s = 0
                                        while s < return_data.size:
                                            mem[_758 + s + 64] = mem[_744 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not return_data.size % 32:
                                            emit 0xa537880c: mem[mem[64] len return_data.size + _758 + -mem[64] + 64]
                                        else:
                                            mem[floor32(return_data.size) + _758 + 64] = mem[floor32(return_data.size) + _758 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _758 + -mem[64] + 96]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                if not return_data.size:
                                    _682 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = mem[96]
                                    _684 = mem[96]
                                    s = 0
                                    while s < _684:
                                        mem[_682 + s + 64] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    if not _684 % 32:
                                        emit 0xa537880c: mem[mem[64] len _684 + _682 + -mem[64] + 64]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1353 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1355 = mem[96]
                                                s = 0
                                                while s < _1355:
                                                    mem[_1353 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1355 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1355 + _1353 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1355) + _1353 + 64] = mem[floor32(_1355) + _1353 + -(_1355 % 32) + 96 len _1355 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1355) + _1353 + -mem[64] + 96]
                                            else:
                                                _1347 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1347] = return_data.size
                                                mem[_1347 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1356 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1356 + s + 64] = mem[_1347 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1356 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1356 + 64] = mem[floor32(return_data.size) + _1356 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1356 + -mem[64] + 96]
                                    else:
                                        mem[floor32(_684) + _682 + 64] = mem[floor32(_684) + _682 + -(_684 % 32) + 96 len _684 % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(_684) + _682 + -mem[64] + 96]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1395 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1397 = mem[96]
                                                s = 0
                                                while s < _1397:
                                                    mem[_1395 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1397 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1397 + _1395 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1397) + _1395 + 64] = mem[floor32(_1397) + _1395 + -(_1397 % 32) + 96 len _1397 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1397) + _1395 + -mem[64] + 96]
                                            else:
                                                _1359 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1359] = return_data.size
                                                mem[_1359 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1398 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1398 + s + 64] = mem[_1359 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1398 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1398 + 64] = mem[floor32(return_data.size) + _1398 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1398 + -mem[64] + 96]
                                else:
                                    _677 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_677] = return_data.size
                                    mem[_677 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _685 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = return_data.size
                                    s = 0
                                    while s < return_data.size:
                                        mem[_685 + s + 64] = mem[_677 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not return_data.size % 32:
                                        emit 0xa537880c: mem[mem[64] len return_data.size + _685 + -mem[64] + 64]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1360 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1362 = mem[96]
                                                s = 0
                                                while s < _1362:
                                                    mem[_1360 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1362 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1362 + _1360 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1362) + _1360 + 64] = mem[floor32(_1362) + _1360 + -(_1362 % 32) + 96 len _1362 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1362) + _1360 + -mem[64] + 96]
                                            else:
                                                _1348 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1348] = return_data.size
                                                mem[_1348 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1363 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1363 + s + 64] = mem[_1348 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1363 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1363 + 64] = mem[floor32(return_data.size) + _1363 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1363 + -mem[64] + 96]
                                    else:
                                        mem[floor32(return_data.size) + _685 + 64] = mem[floor32(return_data.size) + _685 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _685 + -mem[64] + 96]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1401 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1403 = mem[96]
                                                s = 0
                                                while s < _1403:
                                                    mem[_1401 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1403 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1403 + _1401 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1403) + _1401 + 64] = mem[floor32(_1403) + _1401 + -(_1403 % 32) + 96 len _1403 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1403) + _1401 + -mem[64] + 96]
                                            else:
                                                _1366 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1366] = return_data.size
                                                mem[_1366 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1404 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1404 + s + 64] = mem[_1366 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1404 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1404 + 64] = mem[floor32(return_data.size) + _1404 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1404 + -mem[64] + 96]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10 * 10^18:
        revert with 0, 'INCORRECT INPUT'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.number > poolInfo[idx].field_512:
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, 0 / totalAllocPoint / 10
                        if ext_call.success:
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if ext_call.success:
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                if not return_data.size:
                                    _715 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = mem[96]
                                    _717 = mem[96]
                                    s = 0
                                    while s < _717:
                                        mem[_715 + s + 64] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    if not _717 % 32:
                                        emit 0xa537880c: mem[mem[64] len _717 + _715 + -mem[64] + 64]
                                    else:
                                        mem[floor32(_717) + _715 + 64] = mem[floor32(_717) + _715 + -(_717 % 32) + 96 len _717 % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(_717) + _715 + -mem[64] + 96]
                                else:
                                    _706 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_706] = return_data.size
                                    mem[_706 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _718 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = return_data.size
                                    s = 0
                                    while s < return_data.size:
                                        mem[_718 + s + 64] = mem[_706 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not return_data.size % 32:
                                        emit 0xa537880c: mem[mem[64] len return_data.size + _718 + -mem[64] + 64]
                                    else:
                                        mem[floor32(return_data.size) + _718 + 64] = mem[floor32(return_data.size) + _718 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _718 + -mem[64] + 96]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        else:
                            if not return_data.size:
                                _666 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[96]
                                _668 = mem[96]
                                s = 0
                                while s < _668:
                                    mem[_666 + s + 64] = mem[s + 128]
                                    s = s + 32
                                    continue 
                                if not _668 % 32:
                                    emit 0xa537880c: mem[mem[64] len _668 + _666 + -mem[64] + 64]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                    if not ext_call.success:
                                        if not return_data.size:
                                            _1389 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = mem[96]
                                            _1391 = mem[96]
                                            s = 0
                                            while s < _1391:
                                                mem[_1389 + s + 64] = mem[s + 128]
                                                s = s + 32
                                                continue 
                                            if not _1391 % 32:
                                                emit 0xa537880c: mem[mem[64] len _1391 + _1389 + -mem[64] + 64]
                                            else:
                                                mem[floor32(_1391) + _1389 + 64] = mem[floor32(_1391) + _1389 + -(_1391 % 32) + 96 len _1391 % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(_1391) + _1389 + -mem[64] + 96]
                                        else:
                                            _1359 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1359] = return_data.size
                                            mem[_1359 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _1392 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = return_data.size
                                            s = 0
                                            while s < return_data.size:
                                                mem[_1392 + s + 64] = mem[_1359 + s + 32]
                                                s = s + 32
                                                continue 
                                            if not return_data.size % 32:
                                                emit 0xa537880c: mem[mem[64] len return_data.size + _1392 + -mem[64] + 64]
                                            else:
                                                mem[floor32(return_data.size) + _1392 + 64] = mem[floor32(return_data.size) + _1392 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1392 + -mem[64] + 96]
                                else:
                                    mem[floor32(_668) + _666 + 64] = mem[floor32(_668) + _666 + -(_668 % 32) + 96 len _668 % 32]
                                    emit 0xa537880c: mem[mem[64] len floor32(_668) + _666 + -mem[64] + 96]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                    if not ext_call.success:
                                        if not return_data.size:
                                            _1435 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = mem[96]
                                            _1437 = mem[96]
                                            s = 0
                                            while s < _1437:
                                                mem[_1435 + s + 64] = mem[s + 128]
                                                s = s + 32
                                                continue 
                                            if not _1437 % 32:
                                                emit 0xa537880c: mem[mem[64] len _1437 + _1435 + -mem[64] + 64]
                                            else:
                                                mem[floor32(_1437) + _1435 + 64] = mem[floor32(_1437) + _1435 + -(_1437 % 32) + 96 len _1437 % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(_1437) + _1435 + -mem[64] + 96]
                                        else:
                                            _1395 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1395] = return_data.size
                                            mem[_1395 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _1438 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = return_data.size
                                            s = 0
                                            while s < return_data.size:
                                                mem[_1438 + s + 64] = mem[_1395 + s + 32]
                                                s = s + 32
                                                continue 
                                            if not return_data.size % 32:
                                                emit 0xa537880c: mem[mem[64] len return_data.size + _1438 + -mem[64] + 64]
                                            else:
                                                mem[floor32(return_data.size) + _1438 + 64] = mem[floor32(return_data.size) + _1438 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1438 + -mem[64] + 96]
                            else:
                                _665 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_665] = return_data.size
                                mem[_665 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                _669 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = return_data.size
                                s = 0
                                while s < return_data.size:
                                    mem[_669 + s + 64] = mem[_665 + s + 32]
                                    s = s + 32
                                    continue 
                                if not return_data.size % 32:
                                    emit 0xa537880c: mem[mem[64] len return_data.size + _669 + -mem[64] + 64]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                    if not ext_call.success:
                                        if not return_data.size:
                                            _1396 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = mem[96]
                                            _1398 = mem[96]
                                            s = 0
                                            while s < _1398:
                                                mem[_1396 + s + 64] = mem[s + 128]
                                                s = s + 32
                                                continue 
                                            if not _1398 % 32:
                                                emit 0xa537880c: mem[mem[64] len _1398 + _1396 + -mem[64] + 64]
                                            else:
                                                mem[floor32(_1398) + _1396 + 64] = mem[floor32(_1398) + _1396 + -(_1398 % 32) + 96 len _1398 % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(_1398) + _1396 + -mem[64] + 96]
                                        else:
                                            _1360 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1360] = return_data.size
                                            mem[_1360 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _1399 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = return_data.size
                                            s = 0
                                            while s < return_data.size:
                                                mem[_1399 + s + 64] = mem[_1360 + s + 32]
                                                s = s + 32
                                                continue 
                                            if not return_data.size % 32:
                                                emit 0xa537880c: mem[mem[64] len return_data.size + _1399 + -mem[64] + 64]
                                            else:
                                                mem[floor32(return_data.size) + _1399 + 64] = mem[floor32(return_data.size) + _1399 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1399 + -mem[64] + 96]
                                else:
                                    mem[floor32(return_data.size) + _669 + 64] = mem[floor32(return_data.size) + _669 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _669 + -mem[64] + 96]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), 0
                                    if not ext_call.success:
                                        if not return_data.size:
                                            _1441 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = mem[96]
                                            _1443 = mem[96]
                                            s = 0
                                            while s < _1443:
                                                mem[_1441 + s + 64] = mem[s + 128]
                                                s = s + 32
                                                continue 
                                            if not _1443 % 32:
                                                emit 0xa537880c: mem[mem[64] len _1443 + _1441 + -mem[64] + 64]
                                            else:
                                                mem[floor32(_1443) + _1441 + 64] = mem[floor32(_1443) + _1441 + -(_1443 % 32) + 96 len _1443 % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(_1443) + _1441 + -mem[64] + 96]
                                        else:
                                            _1402 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1402] = return_data.size
                                            mem[_1402 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _1444 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = return_data.size
                                            s = 0
                                            while s < return_data.size:
                                                mem[_1444 + s + 64] = mem[_1402 + s + 32]
                                                s = s + 32
                                                continue 
                                            if not return_data.size % 32:
                                                emit 0xa537880c: mem[mem[64] len return_data.size + _1444 + -mem[64] + 64]
                                            else:
                                                mem[floor32(return_data.size) + _1444 + 64] = mem[floor32(return_data.size) + _1444 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1444 + -mem[64] + 96]
                            if poolInfo[idx].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                    else:
                        require block.number - poolInfo[idx].field_512
                        if (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) / block.number - poolInfo[idx].field_512 != tokenPerBlock:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, 0 / totalAllocPoint / 10
                            if ext_call.success:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if ext_call.success:
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    if not return_data.size:
                                        _738 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = mem[96]
                                        _740 = mem[96]
                                        s = 0
                                        while s < _740:
                                            mem[_738 + s + 64] = mem[s + 128]
                                            s = s + 32
                                            continue 
                                        if not _740 % 32:
                                            emit 0xa537880c: mem[mem[64] len _740 + _738 + -mem[64] + 64]
                                        else:
                                            mem[floor32(_740) + _738 + 64] = mem[floor32(_740) + _738 + -(_740 % 32) + 96 len _740 % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(_740) + _738 + -mem[64] + 96]
                                    else:
                                        _729 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_729] = return_data.size
                                        mem[_729 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _741 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = return_data.size
                                        s = 0
                                        while s < return_data.size:
                                            mem[_741 + s + 64] = mem[_729 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not return_data.size % 32:
                                            emit 0xa537880c: mem[mem[64] len return_data.size + _741 + -mem[64] + 64]
                                        else:
                                            mem[floor32(return_data.size) + _741 + 64] = mem[floor32(return_data.size) + _741 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _741 + -mem[64] + 96]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                if not return_data.size:
                                    _675 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = mem[96]
                                    _677 = mem[96]
                                    s = 0
                                    while s < _677:
                                        mem[_675 + s + 64] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    if not _677 % 32:
                                        emit 0xa537880c: mem[mem[64] len _677 + _675 + -mem[64] + 64]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1375 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1377 = mem[96]
                                                s = 0
                                                while s < _1377:
                                                    mem[_1375 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1377 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1377 + _1375 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1377) + _1375 + 64] = mem[floor32(_1377) + _1375 + -(_1377 % 32) + 96 len _1377 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1377) + _1375 + -mem[64] + 96]
                                            else:
                                                _1357 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1357] = return_data.size
                                                mem[_1357 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1378 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1378 + s + 64] = mem[_1357 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1378 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1378 + 64] = mem[floor32(return_data.size) + _1378 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1378 + -mem[64] + 96]
                                    else:
                                        mem[floor32(_677) + _675 + 64] = mem[floor32(_677) + _675 + -(_677 % 32) + 96 len _677 % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(_677) + _675 + -mem[64] + 96]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1419 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1421 = mem[96]
                                                s = 0
                                                while s < _1421:
                                                    mem[_1419 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1421 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1421 + _1419 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1421) + _1419 + 64] = mem[floor32(_1421) + _1419 + -(_1421 % 32) + 96 len _1421 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1421) + _1419 + -mem[64] + 96]
                                            else:
                                                _1381 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1381] = return_data.size
                                                mem[_1381 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1422 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1422 + s + 64] = mem[_1381 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1422 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1422 + 64] = mem[floor32(return_data.size) + _1422 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1422 + -mem[64] + 96]
                                else:
                                    _674 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_674] = return_data.size
                                    mem[_674 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _678 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = return_data.size
                                    s = 0
                                    while s < return_data.size:
                                        mem[_678 + s + 64] = mem[_674 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not return_data.size % 32:
                                        emit 0xa537880c: mem[mem[64] len return_data.size + _678 + -mem[64] + 64]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1382 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1384 = mem[96]
                                                s = 0
                                                while s < _1384:
                                                    mem[_1382 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1384 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1384 + _1382 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1384) + _1382 + 64] = mem[floor32(_1384) + _1382 + -(_1384 % 32) + 96 len _1384 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1384) + _1382 + -mem[64] + 96]
                                            else:
                                                _1358 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1358] = return_data.size
                                                mem[_1358 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1385 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1385 + s + 64] = mem[_1358 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1385 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1385 + 64] = mem[floor32(return_data.size) + _1385 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1385 + -mem[64] + 96]
                                    else:
                                        mem[floor32(return_data.size) + _678 + 64] = mem[floor32(return_data.size) + _678 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _678 + -mem[64] + 96]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1425 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1427 = mem[96]
                                                s = 0
                                                while s < _1427:
                                                    mem[_1425 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1427 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1427 + _1425 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1427) + _1425 + 64] = mem[floor32(_1427) + _1425 + -(_1427 % 32) + 96 len _1427 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1427) + _1425 + -mem[64] + 96]
                                            else:
                                                _1388 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1388] = return_data.size
                                                mem[_1388 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1428 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1428 + s + 64] = mem[_1388 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1428 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1428 + 64] = mem[floor32(return_data.size) + _1428 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1428 + -mem[64] + 96]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        else:
                            require (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock)
                            if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[mem[64] + 36] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            if ext_call.success:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if ext_call.success:
                                    if not (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        require (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^18 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (10^18 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    if not return_data.size:
                                        _763 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = mem[96]
                                        _765 = mem[96]
                                        s = 0
                                        while s < _765:
                                            mem[_763 + s + 64] = mem[s + 128]
                                            s = s + 32
                                            continue 
                                        if not _765 % 32:
                                            emit 0xa537880c: mem[mem[64] len _765 + _763 + -mem[64] + 64]
                                        else:
                                            mem[floor32(_765) + _763 + 64] = mem[floor32(_765) + _763 + -(_765 % 32) + 96 len _765 % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(_765) + _763 + -mem[64] + 96]
                                    else:
                                        _752 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_752] = return_data.size
                                        mem[_752 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _766 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = return_data.size
                                        s = 0
                                        while s < return_data.size:
                                            mem[_766 + s + 64] = mem[_752 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not return_data.size % 32:
                                            emit 0xa537880c: mem[mem[64] len return_data.size + _766 + -mem[64] + 64]
                                        else:
                                            mem[floor32(return_data.size) + _766 + 64] = mem[floor32(return_data.size) + _766 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _766 + -mem[64] + 96]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                if not return_data.size:
                                    _690 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = mem[96]
                                    _692 = mem[96]
                                    s = 0
                                    while s < _692:
                                        mem[_690 + s + 64] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    if not _692 % 32:
                                        emit 0xa537880c: mem[mem[64] len _692 + _690 + -mem[64] + 64]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1361 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1363 = mem[96]
                                                s = 0
                                                while s < _1363:
                                                    mem[_1361 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1363 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1363 + _1361 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1363) + _1361 + 64] = mem[floor32(_1363) + _1361 + -(_1363 % 32) + 96 len _1363 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1363) + _1361 + -mem[64] + 96]
                                            else:
                                                _1355 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1355] = return_data.size
                                                mem[_1355 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1364 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1364 + s + 64] = mem[_1355 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1364 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1364 + 64] = mem[floor32(return_data.size) + _1364 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1364 + -mem[64] + 96]
                                    else:
                                        mem[floor32(_692) + _690 + 64] = mem[floor32(_692) + _690 + -(_692 % 32) + 96 len _692 % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(_692) + _690 + -mem[64] + 96]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1403 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1405 = mem[96]
                                                s = 0
                                                while s < _1405:
                                                    mem[_1403 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1405 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1405 + _1403 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1405) + _1403 + 64] = mem[floor32(_1405) + _1403 + -(_1405 % 32) + 96 len _1405 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1405) + _1403 + -mem[64] + 96]
                                            else:
                                                _1367 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1367] = return_data.size
                                                mem[_1367 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1406 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1406 + s + 64] = mem[_1367 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1406 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1406 + 64] = mem[floor32(return_data.size) + _1406 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1406 + -mem[64] + 96]
                                else:
                                    _685 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_685] = return_data.size
                                    mem[_685 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _693 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = return_data.size
                                    s = 0
                                    while s < return_data.size:
                                        mem[_693 + s + 64] = mem[_685 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not return_data.size % 32:
                                        emit 0xa537880c: mem[mem[64] len return_data.size + _693 + -mem[64] + 64]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1368 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1370 = mem[96]
                                                s = 0
                                                while s < _1370:
                                                    mem[_1368 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1370 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1370 + _1368 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1370) + _1368 + 64] = mem[floor32(_1370) + _1368 + -(_1370 % 32) + 96 len _1370 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1370) + _1368 + -mem[64] + 96]
                                            else:
                                                _1356 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1356] = return_data.size
                                                mem[_1356 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1371 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1371 + s + 64] = mem[_1356 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1371 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1371 + 64] = mem[floor32(return_data.size) + _1371 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1371 + -mem[64] + 96]
                                    else:
                                        mem[floor32(return_data.size) + _693 + 64] = mem[floor32(return_data.size) + _693 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _693 + -mem[64] + 96]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1409 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1411 = mem[96]
                                                s = 0
                                                while s < _1411:
                                                    mem[_1409 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1411 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1411 + _1409 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1411) + _1409 + 64] = mem[floor32(_1411) + _1409 + -(_1411 % 32) + 96 len _1411 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1411) + _1409 + -mem[64] + 96]
                                            else:
                                                _1374 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1374] = return_data.size
                                                mem[_1374 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1412 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1412 + s + 64] = mem[_1374 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1412 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1412 + 64] = mem[floor32(return_data.size) + _1412 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1412 + -mem[64] + 96]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
    tokenPerBlock = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if block.number > poolInfo[idx].field_512:
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, 0 / totalAllocPoint / 10
                            if ext_call.success:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if ext_call.success:
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    if not return_data.size:
                                        _741 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = mem[96]
                                        _743 = mem[96]
                                        s = 0
                                        while s < _743:
                                            mem[_741 + s + 64] = mem[s + 128]
                                            s = s + 32
                                            continue 
                                        if not _743 % 32:
                                            emit 0xa537880c: mem[mem[64] len _743 + _741 + -mem[64] + 64]
                                        else:
                                            mem[floor32(_743) + _741 + 64] = mem[floor32(_743) + _741 + -(_743 % 32) + 96 len _743 % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(_743) + _741 + -mem[64] + 96]
                                    else:
                                        _732 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_732] = return_data.size
                                        mem[_732 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _744 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = return_data.size
                                        s = 0
                                        while s < return_data.size:
                                            mem[_744 + s + 64] = mem[_732 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not return_data.size % 32:
                                            emit 0xa537880c: mem[mem[64] len return_data.size + _744 + -mem[64] + 64]
                                        else:
                                            mem[floor32(return_data.size) + _744 + 64] = mem[floor32(return_data.size) + _744 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _744 + -mem[64] + 96]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                if not return_data.size:
                                    _692 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = mem[96]
                                    _694 = mem[96]
                                    s = 0
                                    while s < _694:
                                        mem[_692 + s + 64] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    if not _694 % 32:
                                        emit 0xa537880c: mem[mem[64] len _694 + _692 + -mem[64] + 64]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1415 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1417 = mem[96]
                                                s = 0
                                                while s < _1417:
                                                    mem[_1415 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1417 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1417 + _1415 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1417) + _1415 + 64] = mem[floor32(_1417) + _1415 + -(_1417 % 32) + 96 len _1417 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1417) + _1415 + -mem[64] + 96]
                                            else:
                                                _1385 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1385] = return_data.size
                                                mem[_1385 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1418 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1418 + s + 64] = mem[_1385 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1418 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1418 + 64] = mem[floor32(return_data.size) + _1418 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1418 + -mem[64] + 96]
                                    else:
                                        mem[floor32(_694) + _692 + 64] = mem[floor32(_694) + _692 + -(_694 % 32) + 96 len _694 % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(_694) + _692 + -mem[64] + 96]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1461 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1463 = mem[96]
                                                s = 0
                                                while s < _1463:
                                                    mem[_1461 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1463 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1463 + _1461 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1463) + _1461 + 64] = mem[floor32(_1463) + _1461 + -(_1463 % 32) + 96 len _1463 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1463) + _1461 + -mem[64] + 96]
                                            else:
                                                _1421 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1421] = return_data.size
                                                mem[_1421 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1464 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1464 + s + 64] = mem[_1421 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1464 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1464 + 64] = mem[floor32(return_data.size) + _1464 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1464 + -mem[64] + 96]
                                else:
                                    _691 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_691] = return_data.size
                                    mem[_691 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _695 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = return_data.size
                                    s = 0
                                    while s < return_data.size:
                                        mem[_695 + s + 64] = mem[_691 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not return_data.size % 32:
                                        emit 0xa537880c: mem[mem[64] len return_data.size + _695 + -mem[64] + 64]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1422 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1424 = mem[96]
                                                s = 0
                                                while s < _1424:
                                                    mem[_1422 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1424 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1424 + _1422 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1424) + _1422 + 64] = mem[floor32(_1424) + _1422 + -(_1424 % 32) + 96 len _1424 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1424) + _1422 + -mem[64] + 96]
                                            else:
                                                _1386 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1386] = return_data.size
                                                mem[_1386 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1425 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1425 + s + 64] = mem[_1386 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1425 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1425 + 64] = mem[floor32(return_data.size) + _1425 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1425 + -mem[64] + 96]
                                    else:
                                        mem[floor32(return_data.size) + _695 + 64] = mem[floor32(return_data.size) + _695 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _695 + -mem[64] + 96]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1467 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1469 = mem[96]
                                                s = 0
                                                while s < _1469:
                                                    mem[_1467 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1469 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1469 + _1467 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1469) + _1467 + 64] = mem[floor32(_1469) + _1467 + -(_1469 % 32) + 96 len _1469 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1469) + _1467 + -mem[64] + 96]
                                            else:
                                                _1428 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1428] = return_data.size
                                                mem[_1428 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1470 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1470 + s + 64] = mem[_1428 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1470 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1470 + 64] = mem[floor32(return_data.size) + _1470 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1470 + -mem[64] + 96]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        else:
                            require block.number - poolInfo[idx].field_512
                            if (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) / block.number - poolInfo[idx].field_512 != tokenPerBlock:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, 0 / totalAllocPoint / 10
                                if ext_call.success:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if ext_call.success:
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    else:
                                        if not return_data.size:
                                            _764 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = mem[96]
                                            _766 = mem[96]
                                            s = 0
                                            while s < _766:
                                                mem[_764 + s + 64] = mem[s + 128]
                                                s = s + 32
                                                continue 
                                            if not _766 % 32:
                                                emit 0xa537880c: mem[mem[64] len _766 + _764 + -mem[64] + 64]
                                            else:
                                                mem[floor32(_766) + _764 + 64] = mem[floor32(_766) + _764 + -(_766 % 32) + 96 len _766 % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(_766) + _764 + -mem[64] + 96]
                                        else:
                                            _755 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_755] = return_data.size
                                            mem[_755 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _767 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = return_data.size
                                            s = 0
                                            while s < return_data.size:
                                                mem[_767 + s + 64] = mem[_755 + s + 32]
                                                s = s + 32
                                                continue 
                                            if not return_data.size % 32:
                                                emit 0xa537880c: mem[mem[64] len return_data.size + _767 + -mem[64] + 64]
                                            else:
                                                mem[floor32(return_data.size) + _767 + 64] = mem[floor32(return_data.size) + _767 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _767 + -mem[64] + 96]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    if not return_data.size:
                                        _701 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = mem[96]
                                        _703 = mem[96]
                                        s = 0
                                        while s < _703:
                                            mem[_701 + s + 64] = mem[s + 128]
                                            s = s + 32
                                            continue 
                                        if not _703 % 32:
                                            emit 0xa537880c: mem[mem[64] len _703 + _701 + -mem[64] + 64]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1401 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1403 = mem[96]
                                                    s = 0
                                                    while s < _1403:
                                                        mem[_1401 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1403 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1403 + _1401 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1403) + _1401 + 64] = mem[floor32(_1403) + _1401 + -(_1403 % 32) + 96 len _1403 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1403) + _1401 + -mem[64] + 96]
                                                else:
                                                    _1383 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1383] = return_data.size
                                                    mem[_1383 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1404 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1404 + s + 64] = mem[_1383 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1404 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1404 + 64] = mem[floor32(return_data.size) + _1404 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1404 + -mem[64] + 96]
                                        else:
                                            mem[floor32(_703) + _701 + 64] = mem[floor32(_703) + _701 + -(_703 % 32) + 96 len _703 % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(_703) + _701 + -mem[64] + 96]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1445 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1447 = mem[96]
                                                    s = 0
                                                    while s < _1447:
                                                        mem[_1445 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1447 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1447 + _1445 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1447) + _1445 + 64] = mem[floor32(_1447) + _1445 + -(_1447 % 32) + 96 len _1447 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1447) + _1445 + -mem[64] + 96]
                                                else:
                                                    _1407 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1407] = return_data.size
                                                    mem[_1407 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1448 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1448 + s + 64] = mem[_1407 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1448 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1448 + 64] = mem[floor32(return_data.size) + _1448 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1448 + -mem[64] + 96]
                                    else:
                                        _700 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_700] = return_data.size
                                        mem[_700 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _704 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = return_data.size
                                        s = 0
                                        while s < return_data.size:
                                            mem[_704 + s + 64] = mem[_700 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not return_data.size % 32:
                                            emit 0xa537880c: mem[mem[64] len return_data.size + _704 + -mem[64] + 64]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1408 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1410 = mem[96]
                                                    s = 0
                                                    while s < _1410:
                                                        mem[_1408 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1410 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1410 + _1408 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1410) + _1408 + 64] = mem[floor32(_1410) + _1408 + -(_1410 % 32) + 96 len _1410 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1410) + _1408 + -mem[64] + 96]
                                                else:
                                                    _1384 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1384] = return_data.size
                                                    mem[_1384 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1411 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1411 + s + 64] = mem[_1384 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1411 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1411 + 64] = mem[floor32(return_data.size) + _1411 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1411 + -mem[64] + 96]
                                        else:
                                            mem[floor32(return_data.size) + _704 + 64] = mem[floor32(return_data.size) + _704 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _704 + -mem[64] + 96]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1451 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1453 = mem[96]
                                                    s = 0
                                                    while s < _1453:
                                                        mem[_1451 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1453 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1453 + _1451 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1453) + _1451 + 64] = mem[floor32(_1453) + _1451 + -(_1453 % 32) + 96 len _1453 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1453) + _1451 + -mem[64] + 96]
                                                else:
                                                    _1414 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1414] = return_data.size
                                                    mem[_1414 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1454 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1454 + s + 64] = mem[_1414 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1454 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1454 + 64] = mem[floor32(return_data.size) + _1454 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1454 + -mem[64] + 96]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock)
                                if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[mem[64] + 36] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if ext_call.success:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if ext_call.success:
                                        if not (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            require (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^18 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if poolInfo[idx].field_768 + (10^18 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                    else:
                                        if not return_data.size:
                                            _789 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = mem[96]
                                            _791 = mem[96]
                                            s = 0
                                            while s < _791:
                                                mem[_789 + s + 64] = mem[s + 128]
                                                s = s + 32
                                                continue 
                                            if not _791 % 32:
                                                emit 0xa537880c: mem[mem[64] len _791 + _789 + -mem[64] + 64]
                                            else:
                                                mem[floor32(_791) + _789 + 64] = mem[floor32(_791) + _789 + -(_791 % 32) + 96 len _791 % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(_791) + _789 + -mem[64] + 96]
                                        else:
                                            _778 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_778] = return_data.size
                                            mem[_778 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _792 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = return_data.size
                                            s = 0
                                            while s < return_data.size:
                                                mem[_792 + s + 64] = mem[_778 + s + 32]
                                                s = s + 32
                                                continue 
                                            if not return_data.size % 32:
                                                emit 0xa537880c: mem[mem[64] len return_data.size + _792 + -mem[64] + 64]
                                            else:
                                                mem[floor32(return_data.size) + _792 + 64] = mem[floor32(return_data.size) + _792 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _792 + -mem[64] + 96]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    if not return_data.size:
                                        _716 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = mem[96]
                                        _718 = mem[96]
                                        s = 0
                                        while s < _718:
                                            mem[_716 + s + 64] = mem[s + 128]
                                            s = s + 32
                                            continue 
                                        if not _718 % 32:
                                            emit 0xa537880c: mem[mem[64] len _718 + _716 + -mem[64] + 64]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1387 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1389 = mem[96]
                                                    s = 0
                                                    while s < _1389:
                                                        mem[_1387 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1389 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1389 + _1387 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1389) + _1387 + 64] = mem[floor32(_1389) + _1387 + -(_1389 % 32) + 96 len _1389 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1389) + _1387 + -mem[64] + 96]
                                                else:
                                                    _1381 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1381] = return_data.size
                                                    mem[_1381 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1390 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1390 + s + 64] = mem[_1381 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1390 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1390 + 64] = mem[floor32(return_data.size) + _1390 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1390 + -mem[64] + 96]
                                        else:
                                            mem[floor32(_718) + _716 + 64] = mem[floor32(_718) + _716 + -(_718 % 32) + 96 len _718 % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(_718) + _716 + -mem[64] + 96]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1429 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1431 = mem[96]
                                                    s = 0
                                                    while s < _1431:
                                                        mem[_1429 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1431 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1431 + _1429 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1431) + _1429 + 64] = mem[floor32(_1431) + _1429 + -(_1431 % 32) + 96 len _1431 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1431) + _1429 + -mem[64] + 96]
                                                else:
                                                    _1393 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1393] = return_data.size
                                                    mem[_1393 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1432 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1432 + s + 64] = mem[_1393 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1432 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1432 + 64] = mem[floor32(return_data.size) + _1432 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1432 + -mem[64] + 96]
                                    else:
                                        _711 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_711] = return_data.size
                                        mem[_711 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _719 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = return_data.size
                                        s = 0
                                        while s < return_data.size:
                                            mem[_719 + s + 64] = mem[_711 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not return_data.size % 32:
                                            emit 0xa537880c: mem[mem[64] len return_data.size + _719 + -mem[64] + 64]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1394 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1396 = mem[96]
                                                    s = 0
                                                    while s < _1396:
                                                        mem[_1394 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1396 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1396 + _1394 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1396) + _1394 + 64] = mem[floor32(_1396) + _1394 + -(_1396 % 32) + 96 len _1396 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1396) + _1394 + -mem[64] + 96]
                                                else:
                                                    _1382 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1382] = return_data.size
                                                    mem[_1382 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1397 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1397 + s + 64] = mem[_1382 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1397 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1397 + 64] = mem[floor32(return_data.size) + _1397 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1397 + -mem[64] + 96]
                                        else:
                                            mem[floor32(return_data.size) + _719 + 64] = mem[floor32(return_data.size) + _719 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _719 + -mem[64] + 96]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1435 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1437 = mem[96]
                                                    s = 0
                                                    while s < _1437:
                                                        mem[_1435 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1437 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1437 + _1435 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1437) + _1435 + 64] = mem[floor32(_1437) + _1435 + -(_1437 % 32) + 96 len _1437 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1437) + _1435 + -mem[64] + 96]
                                                else:
                                                    _1400 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1400] = return_data.size
                                                    mem[_1400 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1438 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1438 + s + 64] = mem[_1400 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1438 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1438 + 64] = mem[floor32(return_data.size) + _1438 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1438 + -mem[64] + 96]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
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
    poolInfo[arg1].field_1024 = arg3
    emit setPool(poolInfo[arg1].field_0, arg2, arg3, arg1);
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 8
    if stor8[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if block.number > poolInfo[idx].field_512:
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, 0 / totalAllocPoint / 10
                            if ext_call.success:
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if ext_call.success:
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    if not return_data.size:
                                        _796 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = mem[96]
                                        _798 = mem[96]
                                        s = 0
                                        while s < _798:
                                            mem[_796 + s + 64] = mem[s + 128]
                                            s = s + 32
                                            continue 
                                        if not _798 % 32:
                                            emit 0xa537880c: mem[mem[64] len _798 + _796 + -mem[64] + 64]
                                        else:
                                            mem[floor32(_798) + _796 + 64] = mem[floor32(_798) + _796 + -(_798 % 32) + 96 len _798 % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(_798) + _796 + -mem[64] + 96]
                                    else:
                                        _787 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_787] = return_data.size
                                        mem[_787 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _799 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = return_data.size
                                        s = 0
                                        while s < return_data.size:
                                            mem[_799 + s + 64] = mem[_787 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not return_data.size % 32:
                                            emit 0xa537880c: mem[mem[64] len return_data.size + _799 + -mem[64] + 64]
                                        else:
                                            mem[floor32(return_data.size) + _799 + 64] = mem[floor32(return_data.size) + _799 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _799 + -mem[64] + 96]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                if not return_data.size:
                                    _747 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = mem[96]
                                    _749 = mem[96]
                                    s = 0
                                    while s < _749:
                                        mem[_747 + s + 64] = mem[s + 128]
                                        s = s + 32
                                        continue 
                                    if not _749 % 32:
                                        emit 0xa537880c: mem[mem[64] len _749 + _747 + -mem[64] + 64]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1470 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1472 = mem[96]
                                                s = 0
                                                while s < _1472:
                                                    mem[_1470 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1472 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1472 + _1470 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1472) + _1470 + 64] = mem[floor32(_1472) + _1470 + -(_1472 % 32) + 96 len _1472 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1472) + _1470 + -mem[64] + 96]
                                            else:
                                                _1440 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1440] = return_data.size
                                                mem[_1440 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1473 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1473 + s + 64] = mem[_1440 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1473 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1473 + 64] = mem[floor32(return_data.size) + _1473 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1473 + -mem[64] + 96]
                                    else:
                                        mem[floor32(_749) + _747 + 64] = mem[floor32(_749) + _747 + -(_749 % 32) + 96 len _749 % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(_749) + _747 + -mem[64] + 96]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1516 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1518 = mem[96]
                                                s = 0
                                                while s < _1518:
                                                    mem[_1516 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1518 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1518 + _1516 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1518) + _1516 + 64] = mem[floor32(_1518) + _1516 + -(_1518 % 32) + 96 len _1518 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1518) + _1516 + -mem[64] + 96]
                                            else:
                                                _1476 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1476] = return_data.size
                                                mem[_1476 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1519 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1519 + s + 64] = mem[_1476 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1519 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1519 + 64] = mem[floor32(return_data.size) + _1519 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1519 + -mem[64] + 96]
                                else:
                                    _746 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_746] = return_data.size
                                    mem[_746 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    _750 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = return_data.size
                                    s = 0
                                    while s < return_data.size:
                                        mem[_750 + s + 64] = mem[_746 + s + 32]
                                        s = s + 32
                                        continue 
                                    if not return_data.size % 32:
                                        emit 0xa537880c: mem[mem[64] len return_data.size + _750 + -mem[64] + 64]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1477 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1479 = mem[96]
                                                s = 0
                                                while s < _1479:
                                                    mem[_1477 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1479 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1479 + _1477 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1479) + _1477 + 64] = mem[floor32(_1479) + _1477 + -(_1479 % 32) + 96 len _1479 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1479) + _1477 + -mem[64] + 96]
                                            else:
                                                _1441 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1441] = return_data.size
                                                mem[_1441 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1480 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1480 + s + 64] = mem[_1441 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1480 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1480 + 64] = mem[floor32(return_data.size) + _1480 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1480 + -mem[64] + 96]
                                    else:
                                        mem[floor32(return_data.size) + _750 + 64] = mem[floor32(return_data.size) + _750 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _750 + -mem[64] + 96]
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(this.address), 0
                                        if not ext_call.success:
                                            if not return_data.size:
                                                _1522 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = mem[96]
                                                _1524 = mem[96]
                                                s = 0
                                                while s < _1524:
                                                    mem[_1522 + s + 64] = mem[s + 128]
                                                    s = s + 32
                                                    continue 
                                                if not _1524 % 32:
                                                    emit 0xa537880c: mem[mem[64] len _1524 + _1522 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(_1524) + _1522 + 64] = mem[floor32(_1524) + _1522 + -(_1524 % 32) + 96 len _1524 % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(_1524) + _1522 + -mem[64] + 96]
                                            else:
                                                _1483 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1483] = return_data.size
                                                mem[_1483 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                _1525 = mem[64]
                                                mem[mem[64]] = 32
                                                mem[mem[64] + 32] = return_data.size
                                                s = 0
                                                while s < return_data.size:
                                                    mem[_1525 + s + 64] = mem[_1483 + s + 32]
                                                    s = s + 32
                                                    continue 
                                                if not return_data.size % 32:
                                                    emit 0xa537880c: mem[mem[64] len return_data.size + _1525 + -mem[64] + 64]
                                                else:
                                                    mem[floor32(return_data.size) + _1525 + 64] = mem[floor32(return_data.size) + _1525 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                    emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1525 + -mem[64] + 96]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        else:
                            require block.number - poolInfo[idx].field_512
                            if (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) / block.number - poolInfo[idx].field_512 != tokenPerBlock:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, 0 / totalAllocPoint / 10
                                if ext_call.success:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if ext_call.success:
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    else:
                                        if not return_data.size:
                                            _819 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = mem[96]
                                            _821 = mem[96]
                                            s = 0
                                            while s < _821:
                                                mem[_819 + s + 64] = mem[s + 128]
                                                s = s + 32
                                                continue 
                                            if not _821 % 32:
                                                emit 0xa537880c: mem[mem[64] len _821 + _819 + -mem[64] + 64]
                                            else:
                                                mem[floor32(_821) + _819 + 64] = mem[floor32(_821) + _819 + -(_821 % 32) + 96 len _821 % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(_821) + _819 + -mem[64] + 96]
                                        else:
                                            _810 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_810] = return_data.size
                                            mem[_810 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _822 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = return_data.size
                                            s = 0
                                            while s < return_data.size:
                                                mem[_822 + s + 64] = mem[_810 + s + 32]
                                                s = s + 32
                                                continue 
                                            if not return_data.size % 32:
                                                emit 0xa537880c: mem[mem[64] len return_data.size + _822 + -mem[64] + 64]
                                            else:
                                                mem[floor32(return_data.size) + _822 + 64] = mem[floor32(return_data.size) + _822 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _822 + -mem[64] + 96]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    if not return_data.size:
                                        _756 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = mem[96]
                                        _758 = mem[96]
                                        s = 0
                                        while s < _758:
                                            mem[_756 + s + 64] = mem[s + 128]
                                            s = s + 32
                                            continue 
                                        if not _758 % 32:
                                            emit 0xa537880c: mem[mem[64] len _758 + _756 + -mem[64] + 64]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1456 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1458 = mem[96]
                                                    s = 0
                                                    while s < _1458:
                                                        mem[_1456 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1458 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1458 + _1456 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1458) + _1456 + 64] = mem[floor32(_1458) + _1456 + -(_1458 % 32) + 96 len _1458 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1458) + _1456 + -mem[64] + 96]
                                                else:
                                                    _1438 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1438] = return_data.size
                                                    mem[_1438 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1459 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1459 + s + 64] = mem[_1438 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1459 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1459 + 64] = mem[floor32(return_data.size) + _1459 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1459 + -mem[64] + 96]
                                        else:
                                            mem[floor32(_758) + _756 + 64] = mem[floor32(_758) + _756 + -(_758 % 32) + 96 len _758 % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(_758) + _756 + -mem[64] + 96]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1500 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1502 = mem[96]
                                                    s = 0
                                                    while s < _1502:
                                                        mem[_1500 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1502 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1502 + _1500 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1502) + _1500 + 64] = mem[floor32(_1502) + _1500 + -(_1502 % 32) + 96 len _1502 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1502) + _1500 + -mem[64] + 96]
                                                else:
                                                    _1462 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1462] = return_data.size
                                                    mem[_1462 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1503 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1503 + s + 64] = mem[_1462 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1503 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1503 + 64] = mem[floor32(return_data.size) + _1503 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1503 + -mem[64] + 96]
                                    else:
                                        _755 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_755] = return_data.size
                                        mem[_755 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _759 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = return_data.size
                                        s = 0
                                        while s < return_data.size:
                                            mem[_759 + s + 64] = mem[_755 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not return_data.size % 32:
                                            emit 0xa537880c: mem[mem[64] len return_data.size + _759 + -mem[64] + 64]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1463 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1465 = mem[96]
                                                    s = 0
                                                    while s < _1465:
                                                        mem[_1463 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1465 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1465 + _1463 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1465) + _1463 + 64] = mem[floor32(_1465) + _1463 + -(_1465 % 32) + 96 len _1465 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1465) + _1463 + -mem[64] + 96]
                                                else:
                                                    _1439 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1439] = return_data.size
                                                    mem[_1439 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1466 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1466 + s + 64] = mem[_1439 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1466 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1466 + 64] = mem[floor32(return_data.size) + _1466 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1466 + -mem[64] + 96]
                                        else:
                                            mem[floor32(return_data.size) + _759 + 64] = mem[floor32(return_data.size) + _759 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _759 + -mem[64] + 96]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1506 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1508 = mem[96]
                                                    s = 0
                                                    while s < _1508:
                                                        mem[_1506 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1508 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1508 + _1506 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1508) + _1506 + 64] = mem[floor32(_1508) + _1506 + -(_1508 % 32) + 96 len _1508 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1508) + _1506 + -mem[64] + 96]
                                                else:
                                                    _1469 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1469] = return_data.size
                                                    mem[_1469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1509 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1509 + s + 64] = mem[_1469 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1509 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1509 + 64] = mem[floor32(return_data.size) + _1509 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1509 + -mem[64] + 96]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock)
                                if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                mem[mem[64] + 36] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args 0x2096afdaa68eeae1ebf95dfdf565ee6d9b1fba37, (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if ext_call.success:
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if ext_call.success:
                                        if not (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            require (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^18 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[idx].field_1280
                                            if poolInfo[idx].field_768 + (10^18 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                    else:
                                        if not return_data.size:
                                            _844 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = mem[96]
                                            _846 = mem[96]
                                            s = 0
                                            while s < _846:
                                                mem[_844 + s + 64] = mem[s + 128]
                                                s = s + 32
                                                continue 
                                            if not _846 % 32:
                                                emit 0xa537880c: mem[mem[64] len _846 + _844 + -mem[64] + 64]
                                            else:
                                                mem[floor32(_846) + _844 + 64] = mem[floor32(_846) + _844 + -(_846 % 32) + 96 len _846 % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(_846) + _844 + -mem[64] + 96]
                                        else:
                                            _833 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_833] = return_data.size
                                            mem[_833 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            _847 = mem[64]
                                            mem[mem[64]] = 32
                                            mem[mem[64] + 32] = return_data.size
                                            s = 0
                                            while s < return_data.size:
                                                mem[_847 + s + 64] = mem[_833 + s + 32]
                                                s = s + 32
                                                continue 
                                            if not return_data.size % 32:
                                                emit 0xa537880c: mem[mem[64] len return_data.size + _847 + -mem[64] + 64]
                                            else:
                                                mem[floor32(return_data.size) + _847 + 64] = mem[floor32(return_data.size) + _847 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _847 + -mem[64] + 96]
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[idx].field_1280
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    if not return_data.size:
                                        _771 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = mem[96]
                                        _773 = mem[96]
                                        s = 0
                                        while s < _773:
                                            mem[_771 + s + 64] = mem[s + 128]
                                            s = s + 32
                                            continue 
                                        if not _773 % 32:
                                            emit 0xa537880c: mem[mem[64] len _773 + _771 + -mem[64] + 64]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1442 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1444 = mem[96]
                                                    s = 0
                                                    while s < _1444:
                                                        mem[_1442 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1444 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1444 + _1442 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1444) + _1442 + 64] = mem[floor32(_1444) + _1442 + -(_1444 % 32) + 96 len _1444 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1444) + _1442 + -mem[64] + 96]
                                                else:
                                                    _1436 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1436] = return_data.size
                                                    mem[_1436 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1445 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1445 + s + 64] = mem[_1436 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1445 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1445 + 64] = mem[floor32(return_data.size) + _1445 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1445 + -mem[64] + 96]
                                        else:
                                            mem[floor32(_773) + _771 + 64] = mem[floor32(_773) + _771 + -(_773 % 32) + 96 len _773 % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(_773) + _771 + -mem[64] + 96]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1484 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1486 = mem[96]
                                                    s = 0
                                                    while s < _1486:
                                                        mem[_1484 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1486 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1486 + _1484 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1486) + _1484 + 64] = mem[floor32(_1486) + _1484 + -(_1486 % 32) + 96 len _1486 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1486) + _1484 + -mem[64] + 96]
                                                else:
                                                    _1448 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1448] = return_data.size
                                                    mem[_1448 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1487 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1487 + s + 64] = mem[_1448 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1487 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1487 + 64] = mem[floor32(return_data.size) + _1487 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1487 + -mem[64] + 96]
                                    else:
                                        _766 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_766] = return_data.size
                                        mem[_766 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        _774 = mem[64]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = return_data.size
                                        s = 0
                                        while s < return_data.size:
                                            mem[_774 + s + 64] = mem[_766 + s + 32]
                                            s = s + 32
                                            continue 
                                        if not return_data.size % 32:
                                            emit 0xa537880c: mem[mem[64] len return_data.size + _774 + -mem[64] + 64]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1449 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1451 = mem[96]
                                                    s = 0
                                                    while s < _1451:
                                                        mem[_1449 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1451 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1451 + _1449 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1451) + _1449 + 64] = mem[floor32(_1451) + _1449 + -(_1451 % 32) + 96 len _1451 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1451) + _1449 + -mem[64] + 96]
                                                else:
                                                    _1437 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1437] = return_data.size
                                                    mem[_1437 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1452 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1452 + s + 64] = mem[_1437 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1452 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1452 + 64] = mem[floor32(return_data.size) + _1452 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1452 + -mem[64] + 96]
                                        else:
                                            mem[floor32(return_data.size) + _774 + 64] = mem[floor32(return_data.size) + _774 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                            emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _774 + -mem[64] + 96]
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(this.address), 0
                                            if not ext_call.success:
                                                if not return_data.size:
                                                    _1490 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = mem[96]
                                                    _1492 = mem[96]
                                                    s = 0
                                                    while s < _1492:
                                                        mem[_1490 + s + 64] = mem[s + 128]
                                                        s = s + 32
                                                        continue 
                                                    if not _1492 % 32:
                                                        emit 0xa537880c: mem[mem[64] len _1492 + _1490 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(_1492) + _1490 + 64] = mem[floor32(_1492) + _1490 + -(_1492 % 32) + 96 len _1492 % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(_1492) + _1490 + -mem[64] + 96]
                                                else:
                                                    _1455 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_1455] = return_data.size
                                                    mem[_1455 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    _1493 = mem[64]
                                                    mem[mem[64]] = 32
                                                    mem[mem[64] + 32] = return_data.size
                                                    s = 0
                                                    while s < return_data.size:
                                                        mem[_1493 + s + 64] = mem[_1455 + s + 32]
                                                        s = s + 32
                                                        continue 
                                                    if not return_data.size % 32:
                                                        emit 0xa537880c: mem[mem[64] len return_data.size + _1493 + -mem[64] + 64]
                                                    else:
                                                        mem[floor32(return_data.size) + _1493 + 64] = mem[floor32(return_data.size) + _1493 + -(return_data.size % 32) + 96 len return_data.size % 32]
                                                        emit 0xa537880c: mem[mem[64] len floor32(return_data.size) + _1493 + -mem[64] + 96]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor8[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
    poolInfo[poolInfo.length].field_1280 = 0
    emit addPool(address(arg2), arg1, arg3, poolInfo.length - 1);
}



}
