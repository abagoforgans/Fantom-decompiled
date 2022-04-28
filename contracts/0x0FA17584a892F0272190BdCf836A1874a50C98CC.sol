contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#
address owner;
mapping of struct userInfo;
address stor3;
address devaddr;
address winnerAddress;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 sub_bee6f781;
uint256 sub_907a84d8;
uint256 sub_9221ae82;
uint256 totalPoint;
uint256 sub_3380e42a;
uint256 sub_e37ac5d7;
uint256 period;
uint256 sub_868375c4;
uint256 sub_ff464806;
uint256 totalBurnt;
uint8 stor20;

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_768
}

function sub_3380e42a(?) {
    return sub_3380e42a
}

function sub_868375c4(?) {
    return sub_868375c4
}

function owner() {
    return owner
}

function sub_907a84d8(?) {
    return sub_907a84d8
}

function sub_9221ae82(?) {
    return sub_9221ae82
}

function totalBurnt() {
    return totalBurnt
}

function sub_bee6f781(?) {
    return sub_bee6f781
}

function devaddr() {
    return devaddr
}

function totalPoint() {
    return totalPoint
}

function winner() {
    return winnerAddress
}

function sub_e37ac5d7(?) {
    return sub_e37ac5d7
}

function period() {
    return period
}

function sub_ff464806(?) {
    return sub_ff464806
}

function _fallback() payable {
    revert
}

function sub_0de5b040(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_d7c57da0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_907a84d8 = arg1
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20 = uint8(arg1)
}

function setPeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    period = arg1
}

function sub_1f077268(?) payable {
    if sub_3380e42a + msg.value < sub_3380e42a:
        revert with 0, 'SafeMath: addition overflow'
    sub_3380e42a += msg.value
    return sub_3380e42a
}

