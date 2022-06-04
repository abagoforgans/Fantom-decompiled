contract main {




// =====================  Runtime code  =====================


#
#  - invest(address arg1, uint8 arg2)
#
const getContractBalance = eth.balance(this.address)

const PERCENTS_DIVIDER = 1000

const MAX_CASHBACK = 80

const TIME_STEP = (24 * 3600)

const DEV_FEE = 60

const PERCENT_STEP = 3

const MIN_AMOUNT = 10 * 10^18

const PENALTY_STEP = 500

const CONTRACT_FEE = 60


address owner;
array of uint256 rEFERRAL_PERCENTS;
uint256 totalStaked;
uint256 totalCashback;
uint256 totalRefBonus;
array of struct stor5;
array of uint256 baseCashback;
mapping of struct userCashbackBonus;
uint256 startUNIX;
address devAddress;
address proAddress;

function getUserCashbackBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userCashbackBonus[address(arg1)].field_1280
}

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userCashbackBonus[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 7)
        if userCashbackBonus[address(arg1)].field_256 < userCashbackBonus[address(arg1)][idx].field_1536:
            require idx < userCashbackBonus[address(arg1)].field_0
            require idx < userCashbackBonus[address(arg1)].field_0
            if userCashbackBonus[address(arg1)][idx].field_0 >= 4:
                mem[0] = sha3(address(arg1), 7)
                if block.timestamp > userCashbackBonus[address(arg1)][idx].field_1536:
                    require idx < userCashbackBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if userCashbackBonus[address(arg1)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userCashbackBonus[address(arg1)][idx].field_512:
                    require idx < userCashbackBonus[address(arg1)].field_0
                    require idx < userCashbackBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if userCashbackBonus[address(arg1)][idx].field_1280 > userCashbackBonus[address(arg1)].field_256:
                        if userCashbackBonus[address(arg1)][idx].field_1536 >= block.timestamp:
                            if userCashbackBonus[address(arg1)][idx].field_1280 < block.timestamp:
                                if userCashbackBonus[address(arg1)][idx].field_1280 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userCashbackBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            if userCashbackBonus[address(arg1)][idx].field_1280 < userCashbackBonus[address(arg1)][idx].field_1536:
                                if userCashbackBonus[address(arg1)][idx].field_1280 > userCashbackBonus[address(arg1)][idx].field_1536:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userCashbackBonus[address(arg1)][idx].field_1536 >= block.timestamp:
                            if userCashbackBonus[address(arg1)].field_256 < block.timestamp:
                                if userCashbackBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userCashbackBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            if userCashbackBonus[address(arg1)].field_256 < userCashbackBonus[address(arg1)][idx].field_1536:
                                if userCashbackBonus[address(arg1)].field_256 > userCashbackBonus[address(arg1)][idx].field_1536:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userCashbackBonus[address(arg1)][idx].field_512
                    if userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / userCashbackBonus[address(arg1)][idx].field_512 != userCashbackBonus[address(arg1)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userCashbackBonus[address(arg1)].field_0
                    require idx < userCashbackBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if userCashbackBonus[address(arg1)][idx].field_1280 > userCashbackBonus[address(arg1)].field_256:
                        if userCashbackBonus[address(arg1)][idx].field_1536 >= block.timestamp:
                            if userCashbackBonus[address(arg1)][idx].field_1280 < block.timestamp:
                                if userCashbackBonus[address(arg1)][idx].field_1280 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000:
                                    require userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)][idx].field_1280 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000 != block.timestamp - userCashbackBonus[address(arg1)][idx].field_1280:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)][idx].field_1280 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userCashbackBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            if userCashbackBonus[address(arg1)][idx].field_1280 < userCashbackBonus[address(arg1)][idx].field_1536:
                                if userCashbackBonus[address(arg1)][idx].field_1280 > userCashbackBonus[address(arg1)][idx].field_1536:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000:
                                    require userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000
                                    if (userCashbackBonus[address(arg1)][idx].field_1536 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)][idx].field_1280 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000 != userCashbackBonus[address(arg1)][idx].field_1536 - userCashbackBonus[address(arg1)][idx].field_1280:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userCashbackBonus[address(arg1)][idx].field_1536 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)][idx].field_1280 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userCashbackBonus[address(arg1)][idx].field_1536 >= block.timestamp:
                            if userCashbackBonus[address(arg1)].field_256 < block.timestamp:
                                if userCashbackBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000:
                                    require userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)].field_256 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000 != block.timestamp - userCashbackBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)].field_256 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userCashbackBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            if userCashbackBonus[address(arg1)].field_256 < userCashbackBonus[address(arg1)][idx].field_1536:
                                if userCashbackBonus[address(arg1)].field_256 > userCashbackBonus[address(arg1)][idx].field_1536:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000:
                                    require userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000
                                    if (userCashbackBonus[address(arg1)][idx].field_1536 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)].field_256 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000 != userCashbackBonus[address(arg1)][idx].field_1536 - userCashbackBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userCashbackBonus[address(arg1)][idx].field_1536 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)].field_256 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userCashbackBonus[address(arg1)].field_1024 < userCashbackBonus[address(arg1)].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    return userCashbackBonus[address(arg1)].field_1024
}

