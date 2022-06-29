contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const PROJECT_FEE = 30

const PERCENT_STEP = 5

const INVEST_MIN_AMOUNT = 5 * 10^16


array of uint256 rEFERRAL_PERCENTS;
uint256 totalInvested;
array of address stor2;
array of struct planInfo;
mapping of struct userReferralBonus;
uint8 started;
address ceoAddress1; offset 8
address ceoAddress2;
address ceoAddress3;

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
        if not planInfo[stor4[address(arg1)][idx].field_0].field_0:
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 4)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_256
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor4[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 4)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor4[address(arg1)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 / planInfo[stor4[address(arg1)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 4)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_256
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor4[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 4)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userReferralBonus[address(arg1)].field_2048 < userReferralBonus[address(arg1)].field_2048:
        revert with 0, 'SafeMath: addition overflow'
    return userReferralBonus[address(arg1)].field_2048
}

function started() {
    return bool(started)
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_512
}

function ceoAddress1() {
    return ceoAddress1
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_2304
}

function totalInvested() {
    return totalInvested
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < rEFERRAL_PERCENTS.length
    return rEFERRAL_PERCENTS[arg1]
}

function getUserInfo(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require idx < userReferralBonus[address(arg1)].field_0
        if s + userReferralBonus[address(arg1)][idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + userReferralBonus[address(arg1)][idx].field_256
        continue 
    return s * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0, 
           userReferralBonus[address(arg1)].field_2560,
           userReferralBonus[address(arg1)].field_768 + userReferralBonus[address(arg1)].field_1024 + userReferralBonus[address(arg1)].field_1280 + userReferralBonus[address(arg1)].field_1536 + userReferralBonus[address(arg1)].field_1792
}

function totalRefBonus() {
    return stor2.length
}

function getUserAmountOfDeposits(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_0
}

function getPlanInfo(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < planInfo.length
    return planInfo[2 * uint8(arg1)].field_0, planInfo[2 * uint8(arg1)].field_256
}

function ceoAddress2() {
    return ceoAddress2
}

function ceoAddress3() {
    return ceoAddress3
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_256
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_2048
}

function getUserTotalWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_2560
}

function _fallback() payable {
    revert
}

function getSiteInfo() {
    return totalInvested, stor2.length
}

function getUserTotalReferrals(address arg1) {
    require calldata.size - 4 >= 32
    return (userReferralBonus[address(arg1)].field_768 + userReferralBonus[address(arg1)].field_1024 + userReferralBonus[address(arg1)].field_1280 + userReferralBonus[address(arg1)].field_1536 + userReferralBonus[address(arg1)].field_1792)
}

function getUserDownlineCount(address arg1) {
    require calldata.size - 4 >= 32
    idx = 256
    s = 3
    while 416 > idx + 32:
        mem[idx + 32] = userReferralBonus[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return userReferralBonus[address(arg1)].field_768, mem[288 len 128]
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    if userReferralBonus[address(arg1)].field_2048 > userReferralBonus[address(arg1)].field_2304:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userReferralBonus[address(arg1)].field_2304 - userReferralBonus[address(arg1)].field_2048)
}

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < userReferralBonus[address(arg1)].field_0
    require userReferralBonus[address(arg1)][arg2].field_0 < planInfo.length
    require arg2 < userReferralBonus[address(arg1)].field_0
    require userReferralBonus[address(arg1)][arg2].field_0 < planInfo.length
    if not planInfo[stor4[address(arg1)][arg2].field_0].field_0:
        require arg2 < userReferralBonus[address(arg1)].field_0
        if userReferralBonus[address(arg1)][arg2].field_512 < userReferralBonus[address(arg1)][arg2].field_512:
            revert with 0, 'SafeMath: addition overflow'
        return userReferralBonus[address(arg1)][arg2].field_0, 
               planInfo[stor4[address(arg1)][arg2].field_0].field_256,
               userReferralBonus[address(arg1)][arg2].field_256,
               userReferralBonus[address(arg1)][arg2].field_512,
               userReferralBonus[address(arg1)][arg2].field_512
    require planInfo[stor4[address(arg1)][arg2].field_0].field_0
    if 24 * 3600 * planInfo[stor4[address(arg1)][arg2].field_0].field_0 / planInfo[stor4[address(arg1)][arg2].field_0].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg2 < userReferralBonus[address(arg1)].field_0
    if userReferralBonus[address(arg1)][arg2].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][arg2].field_0].field_0) < userReferralBonus[address(arg1)][arg2].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return userReferralBonus[address(arg1)][arg2].field_0, 
           planInfo[stor4[address(arg1)][arg2].field_0].field_256,
           userReferralBonus[address(arg1)][arg2].field_256,
           userReferralBonus[address(arg1)][arg2].field_512,
           userReferralBonus[address(arg1)][arg2].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][arg2].field_0].field_0)
}