function getMultiplier(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function transferOwnership(address arg1) {
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

function start(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'wrong period'
    stor20 = 0
    period = arg1
    if block.number + period < block.number:
        revert with 0, 'SafeMath: addition overflow'
    sub_868375c4 = block.number + period
    sub_e37ac5d7 = sub_3380e42a
    if period <= 0:
        revert with 0, 'SafeMath: division by zero'
    require period
    sub_9221ae82 = sub_e37ac5d7 / period
    sub_3380e42a = 0
}

function sub_ce59fb07(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x6c5472616e7366657248656c7065723a2046544d5f5452414e534645525f4641494c45,
                        mem[199 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x6c5472616e7366657248656c7065723a2046544d5f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 200 len 29]
    ('bool', 'ext_call.success')
}

function emergencyWithdraw() {
    userInfo[address(msg.sender)].field_0 = 0
    userInfo[address(msg.sender)].field_512 = 0
    if userInfo[address(msg.sender)].field_256 > totalPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    totalPoint -= userInfo[address(msg.sender)].field_256
    userInfo[address(msg.sender)].field_256 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(stor3) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_32
    mem[324 len 0] = 0
    call stor3 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function updatePool() {
    if block.number > stor6:
        if totalPoint:
            if stor6 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - stor6:
                if totalPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalPoint
                if stor7 + (0 / totalPoint) < stor7:
                    revert with 0, 'SafeMath: addition overflow'
                stor7 += 0 / totalPoint
            else:
                require block.number - stor6
                if (block.number * sub_9221ae82) - (stor6 * sub_9221ae82) / block.number - stor6 != sub_9221ae82:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.number * sub_9221ae82) - (stor6 * sub_9221ae82):
                    if totalPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalPoint
                    if stor7 + (0 / totalPoint) < stor7:
                        revert with 0, 'SafeMath: addition overflow'
                    stor7 += 0 / totalPoint
                else:
                    require (block.number * sub_9221ae82) - (stor6 * sub_9221ae82)
                    if (10^12 * block.number * sub_9221ae82) - (10^12 * stor6 * sub_9221ae82) / (block.number * sub_9221ae82) - (stor6 * sub_9221ae82) != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalPoint
                    if stor7 + ((10^12 * block.number * sub_9221ae82) - (10^12 * stor6 * sub_9221ae82) / totalPoint) < stor7:
                        revert with 0, 'SafeMath: addition overflow'
                    stor7 += (10^12 * block.number * sub_9221ae82) - (10^12 * stor6 * sub_9221ae82) / totalPoint
        stor6 = block.number
}

function getMultiple(address arg1) {
    require calldata.size - 4 >= 32
    if userInfo[address(arg1)].field_768 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - userInfo[address(arg1)].field_768:
        if sub_907a84d8 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_907a84d8
        if not 0 / sub_907a84d8:
            if not sub_bee6f781:
                return 10^12
            require sub_bee6f781
            if 10^10 * sub_bee6f781 / sub_bee6f781 != 10^10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^10 * sub_bee6f781) + 10^12 < 10^10 * sub_bee6f781:
                revert with 0, 'SafeMath: addition overflow'
            if 10^12 <= (10^10 * sub_bee6f781) + 10^12:
                return 10^12
        else:
            require 0 / sub_907a84d8
            if 0 / sub_907a84d8 * sub_bee6f781 / 0 / sub_907a84d8 != sub_bee6f781:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (0 / sub_907a84d8 * sub_bee6f781) + 10^12 < 0 / sub_907a84d8 * sub_bee6f781:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_bee6f781:
                if (0 / sub_907a84d8 * sub_bee6f781) + 10^12 <= 10^12:
                    return ((0 / sub_907a84d8 * sub_bee6f781) + 10^12)
            else:
                require sub_bee6f781
                if 10^10 * sub_bee6f781 / sub_bee6f781 != 10^10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^10 * sub_bee6f781) + 10^12 < 10^10 * sub_bee6f781:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / sub_907a84d8 * sub_bee6f781 <= 10^10 * sub_bee6f781:
                    return ((0 / sub_907a84d8 * sub_bee6f781) + 10^12)
    else:
        require block.number - userInfo[address(arg1)].field_768
        if (10^10 * block.number) - (10^10 * userInfo[address(arg1)].field_768) / block.number - userInfo[address(arg1)].field_768 != 10^10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_907a84d8 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_907a84d8
        if not (10^10 * block.number) - (10^10 * userInfo[address(arg1)].field_768) / sub_907a84d8:
            if not sub_bee6f781:
                return 10^12
            require sub_bee6f781
            if 10^10 * sub_bee6f781 / sub_bee6f781 != 10^10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^10 * sub_bee6f781) + 10^12 < 10^10 * sub_bee6f781:
                revert with 0, 'SafeMath: addition overflow'
            if 10^12 <= (10^10 * sub_bee6f781) + 10^12:
                return 10^12
        else:
            require (10^10 * block.number) - (10^10 * userInfo[address(arg1)].field_768) / sub_907a84d8
            if (10^10 * block.number) - (10^10 * userInfo[address(arg1)].field_768) / sub_907a84d8 * sub_bee6f781 / (10^10 * block.number) - (10^10 * userInfo[address(arg1)].field_768) / sub_907a84d8 != sub_bee6f781:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((10^10 * block.number) - (10^10 * userInfo[address(arg1)].field_768) / sub_907a84d8 * sub_bee6f781) + 10^12 < (10^10 * block.number) - (10^10 * userInfo[address(arg1)].field_768) / sub_907a84d8 * sub_bee6f781:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_bee6f781:
                if ((10^10 * block.number) - (10^10 * userInfo[address(arg1)].field_768) / sub_907a84d8 * sub_bee6f781) + 10^12 <= 10^12:
                    return (((10^10 * block.number) - (10^10 * userInfo[address(arg1)].field_768) / sub_907a84d8 * sub_bee6f781) + 10^12)
            else:
                require sub_bee6f781
                if 10^10 * sub_bee6f781 / sub_bee6f781 != 10^10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^10 * sub_bee6f781) + 10^12 < 10^10 * sub_bee6f781:
                    revert with 0, 'SafeMath: addition overflow'
                if (10^10 * block.number) - (10^10 * userInfo[address(arg1)].field_768) / sub_907a84d8 * sub_bee6f781 <= 10^10 * sub_bee6f781:
                    return (((10^10 * block.number) - (10^10 * userInfo[address(arg1)].field_768) / sub_907a84d8 * sub_bee6f781) + 10^12)
    if not sub_bee6f781:
        return 10^12
    require sub_bee6f781
    if 10^10 * sub_bee6f781 / sub_bee6f781 != 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10^10 * sub_bee6f781) + 10^12 < 10^10 * sub_bee6f781:
        revert with 0, 'SafeMath: addition overflow'
    return ((10^10 * sub_bee6f781) + 10^12)
}