function totalCashback() {
    return totalCashback
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    return userCashbackBonus[address(arg1)].field_512
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userCashbackBonus[address(arg1)].field_1536
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < rEFERRAL_PERCENTS.length
    return rEFERRAL_PERCENTS[arg1]
}

function totalRefBonus() {
    return totalRefBonus
}

function totalStaked() {
    return totalStaked
}

function owner() {
    return owner
}

function dev() {
    return devAddress
}

function getUserTotalCashback(address arg1) {
    require calldata.size - 4 >= 32
    return userCashbackBonus[address(arg1)].field_1792
}

function getUserAmountOfDeposits(address arg1) {
    require calldata.size - 4 >= 32
    return userCashbackBonus[address(arg1)].field_0
}

function getBaseCashback(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < baseCashback.length
    return baseCashback[arg1]
}

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < userCashbackBonus[address(arg1)].field_0
    return userCashbackBonus[address(arg1)][arg2].field_0, 
           userCashbackBonus[address(arg1)][arg2].field_256,
           userCashbackBonus[address(arg1)][arg2].field_512,
           userCashbackBonus[address(arg1)][arg2].field_768,
           userCashbackBonus[address(arg1)][arg2].field_1024,
           userCashbackBonus[address(arg1)][arg2].field_1280,
           userCashbackBonus[address(arg1)][arg2].field_1536
}

function startUNIX() {
    return startUNIX
}

function pro() {
    return proAddress
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    return userCashbackBonus[address(arg1)].field_256
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userCashbackBonus[address(arg1)].field_1024
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    if userCashbackBonus[address(arg1)].field_1024 > userCashbackBonus[address(arg1)].field_1536:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userCashbackBonus[address(arg1)].field_1536 - userCashbackBonus[address(arg1)].field_1024)
}

function transferOwnership(address arg1) {
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

function getPercent(uint8 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp <= startUNIX:
        require arg1 < stor5.length
        return stor5[2 * uint8(arg1)].field_256
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (3 * block.timestamp) - (3 * startUNIX) / 3 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < stor5.length
    if stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600) < stor5[2 * uint8(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600))
}

function getPlanInfo(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor5.length
    if block.timestamp <= startUNIX:
        if arg1 < stor5.length:
            if arg1 < baseCashback.length:
                return stor5[2 * uint8(arg1)].field_0, stor5[2 * uint8(arg1)].field_256, baseCashback[arg1]
    else:
        if startUNIX > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if (3 * block.timestamp) - (3 * startUNIX) / 3 != block.timestamp - startUNIX:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 < stor5.length:
            if stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600) < stor5[2 * uint8(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 < baseCashback.length:
                return stor5[2 * uint8(arg1)].field_0, 
                       stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600),
                       baseCashback[arg1]
    revert
}

function getUserTotalDeposits(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < userCashbackBonus[address(arg1)].field_0:
        require idx < userCashbackBonus[address(arg1)].field_0
        if s + userCashbackBonus[address(arg1)][idx].field_512 < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 7
        idx = idx + 1
        s = s + userCashbackBonus[address(arg1)][idx].field_512
        continue 
    return (s * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0 * userCashbackBonus[address(arg1)].field_0)
}

function forceWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < userCashbackBonus[address(msg.sender)].field_0
    if userCashbackBonus[address(msg.sender)][arg1].field_0 < 4:
        revert with 0, 'force withdraw not valid'
    require arg1 < userCashbackBonus[address(msg.sender)].field_0
    if userCashbackBonus[address(msg.sender)][arg1].field_0 >= 8:
        revert with 0, 'force withdraw not valid'
    require arg1 < userCashbackBonus[address(msg.sender)].field_0
    if userCashbackBonus[address(msg.sender)][arg1].field_1536 <= block.timestamp:
        revert with 0, 'you can not force withdraw'
    require arg1 < userCashbackBonus[address(msg.sender)].field_0
    if not userCashbackBonus[address(msg.sender)][arg1].field_512:
        if 0 > userCashbackBonus[address(msg.sender)][arg1].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        call msg.sender with:
           value userCashbackBonus[address(msg.sender)][arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require userCashbackBonus[address(msg.sender)].field_0 - 1 < userCashbackBonus[address(msg.sender)].field_0
        require arg1 < userCashbackBonus[address(msg.sender)].field_0
        userCashbackBonus[address(msg.sender)][arg1].field_0 = userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0
        userCashbackBonus[address(msg.sender)][arg1].field_256 = userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0
        userCashbackBonus[address(msg.sender)][arg1].field_512 = userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0
        userCashbackBonus[address(msg.sender)][arg1].field_768 = userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0
        userCashbackBonus[address(msg.sender)][arg1].field_1024 = userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0
        userCashbackBonus[address(msg.sender)][arg1].field_1280 = userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0
        userCashbackBonus[address(msg.sender)][arg1].field_1536 = userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0
        require userCashbackBonus[address(msg.sender)].field_0
        userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0 = 0
        userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0 = 0
        userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0 = 0
        userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0 = 0
        userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0 = 0
        userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0 = 0
        userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0 = 0
        userCashbackBonus[address(msg.sender)].field_0--
        emit ForceWithdrawn(userCashbackBonus[address(msg.sender)][arg1].field_512, 0, msg.sender);
    else:
        require userCashbackBonus[address(msg.sender)][arg1].field_512
        if 500 * userCashbackBonus[address(msg.sender)][arg1].field_512 / userCashbackBonus[address(msg.sender)][arg1].field_512 != 500:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 500 * userCashbackBonus[address(msg.sender)][arg1].field_512 / 1000 > userCashbackBonus[address(msg.sender)][arg1].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        call msg.sender with:
           value userCashbackBonus[address(msg.sender)][arg1].field_512 - (500 * userCashbackBonus[address(msg.sender)][arg1].field_512 / 1000) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require userCashbackBonus[address(msg.sender)].field_0 - 1 < userCashbackBonus[address(msg.sender)].field_0
        require arg1 < userCashbackBonus[address(msg.sender)].field_0
        userCashbackBonus[address(msg.sender)][arg1].field_0 = userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0
        userCashbackBonus[address(msg.sender)][arg1].field_256 = userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0
        userCashbackBonus[address(msg.sender)][arg1].field_512 = userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0
        userCashbackBonus[address(msg.sender)][arg1].field_768 = userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0
        userCashbackBonus[address(msg.sender)][arg1].field_1024 = userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0
        userCashbackBonus[address(msg.sender)][arg1].field_1280 = userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0
        userCashbackBonus[address(msg.sender)][arg1].field_1536 = userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0
        require userCashbackBonus[address(msg.sender)].field_0
        userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0 = 0
        userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0 = 0
        userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0 = 0
        userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0 = 0
        userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0 = 0
        userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0 = 0
        userCashbackBonus[address(msg.sender)][userCashbackBonus[address(msg.sender)].field_0].field_0 = 0
        userCashbackBonus[address(msg.sender)].field_0--
        emit ForceWithdrawn(userCashbackBonus[address(msg.sender)][arg1].field_512, 500 * userCashbackBonus[address(msg.sender)][arg1].field_512 / 1000, msg.sender);
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userCashbackBonus[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 7)
        if userCashbackBonus[address(arg1)].field_256 < userCashbackBonus[address(arg1)][idx].field_1536:
            require idx < userCashbackBonus[address(arg1)].field_0
            require idx < userCashbackBonus[address(arg1)].field_0
            if userCashbackBonus[address(arg1)][idx].field_0 >= 4:
                mem[0] = sha3(address(arg1), 7)
                if block.timestamp > userCashbackBonus[address(arg1)][idx].field_1536:
                    require idx < userCashbackBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if userCashbackBonus[address(arg1)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userCashbackBonus[address(arg1)][idx].field_512:
                    require idx < userCashbackBonus[address(arg1)].field_0
                    require idx < userCashbackBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if userCashbackBonus[address(arg1)][idx].field_1280 > userCashbackBonus[address(arg1)].field_256:
                        if userCashbackBonus[address(arg1)][idx].field_1536 >= block.timestamp:
                            if userCashbackBonus[address(arg1)][idx].field_1280 < block.timestamp:
                                if userCashbackBonus[address(arg1)][idx].field_1280 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userCashbackBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            if userCashbackBonus[address(arg1)][idx].field_1280 < userCashbackBonus[address(arg1)][idx].field_1536:
                                if userCashbackBonus[address(arg1)][idx].field_1280 > userCashbackBonus[address(arg1)][idx].field_1536:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userCashbackBonus[address(arg1)][idx].field_1536 >= block.timestamp:
                            if userCashbackBonus[address(arg1)].field_256 < block.timestamp:
                                if userCashbackBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userCashbackBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            if userCashbackBonus[address(arg1)].field_256 < userCashbackBonus[address(arg1)][idx].field_1536:
                                if userCashbackBonus[address(arg1)].field_256 > userCashbackBonus[address(arg1)][idx].field_1536:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userCashbackBonus[address(arg1)][idx].field_512
                    if userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / userCashbackBonus[address(arg1)][idx].field_512 != userCashbackBonus[address(arg1)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userCashbackBonus[address(arg1)].field_0
                    require idx < userCashbackBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if userCashbackBonus[address(arg1)][idx].field_1280 > userCashbackBonus[address(arg1)].field_256:
                        if userCashbackBonus[address(arg1)][idx].field_1536 >= block.timestamp:
                            if userCashbackBonus[address(arg1)][idx].field_1280 < block.timestamp:
                                if userCashbackBonus[address(arg1)][idx].field_1280 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000:
                                    require userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)][idx].field_1280 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000 != block.timestamp - userCashbackBonus[address(arg1)][idx].field_1280:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)][idx].field_1280 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userCashbackBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            if userCashbackBonus[address(arg1)][idx].field_1280 < userCashbackBonus[address(arg1)][idx].field_1536:
                                if userCashbackBonus[address(arg1)][idx].field_1280 > userCashbackBonus[address(arg1)][idx].field_1536:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000:
                                    require userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000
                                    if (userCashbackBonus[address(arg1)][idx].field_1536 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)][idx].field_1280 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000 != userCashbackBonus[address(arg1)][idx].field_1536 - userCashbackBonus[address(arg1)][idx].field_1280:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userCashbackBonus[address(arg1)][idx].field_1536 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)][idx].field_1280 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userCashbackBonus[address(arg1)][idx].field_1536 >= block.timestamp:
                            if userCashbackBonus[address(arg1)].field_256 < block.timestamp:
                                if userCashbackBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000:
                                    require userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000
                                    if (block.timestamp * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)].field_256 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000 != block.timestamp - userCashbackBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)].field_256 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userCashbackBonus[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            if userCashbackBonus[address(arg1)].field_256 < userCashbackBonus[address(arg1)][idx].field_1536:
                                if userCashbackBonus[address(arg1)].field_256 > userCashbackBonus[address(arg1)][idx].field_1536:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000:
                                    require userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000
                                    if (userCashbackBonus[address(arg1)][idx].field_1536 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)].field_256 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000 != userCashbackBonus[address(arg1)][idx].field_1536 - userCashbackBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userCashbackBonus[address(arg1)][idx].field_1536 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) - (userCashbackBonus[address(arg1)].field_256 * userCashbackBonus[address(arg1)][idx].field_512 * userCashbackBonus[address(arg1)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function withdraw() {
    idx = 0
    while idx < userCashbackBonus[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 7)
        if userCashbackBonus[address(msg.sender)].field_256 < userCashbackBonus[address(msg.sender)][idx].field_1536:
            require idx < userCashbackBonus[address(msg.sender)].field_0
            require idx < userCashbackBonus[address(msg.sender)].field_0
            if userCashbackBonus[address(msg.sender)][idx].field_0 >= 4:
                mem[0] = sha3(address(msg.sender), 7)
                if block.timestamp > userCashbackBonus[address(msg.sender)][idx].field_1536:
                    require idx < userCashbackBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 7)
                    if userCashbackBonus[address(msg.sender)][idx].field_768 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if not userCashbackBonus[address(msg.sender)][idx].field_512:
                    require idx < userCashbackBonus[address(msg.sender)].field_0
                    require idx < userCashbackBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 7)
                    if userCashbackBonus[address(msg.sender)][idx].field_1280 > userCashbackBonus[address(msg.sender)].field_256:
                        if userCashbackBonus[address(msg.sender)][idx].field_1536 >= block.timestamp:
                            if userCashbackBonus[address(msg.sender)][idx].field_1280 < block.timestamp:
                                if userCashbackBonus[address(msg.sender)][idx].field_1280 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userCashbackBonus[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 7)
                            if userCashbackBonus[address(msg.sender)][idx].field_1280 < userCashbackBonus[address(msg.sender)][idx].field_1536:
                                if userCashbackBonus[address(msg.sender)][idx].field_1280 > userCashbackBonus[address(msg.sender)][idx].field_1536:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if userCashbackBonus[address(msg.sender)][idx].field_1536 >= block.timestamp:
                            if userCashbackBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userCashbackBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require idx < userCashbackBonus[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 7)
                            if userCashbackBonus[address(msg.sender)].field_256 < userCashbackBonus[address(msg.sender)][idx].field_1536:
                                if userCashbackBonus[address(msg.sender)].field_256 > userCashbackBonus[address(msg.sender)][idx].field_1536:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userCashbackBonus[address(msg.sender)][idx].field_512
                    if userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / userCashbackBonus[address(msg.sender)][idx].field_512 != userCashbackBonus[address(msg.sender)][idx].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userCashbackBonus[address(msg.sender)].field_0
                    require idx < userCashbackBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 7)
                    if userCashbackBonus[address(msg.sender)][idx].field_1280 > userCashbackBonus[address(msg.sender)].field_256:
                        if userCashbackBonus[address(msg.sender)][idx].field_1536 >= block.timestamp:
                            if userCashbackBonus[address(msg.sender)][idx].field_1280 < block.timestamp:
                                if userCashbackBonus[address(msg.sender)][idx].field_1280 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000:
                                    require userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000
                                    if (block.timestamp * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) - (userCashbackBonus[address(msg.sender)][idx].field_1280 * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) / userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000 != block.timestamp - userCashbackBonus[address(msg.sender)][idx].field_1280:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) - (userCashbackBonus[address(msg.sender)][idx].field_1280 * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userCashbackBonus[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 7)
                            if userCashbackBonus[address(msg.sender)][idx].field_1280 < userCashbackBonus[address(msg.sender)][idx].field_1536:
                                if userCashbackBonus[address(msg.sender)][idx].field_1280 > userCashbackBonus[address(msg.sender)][idx].field_1536:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000:
                                    require userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000
                                    if (userCashbackBonus[address(msg.sender)][idx].field_1536 * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) - (userCashbackBonus[address(msg.sender)][idx].field_1280 * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) / userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000 != userCashbackBonus[address(msg.sender)][idx].field_1536 - userCashbackBonus[address(msg.sender)][idx].field_1280:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userCashbackBonus[address(msg.sender)][idx].field_1536 * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) - (userCashbackBonus[address(msg.sender)][idx].field_1280 * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        if userCashbackBonus[address(msg.sender)][idx].field_1536 >= block.timestamp:
                            if userCashbackBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userCashbackBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000:
                                    require userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000
                                    if (block.timestamp * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) - (userCashbackBonus[address(msg.sender)].field_256 * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) / userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000 != block.timestamp - userCashbackBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) - (userCashbackBonus[address(msg.sender)].field_256 * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            require idx < userCashbackBonus[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 7)
                            if userCashbackBonus[address(msg.sender)].field_256 < userCashbackBonus[address(msg.sender)][idx].field_1536:
                                if userCashbackBonus[address(msg.sender)].field_256 > userCashbackBonus[address(msg.sender)][idx].field_1536:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000:
                                    require userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000
                                    if (userCashbackBonus[address(msg.sender)][idx].field_1536 * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) - (userCashbackBonus[address(msg.sender)].field_256 * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) / userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000 != userCashbackBonus[address(msg.sender)][idx].field_1536 - userCashbackBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userCashbackBonus[address(msg.sender)][idx].field_1536 * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) - (userCashbackBonus[address(msg.sender)].field_256 * userCashbackBonus[address(msg.sender)][idx].field_512 * userCashbackBonus[address(msg.sender)][idx].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userCashbackBonus[address(msg.sender)].field_1024 <= 0:
        revert with 0, 'User has no dividends'
    userCashbackBonus[address(msg.sender)].field_1024 = 0
    if userCashbackBonus[address(msg.sender)].field_1024 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if userCashbackBonus[address(msg.sender)].field_1024 <= 0:
        revert with 0, 'User has no dividends'
    userCashbackBonus[address(msg.sender)].field_256 = block.timestamp
    if eth.balance(this.address) >= userCashbackBonus[address(msg.sender)].field_1024:
        call msg.sender with:
           value userCashbackBonus[address(msg.sender)].field_1024 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(userCashbackBonus[address(msg.sender)].field_1024, msg.sender);
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(eth.balance(this.address), msg.sender);
}

