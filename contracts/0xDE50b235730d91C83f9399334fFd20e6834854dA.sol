contract main {




// =====================  Runtime code  =====================


#
#  - unstake(uint256 arg1)
#  - stake(uint256 arg1)
#
address owner;
mapping of uint256 stakeValue;
mapping of uint256 stakerPayouts;
uint256 totalDistributions;
uint256 totalStaked;
uint256 totalStakers;
uint256 profitPerShare;
uint256 stor8;
uint256 startTime;
array of struct stor10;
array of struct stor11;

function totalDistributions() {
    return totalDistributions
}

function startTime() {
    return startTime
}

function totalStaked() {
    return totalStaked
}

function profitPerShare() {
    return profitPerShare
}

function totalStakers() {
    return totalStakers
}

function owner() {
    return owner
}

function stakeValue(address arg1) {
    require calldata.size - 4 >= 32
    return stakeValue[arg1]
}

function stakerPayouts(address arg1) {
    require calldata.size - 4 >= 32
    return stakerPayouts[arg1]
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

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startTime = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function totalStakedAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor11.length:
        return totalStaked
    require stor11.length - 1 < stor11.length
    if arg1 >= stor11[stor11.length].field_0:
        if stor11.length - 1 < stor11.length:
            return stor11[stor11.length].field_0
    else:
        if 0 < stor11.length:
            if arg1 < uint128(stor11.field_0):
                if 0 < stor11.length:
                    return uint128(stor11.field_128)
            else:
                idx = 0
                while stor11.length - 1 > idx:
                    require idx + stor11.length / 2 < stor11.length
                    mem[0] = 11
                    if stor11[0.5 / idx + stor11.length].field_0 > arg1:
                        idx = idx
                        continue 
                    idx = idx + stor11.length / 2
                    continue 
                if idx < stor11.length:
                    return stor11[idx].field_128
    revert
}

function dividendsOf(address arg1) {
    require calldata.size - 4 >= 32
    if not profitPerShare:
        if 0 < stakerPayouts[address(arg1)]:
            revert with 0, 'dividend calc overflow'
        return (Mask(192, 64, -stakerPayouts[address(arg1)]) >> 64)
    if stakeValue[address(arg1)] * profitPerShare / profitPerShare != stakeValue[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if stakeValue[address(arg1)] * profitPerShare >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 32, 37, 0x734f766572666c6f772e2043616e6e6f7420636f6e766572742075696e7420746f20696e74, mem[265 len 27]
    if stakeValue[address(arg1)] * profitPerShare < stakerPayouts[address(arg1)]:
        revert with 0, 'dividend calc overflow'
    return (Mask(192, 64, (stakeValue[address(arg1)] * profitPerShare) - stakerPayouts[address(arg1)]) >> 64)
}

function stakeValueAt(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor10[address(arg1)].field_0:
        return stakeValue[address(arg1)]
    if not stor10[address(arg1)].field_0:
        return 0
    require stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0
    if arg2 >= stor10[address(arg1)][stor10[address(arg1)].field_0].field_0:
        if stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0:
            return stor10[address(arg1)][stor10[address(arg1)].field_0].field_0
    else:
        if 0 < stor10[address(arg1)].field_0:
            if arg2 < stor10[address(arg1)].field_0:
                if 0 < stor10[address(arg1)].field_0:
                    return stor10[address(arg1)].field_128
            else:
                idx = 0
                while stor10[address(arg1)].field_0 - 1 > idx:
                    require idx + stor10[address(arg1)].field_0 / 2 < stor10[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 10)
                    if stor10[address(arg1)][0.5 / idx + stor10[address(arg1)].field_0].field_0 > arg2:
                        idx = idx
                        continue 
                    idx = idx + stor10[address(arg1)].field_0 / 2
                    continue 
                if idx < stor10[address(arg1)].field_0:
                    return stor10[address(arg1)][idx].field_128
    revert
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not startTime:
        revert with 0, 'Staking not yet started.'
    if block.timestamp <= startTime:
        revert with 0, 'Staking not yet started.'
    if not profitPerShare:
        if 0 < stakerPayouts[address(msg.sender)]:
            revert with 0, 'dividend calc overflow'
        if Mask(192, 64, -stakerPayouts[address(msg.sender)]) >> 64 < arg1:
            revert with 0, 
                        32,
                        52,
                        0x2e43616e6e6f74207769746864726177206d6f7265206469766964656e6473207468616e20796f752068617665206561726e6564,
                        mem[344 len 12]
    else:
        if stakeValue[address(msg.sender)] * profitPerShare / profitPerShare != stakeValue[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if stakeValue[address(msg.sender)] * profitPerShare >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 32, 37, 0x734f766572666c6f772e2043616e6e6f7420636f6e766572742075696e7420746f20696e74, mem[265 len 27]
        if stakeValue[address(msg.sender)] * profitPerShare < stakerPayouts[address(msg.sender)]:
            revert with 0, 'dividend calc overflow'
        if Mask(192, 64, (stakeValue[address(msg.sender)] * profitPerShare) - stakerPayouts[address(msg.sender)]) >> 64 < arg1:
            revert with 0, 
                        32,
                        52,
                        0x2e43616e6e6f74207769746864726177206d6f7265206469766964656e6473207468616e20796f752068617665206561726e6564,
                        mem[344 len 12]
    if arg1:
        if arg1 << 64 / arg1 != 18446744073709551616:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if arg1 << 64 >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 32, 37, 0x734f766572666c6f772e2043616e6e6f7420636f6e766572742075696e7420746f20696e74, mem[393 len 27]
        stakerPayouts[msg.sender] += arg1 << 64
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit OnWithdraw(msg.sender, arg1);
}

function distribute() payable {
    if msg.value:
        if msg.value + totalDistributions < totalDistributions:
            revert with 0, 'SafeMath: addition overflow'
        totalDistributions += msg.value
        if not totalStaked:
            if msg.value + stor8 < stor8:
                revert with 0, 'SafeMath: addition overflow'
            stor8 += msg.value
        else:
            if not stor8:
                if not msg.value:
                    if not totalStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalStaked) + profitPerShare < profitPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    profitPerShare += 0 / totalStaked
                else:
                    if msg.value << 64 / msg.value != 18446744073709551616:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not totalStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (msg.value << 64 / totalStaked) + profitPerShare < profitPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    profitPerShare += msg.value << 64 / totalStaked
            else:
                if stor8 + msg.value < msg.value:
                    revert with 0, 'SafeMath: addition overflow'
                stor8 = 0
                if not stor8 + msg.value:
                    if not totalStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalStaked) + profitPerShare < profitPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    profitPerShare += 0 / totalStaked
                else:
                    if stor8 + msg.value << 64 / stor8 + msg.value != 18446744073709551616:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not totalStaked:
                        revert with 0, 'SafeMath: division by zero'
                    if (stor8 + msg.value << 64 / totalStaked) + profitPerShare < profitPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    profitPerShare += stor8 + msg.value << 64 / totalStaked
        emit OnDistribute(msg.sender, msg.value);
}



}