function getUserTotalDeposits(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require idx < userReferralBonus[address(arg1)].field_0
        if s + userReferralBonus[address(arg1)][idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 4
        idx = idx + 1
        s = s + userReferralBonus[address(arg1)][idx].field_256
        continue 
    return (s * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0)
}

function invest(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if not started:
        if ceoAddress1 != msg.sender:
            revert with 0, 'Not started yet'
        started = 1
    require msg.value >= 5 * 10^16
    if arg2 >= 4:
        revert with 0, 'Invalid plan'
    if not msg.value:
        call ceoAddress1 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call ceoAddress2 with:
             gas 2300 wei
        call ceoAddress3 with:
             gas 2300 wei
        emit FeePayed(0, msg.sender);
    else:
        require msg.value
        if 30 * msg.value / msg.value != 30:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        call ceoAddress1 with:
           value 30 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call ceoAddress2 with:
           value 30 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        call ceoAddress3 with:
           value 30 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        emit FeePayed((3 * 30 * msg.value / 1000), msg.sender);
    mem[0] = msg.sender
    mem[32] = 4
    if userReferralBonus[address(msg.sender)].field_512:
        idx = 0
        s = stor2[sha3(mem[0 len 64])]
        while idx < 5:
            if not address(s):
                if not userReferralBonus[address(msg.sender)].field_0:
                    userReferralBonus[address(msg.sender)].field_256 = block.timestamp
                    emit Newbie(msg.sender);
                userReferralBonus[address(msg.sender)].field_0++
                userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
                userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
                userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
                if totalInvested + msg.value < totalInvested:
                    revert with 0, 'SafeMath: addition overflow'
                totalInvested += msg.value
                emit NewDeposit(arg2 << 248, msg.value, msg.sender);
            require idx < rEFERRAL_PERCENTS.length
            if not msg.value:
                if userReferralBonus[address(s)].field_2048 < userReferralBonus[address(s)].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                if userReferralBonus[address(s)].field_2304 < userReferralBonus[address(s)].field_2304:
                    revert with 0, 'SafeMath: addition overflow'
                mem[96] = 0
                emit RefBonus(0, address(s), msg.sender, idx);
            else:
                require msg.value
                if msg.value * rEFERRAL_PERCENTS[idx] / msg.value != rEFERRAL_PERCENTS[idx]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userReferralBonus[address(s)].field_2048 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                userReferralBonus[address(s)].field_2048 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                if userReferralBonus[address(s)].field_2304 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_2304:
                    revert with 0, 'SafeMath: addition overflow'
                userReferralBonus[address(s)].field_2304 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                mem[96] = msg.value * rEFERRAL_PERCENTS[idx] / 1000
                emit RefBonus((msg.value * rEFERRAL_PERCENTS[idx] / 1000), address(s), msg.sender, idx);
            mem[0] = address(s)
            mem[32] = 4
            idx = idx + 1
            s = userReferralBonus[address(s)].field_512
            continue 
    else:
        if userReferralBonus[address(arg1)].field_0 > 0:
            if arg1 != msg.sender:
                userReferralBonus[address(msg.sender)].field_512 = arg1
        idx = 0
        s = userReferralBonus[address(msg.sender)].field_512
        while idx < 5:
            if address(s):
                require idx < 5
                if userReferralBonus[address(s)][idx].field_768 + 1 < userReferralBonus[address(s)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 5
                userReferralBonus[address(s)][idx].field_768++
                mem[0] = address(s)
                mem[32] = 4
                idx = idx + 1
                s = userReferralBonus[address(s)].field_512
                continue 
            if userReferralBonus[address(msg.sender)].field_512:
                idx = 0
                s = userReferralBonus[address(msg.sender)].field_512
                while idx < 5:
                    if not address(s):
                        if not userReferralBonus[address(msg.sender)].field_0:
                            userReferralBonus[address(msg.sender)].field_256 = block.timestamp
                            emit Newbie(msg.sender);
                        userReferralBonus[address(msg.sender)].field_0++
                        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
                        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
                        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
                        if totalInvested + msg.value < totalInvested:
                            revert with 0, 'SafeMath: addition overflow'
                        totalInvested += msg.value
                        emit NewDeposit(arg2 << 248, msg.value, msg.sender);
                    require idx < rEFERRAL_PERCENTS.length
                    if not msg.value:
                        if userReferralBonus[address(s)].field_2048 < userReferralBonus[address(s)].field_2048:
                            revert with 0, 'SafeMath: addition overflow'
                        if userReferralBonus[address(s)].field_2304 < userReferralBonus[address(s)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[96] = 0
                        emit RefBonus(0, address(s), msg.sender, idx);
                    else:
                        require msg.value
                        if msg.value * rEFERRAL_PERCENTS[idx] / msg.value != rEFERRAL_PERCENTS[idx]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userReferralBonus[address(s)].field_2048 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_2048:
                            revert with 0, 'SafeMath: addition overflow'
                        userReferralBonus[address(s)].field_2048 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                        if userReferralBonus[address(s)].field_2304 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        userReferralBonus[address(s)].field_2304 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                        mem[96] = msg.value * rEFERRAL_PERCENTS[idx] / 1000
                        emit RefBonus((msg.value * rEFERRAL_PERCENTS[idx] / 1000), address(s), msg.sender, idx);
                    mem[0] = address(s)
                    mem[32] = 4
                    idx = idx + 1
                    s = userReferralBonus[address(s)].field_512
                    continue 
            if not userReferralBonus[address(msg.sender)].field_0:
                userReferralBonus[address(msg.sender)].field_256 = block.timestamp
                emit Newbie(msg.sender);
            userReferralBonus[address(msg.sender)].field_0++
            userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
            userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
            userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
            if totalInvested + msg.value < totalInvested:
                revert with 0, 'SafeMath: addition overflow'
            totalInvested += msg.value
            emit NewDeposit(arg2 << 248, msg.value, msg.sender);
        if userReferralBonus[address(msg.sender)].field_512:
            idx = 0
            s = userReferralBonus[address(msg.sender)].field_512
            while idx < 5:
                if not address(s):
                    if not userReferralBonus[address(msg.sender)].field_0:
                        userReferralBonus[address(msg.sender)].field_256 = block.timestamp
                        emit Newbie(msg.sender);
                    userReferralBonus[address(msg.sender)].field_0++
                    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
                    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
                    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
                    if totalInvested + msg.value < totalInvested:
                        revert with 0, 'SafeMath: addition overflow'
                    totalInvested += msg.value
                    emit NewDeposit(arg2 << 248, msg.value, msg.sender);
                require idx < rEFERRAL_PERCENTS.length
                if not msg.value:
                    if userReferralBonus[address(s)].field_2048 < userReferralBonus[address(s)].field_2048:
                        revert with 0, 'SafeMath: addition overflow'
                    if userReferralBonus[address(s)].field_2304 < userReferralBonus[address(s)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[96] = 0
                    emit RefBonus(0, address(s), msg.sender, idx);
                else:
                    require msg.value
                    if msg.value * rEFERRAL_PERCENTS[idx] / msg.value != rEFERRAL_PERCENTS[idx]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userReferralBonus[address(s)].field_2048 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_2048:
                        revert with 0, 'SafeMath: addition overflow'
                    userReferralBonus[address(s)].field_2048 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    if userReferralBonus[address(s)].field_2304 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    userReferralBonus[address(s)].field_2304 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    mem[96] = msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    emit RefBonus((msg.value * rEFERRAL_PERCENTS[idx] / 1000), address(s), msg.sender, idx);
                mem[0] = address(s)
                mem[32] = 4
                idx = idx + 1
                s = userReferralBonus[address(s)].field_512
                continue 
    if not userReferralBonus[address(msg.sender)].field_0:
        userReferralBonus[address(msg.sender)].field_256 = block.timestamp
        emit Newbie(msg.sender);
    userReferralBonus[address(msg.sender)].field_0++
    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
    if totalInvested + msg.value < totalInvested:
        revert with 0, 'SafeMath: addition overflow'
    totalInvested += msg.value
    emit NewDeposit(arg2 << 248, msg.value, msg.sender);
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
        if not planInfo[stor4[address(arg1)][idx].field_0].field_0:
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 4)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_256
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor4[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 4)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor4[address(arg1)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 / planInfo[stor4[address(arg1)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 4)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_256
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor4[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 4)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function withdraw() {
    idx = 0
    while idx < userReferralBonus[address(msg.sender)].field_0:
        require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
        if not planInfo[stor4[address(msg.sender)][idx].field_0].field_0:
            require idx < userReferralBonus[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 4)
            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                require idx < userReferralBonus[address(msg.sender)].field_0
                require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(msg.sender)].field_0
                if not userReferralBonus[address(msg.sender)][idx].field_256:
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(msg.sender)][idx].field_256
                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / userReferralBonus[address(msg.sender)][idx].field_256 != planInfo[stor4[address(msg.sender)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000 != userReferralBonus[address(msg.sender)][idx].field_512 - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor4[address(msg.sender)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0 / planInfo[stor4[address(msg.sender)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 4)
            if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0) < userReferralBonus[address(msg.sender)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                require idx < userReferralBonus[address(msg.sender)].field_0
                require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(msg.sender)].field_0
                if not userReferralBonus[address(msg.sender)][idx].field_256:
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(msg.sender)][idx].field_256
                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / userReferralBonus[address(msg.sender)][idx].field_256 != planInfo[stor4[address(msg.sender)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000 != userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0) - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userReferralBonus[address(msg.sender)].field_2048 <= 0:
        revert with 0, 'User has no dividends'
    userReferralBonus[address(msg.sender)].field_2048 = 0
    if userReferralBonus[address(msg.sender)].field_2048 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if userReferralBonus[address(msg.sender)].field_2048 <= 0:
        revert with 0, 'User has no dividends'
    if eth.balance(this.address) >= userReferralBonus[address(msg.sender)].field_2048:
        userReferralBonus[address(msg.sender)].field_256 = block.timestamp
        if userReferralBonus[address(msg.sender)].field_2560 + userReferralBonus[address(msg.sender)].field_2048 < userReferralBonus[address(msg.sender)].field_2560:
            revert with 0, 'SafeMath: addition overflow'
        userReferralBonus[address(msg.sender)].field_2560 += userReferralBonus[address(msg.sender)].field_2048
        call msg.sender with:
           value userReferralBonus[address(msg.sender)].field_2048 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(userReferralBonus[address(msg.sender)].field_2048, msg.sender);
    else:
        if eth.balance(this.address) > userReferralBonus[address(msg.sender)].field_2048:
            revert with 0, 'SafeMath: subtraction overflow'
        userReferralBonus[address(msg.sender)].field_2048 -= eth.balance(this.address)
        if userReferralBonus[address(msg.sender)].field_2304 + userReferralBonus[address(msg.sender)].field_2048 < userReferralBonus[address(msg.sender)].field_2304:
            revert with 0, 'SafeMath: addition overflow'
        userReferralBonus[address(msg.sender)].field_2304 += userReferralBonus[address(msg.sender)].field_2048
        userReferralBonus[address(msg.sender)].field_256 = block.timestamp
        if userReferralBonus[address(msg.sender)].field_2560 + eth.balance(this.address) < userReferralBonus[address(msg.sender)].field_2560:
            revert with 0, 'SafeMath: addition overflow'
        userReferralBonus[address(msg.sender)].field_2560 += eth.balance(this.address)
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(eth.balance(this.address), msg.sender);
}



}