function getResult(uint8 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if block.timestamp <= startUNIX:
        require arg1 < stor5.length
        require arg1 < stor5.length
        if arg1 < 4:
            if not arg2:
                require arg1 < stor5.length
                if not stor5[2 * uint8(arg1)].field_0:
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    return stor5[2 * uint8(arg1)].field_256, 0, block.timestamp
                require stor5[2 * uint8(arg1)].field_0
                if 24 * 3600 * stor5[2 * uint8(arg1)].field_0 / stor5[2 * uint8(arg1)].field_0 != 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor5[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0)
            require arg2
            if arg2 * stor5[2 * uint8(arg1)].field_256 / arg2 != stor5[2 * uint8(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not arg2 * stor5[2 * uint8(arg1)].field_256 / 1000:
                require arg1 < stor5.length
                if not stor5[2 * uint8(arg1)].field_0:
                    if block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    return stor5[2 * uint8(arg1)].field_256, 0, block.timestamp
                require stor5[2 * uint8(arg1)].field_0
                if 24 * 3600 * stor5[2 * uint8(arg1)].field_0 / stor5[2 * uint8(arg1)].field_0 != 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor5[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0)
            require arg2 * stor5[2 * uint8(arg1)].field_256 / 1000
            if arg2 * stor5[2 * uint8(arg1)].field_256 / 1000 * stor5[2 * uint8(arg1)].field_0 / arg2 * stor5[2 * uint8(arg1)].field_256 / 1000 != stor5[2 * uint8(arg1)].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require arg1 < stor5.length
            if not stor5[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor5[2 * uint8(arg1)].field_256, 
                       arg2 * stor5[2 * uint8(arg1)].field_256 / 1000 * stor5[2 * uint8(arg1)].field_0,
                       block.timestamp
            require stor5[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor5[2 * uint8(arg1)].field_0 / stor5[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor5[2 * uint8(arg1)].field_256, 
                   arg2 * stor5[2 * uint8(arg1)].field_256 / 1000 * stor5[2 * uint8(arg1)].field_0,
                   block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0)
        if arg1 >= 8:
            if not stor5[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor5[2 * uint8(arg1)].field_256, 0, block.timestamp
            require stor5[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor5[2 * uint8(arg1)].field_0 / stor5[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor5[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0)
        if var31003 >= stor5[2 * uint8(arg1)].field_0:
            require arg1 < stor5.length
            if not stor5[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor5[2 * uint8(arg1)].field_256, 0, block.timestamp
            require stor5[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor5[2 * uint8(arg1)].field_0 / stor5[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor5[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0)
        if arg2 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not arg2:
            require arg1 < stor5.length
            mem[0] = 5
            if var39007 + 1 < stor5[2 * uint8(arg1)].field_0:
                if arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                var39007 = var39007 + 1
                continue 
            require arg1 < stor5.length
            if not stor5[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor5[2 * uint8(arg1)].field_256, 0, block.timestamp
            require stor5[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor5[2 * uint8(arg1)].field_0 / stor5[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor5[2 * uint8(arg1)].field_256, 0, block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0)
        require arg2
        if arg2 * stor5[2 * uint8(arg1)].field_256 / arg2 != stor5[2 * uint8(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 * stor5[2 * uint8(arg1)].field_256 / 1000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < stor5.length
        mem[0] = 5
        if var39007 + 1 < stor5[2 * uint8(arg1)].field_0:
            if arg2 + (arg2 * stor5[2 * uint8(arg1)].field_256 / 1000) < arg2:
                revert with 0, 'SafeMath: addition overflow'
            var39007 = var39007 + 1
            continue 
        require arg1 < stor5.length
        if not stor5[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor5[2 * uint8(arg1)].field_256, arg2 * stor5[2 * uint8(arg1)].field_256 / 1000, block.timestamp
        require stor5[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor5[2 * uint8(arg1)].field_0 / stor5[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor5[2 * uint8(arg1)].field_256, 
               arg2 * stor5[2 * uint8(arg1)].field_256 / 1000,
               block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0)
    if startUNIX > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (3 * block.timestamp) - (3 * startUNIX) / 3 != block.timestamp - startUNIX:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < stor5.length
    if stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600) < stor5[2 * uint8(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < stor5.length
    if arg1 < 4:
        if not arg2:
            require arg1 < stor5.length
            if not stor5[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
            require stor5[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor5[2 * uint8(arg1)].field_0 / stor5[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
                   0,
                   block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0)
        require arg2
        if (stor5[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / arg2 != stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (stor5[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000:
            require arg1 < stor5.length
            if not stor5[2 * uint8(arg1)].field_0:
                if block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                return stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
            require stor5[2 * uint8(arg1)].field_0
            if 24 * 3600 * stor5[2 * uint8(arg1)].field_0 / stor5[2 * uint8(arg1)].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
                   0,
                   block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0)
        require (stor5[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000
        if (stor5[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 * stor5[2 * uint8(arg1)].field_0 / (stor5[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 != stor5[2 * uint8(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require arg1 < stor5.length
        if not stor5[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
                   (stor5[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 * stor5[2 * uint8(arg1)].field_0,
                   block.timestamp
        require stor5[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor5[2 * uint8(arg1)].field_0 / stor5[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               (stor5[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 * stor5[2 * uint8(arg1)].field_0,
               block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0)
    if arg1 >= 8:
        if not stor5[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
        require stor5[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor5[2 * uint8(arg1)].field_0 / stor5[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0)
    if var47003 >= stor5[2 * uint8(arg1)].field_0:
        require arg1 < stor5.length
        if not stor5[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
        require stor5[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor5[2 * uint8(arg1)].field_0 / stor5[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0)
    if arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if not arg2:
        require arg1 < stor5.length
        mem[0] = 5
        if var55007 + 1 < stor5[2 * uint8(arg1)].field_0:
            if arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            var55007 = var55007 + 1
            continue 
        require arg1 < stor5.length
        if not stor5[2 * uint8(arg1)].field_0:
            if block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            return stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 0, block.timestamp
        require stor5[2 * uint8(arg1)].field_0
        if 24 * 3600 * stor5[2 * uint8(arg1)].field_0 / stor5[2 * uint8(arg1)].field_0 != 24 * 3600:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0) < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               0,
               block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0)
    require arg2
    if (stor5[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / arg2 != stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (stor5[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000 < 0:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < stor5.length
    mem[0] = 5
    if var55007 + 1 < stor5[2 * uint8(arg1)].field_0:
        if arg2 + ((stor5[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000) < arg2:
            revert with 0, 'SafeMath: addition overflow'
        var55007 = var55007 + 1
        continue 
    require arg1 < stor5.length
    if not stor5[2 * uint8(arg1)].field_0:
        if block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        return stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
               (stor5[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000,
               block.timestamp
    require stor5[2 * uint8(arg1)].field_0
    if 24 * 3600 * stor5[2 * uint8(arg1)].field_0 / stor5[2 * uint8(arg1)].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    return stor5[2 * uint8(arg1)].field_256 + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600), 
           (stor5[2 * uint8(arg1)].field_256 * arg2) + ((3 * block.timestamp) - (3 * startUNIX) / 24 * 3600 * arg2) / 1000,
           block.timestamp + (24 * 3600 * stor5[2 * uint8(arg1)].field_0)
}



}