function sub_ca47cbbc(?) {
    require calldata.size - 4 >= 32
    if block.number <= stor6:
        if not userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_512
        require userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_256 * stor7 / userInfo[address(arg1)].field_256 != stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_512 > userInfo[address(arg1)].field_256 * stor7 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_256 * stor7 / 10^12) - userInfo[address(arg1)].field_512)
    if not totalPoint:
        if not userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_512
        require userInfo[address(arg1)].field_256
        if userInfo[address(arg1)].field_256 * stor7 / userInfo[address(arg1)].field_256 != stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_512 > userInfo[address(arg1)].field_256 * stor7 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_256 * stor7 / 10^12) - userInfo[address(arg1)].field_512)
    if stor6 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - stor6:
        if totalPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalPoint
        if stor7 + (0 / totalPoint) < stor7:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_512
        require userInfo[address(arg1)].field_256
        if (stor7 * userInfo[address(arg1)].field_256) + (0 / totalPoint * userInfo[address(arg1)].field_256) / userInfo[address(arg1)].field_256 != stor7 + (0 / totalPoint):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_512 > (stor7 * userInfo[address(arg1)].field_256) + (0 / totalPoint * userInfo[address(arg1)].field_256) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((stor7 * userInfo[address(arg1)].field_256) + (0 / totalPoint * userInfo[address(arg1)].field_256) / 10^12) - userInfo[address(arg1)].field_512)
    require block.number - stor6
    if (block.number * sub_9221ae82) - (stor6 * sub_9221ae82) / block.number - stor6 != sub_9221ae82:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * sub_9221ae82) - (stor6 * sub_9221ae82):
        if totalPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalPoint
        if stor7 + (0 / totalPoint) < stor7:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_512
        require userInfo[address(arg1)].field_256
        if (stor7 * userInfo[address(arg1)].field_256) + (0 / totalPoint * userInfo[address(arg1)].field_256) / userInfo[address(arg1)].field_256 != stor7 + (0 / totalPoint):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_512 > (stor7 * userInfo[address(arg1)].field_256) + (0 / totalPoint * userInfo[address(arg1)].field_256) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((stor7 * userInfo[address(arg1)].field_256) + (0 / totalPoint * userInfo[address(arg1)].field_256) / 10^12) - userInfo[address(arg1)].field_512)
    require (block.number * sub_9221ae82) - (stor6 * sub_9221ae82)
    if (10^12 * block.number * sub_9221ae82) - (10^12 * stor6 * sub_9221ae82) / (block.number * sub_9221ae82) - (stor6 * sub_9221ae82) != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalPoint
    if stor7 + ((10^12 * block.number * sub_9221ae82) - (10^12 * stor6 * sub_9221ae82) / totalPoint) < stor7:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_256:
        if userInfo[address(arg1)].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_512
    require userInfo[address(arg1)].field_256
    if (stor7 * userInfo[address(arg1)].field_256) + ((10^12 * block.number * sub_9221ae82) - (10^12 * stor6 * sub_9221ae82) / totalPoint * userInfo[address(arg1)].field_256) / userInfo[address(arg1)].field_256 != stor7 + ((10^12 * block.number * sub_9221ae82) - (10^12 * stor6 * sub_9221ae82) / totalPoint):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[address(arg1)].field_512 > (stor7 * userInfo[address(arg1)].field_256) + ((10^12 * block.number * sub_9221ae82) - (10^12 * stor6 * sub_9221ae82) / totalPoint * userInfo[address(arg1)].field_256) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((stor7 * userInfo[address(arg1)].field_256) + ((10^12 * block.number * sub_9221ae82) - (10^12 * stor6 * sub_9221ae82) / totalPoint * userInfo[address(arg1)].field_256) / 10^12) - userInfo[address(arg1)].field_512)
}



}
