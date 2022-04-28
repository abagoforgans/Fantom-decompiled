contract main {




// =====================  Runtime code  =====================


#
#  - unstake(uint256 arg1)
#
uint128 stor0;
uint128 stor0; offset 128
address owner;
uint256 sub_07e575d6;
address stor2;
mapping of uint128 stakeValue;
mapping of uint256 stakerPayouts;
mapping of uint256 stor5;
uint256 totalDistributions;
uint128 stor7;
uint256 totalStaked;
uint256 totalStakers;
uint256 profitPerShare;
uint256 stor10;
uint256 startTime;
array of struct stor12;
array of struct stor13;

function sub_07e575d6(?) {
    return sub_07e575d6
}

function totalDistributions() {
    return totalDistributions
}

function startTime() {
    return startTime
}

function totalStaked() {
    return uint256(totalStaked)
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
    return uint256(stakeValue[arg1])
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
    if not stor13.length:
        return uint256(totalStaked)
    require stor13.length - 1 < stor13.length
    if arg1 >= stor13[stor13.length].field_0:
        if stor13.length - 1 < stor13.length:
            return stor13[stor13.length].field_0
    else:
        if 0 < stor13.length:
            if arg1 < uint128(stor13.field_0):
                if 0 < stor13.length:
                    return uint128(stor13.field_128)
            else:
                idx = 0
                while stor13.length - 1 > idx:
                    require stor13.length + idx / 2 < stor13.length
                    mem[0] = 13
                    if stor13[0.5 / stor13.length + idx].field_0 > arg1:
                        idx = idx
                        continue 
                    idx = stor13.length + idx / 2
                    continue 
                if idx < stor13.length:
                    return stor13[idx].field_128
    revert
}

function dividendsOf(address arg1) {
    require calldata.size - 4 >= 32
    if not profitPerShare:
        if 0 < stakerPayouts[address(arg1)]:
            revert with 0, 'dividend calc overflow'
        return (Mask(192, 64, -stakerPayouts[address(arg1)]) >> 64)
    require profitPerShare
    if profitPerShare * uint256(stakeValue[address(arg1)]) / profitPerShare != uint256(stakeValue[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if profitPerShare * uint256(stakeValue[address(arg1)]) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 32, 37, 0x214f766572666c6f772e2043616e6e6f7420636f6e766572742075696e7420746f20696e74, mem[265 len 27]
    if profitPerShare * uint256(stakeValue[address(arg1)]) < stakerPayouts[address(arg1)]:
        revert with 0, 'dividend calc overflow'
    return (Mask(192, 64, (profitPerShare * uint256(stakeValue[address(arg1)])) - stakerPayouts[address(arg1)]) >> 64)
}

function stakeValueAt(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor12[address(arg1)].field_0:
        return uint256(stakeValue[address(arg1)])
    if not stor12[address(arg1)].field_0:
        return 0
    require stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0
    if arg2 >= stor12[address(arg1)][stor12[address(arg1)].field_0].field_0:
        if stor12[address(arg1)].field_0 - 1 < stor12[address(arg1)].field_0:
            return stor12[address(arg1)][stor12[address(arg1)].field_0].field_0
    else:
        if 0 < stor12[address(arg1)].field_0:
            if arg2 < stor12[address(arg1)].field_0:
                if 0 < stor12[address(arg1)].field_0:
                    return stor12[address(arg1)].field_128
            else:
                idx = 0
                while stor12[address(arg1)].field_0 - 1 > idx:
                    require stor12[address(arg1)].field_0 + idx / 2 < stor12[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 12)
                    if stor12[address(arg1)][0.5 / stor12[address(arg1)].field_0 + idx].field_0 > arg2:
                        idx = idx
                        continue 
                    idx = stor12[address(arg1)].field_0 + idx / 2
                    continue 
                if idx < stor12[address(arg1)].field_0:
                    return stor12[address(arg1)][idx].field_128
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
        require profitPerShare
        if profitPerShare * uint256(stakeValue[address(msg.sender)]) / profitPerShare != uint256(stakeValue[address(msg.sender)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if profitPerShare * uint256(stakeValue[address(msg.sender)]) >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 32, 37, 0x214f766572666c6f772e2043616e6e6f7420636f6e766572742075696e7420746f20696e74, mem[265 len 27]
        if profitPerShare * uint256(stakeValue[address(msg.sender)]) < stakerPayouts[address(msg.sender)]:
            revert with 0, 'dividend calc overflow'
        if Mask(192, 64, (profitPerShare * uint256(stakeValue[address(msg.sender)])) - stakerPayouts[address(msg.sender)]) >> 64 < arg1:
            revert with 0, 
                        32,
                        52,
                        0x2e43616e6e6f74207769746864726177206d6f7265206469766964656e6473207468616e20796f752068617665206561726e6564,
                        mem[344 len 12]
    if arg1:
        require arg1
        if arg1 << 64 / arg1 != 18446744073709551616:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if arg1 << 64 >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 32, 37, 0x214f766572666c6f772e2043616e6e6f7420636f6e766572742075696e7420746f20696e74, mem[393 len 27]
        stakerPayouts[address(msg.sender)] += arg1 << 64
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit OnWithdraw(msg.sender, arg1);
}

function distribute() payable {
    if msg.value > 0:
        if totalDistributions + msg.value < totalDistributions:
            revert with 0, 'SafeMath: addition overflow'
        totalDistributions += msg.value
        if not uint256(totalStaked):
            if stor10 + msg.value < stor10:
                revert with 0, 'SafeMath: addition overflow'
            stor10 += msg.value
        else:
            if not stor10:
                if not msg.value:
                    if uint256(totalStaked) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(totalStaked)
                    if profitPerShare + (0 / uint256(totalStaked)) < profitPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    profitPerShare += 0 / uint256(totalStaked)
                else:
                    require msg.value
                    if msg.value << 64 / msg.value != 18446744073709551616:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if uint256(totalStaked) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(totalStaked)
                    if profitPerShare + (msg.value << 64 / uint256(totalStaked)) < profitPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    profitPerShare += msg.value << 64 / uint256(totalStaked)
            else:
                if msg.value + stor10 < msg.value:
                    revert with 0, 'SafeMath: addition overflow'
                stor10 = 0
                if not msg.value + stor10:
                    if uint256(totalStaked) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(totalStaked)
                    if profitPerShare + (0 / uint256(totalStaked)) < profitPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    profitPerShare += 0 / uint256(totalStaked)
                else:
                    require msg.value + stor10
                    if msg.value + stor10 << 64 / msg.value + stor10 != 18446744073709551616:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if uint256(totalStaked) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(totalStaked)
                    if profitPerShare + (msg.value + stor10 << 64 / uint256(totalStaked)) < profitPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    profitPerShare += msg.value + stor10 << 64 / uint256(totalStaked)
        emit OnDistribute(msg.sender, msg.value);
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not startTime:
        revert with 0, 'Staking not yet started.'
    if block.timestamp <= startTime:
        revert with 0, 'Staking not yet started.'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7743616e6e6f74207374616b65206d6f726520546f6b656e73207468616e20796f7520686f6c6420756e7374616b6564,
                    mem[212 len 16]
    if block.number < stor5[address(msg.sender)] + sub_07e575d6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x7343616e2774207374616b65206f7220756e7374616b65206d756c7469706c652074696d657320696e203520626c6f636b73,
                    mem[214 len 14]
    if not uint256(stakeValue[address(msg.sender)]):
        if totalStakers + 1 < totalStakers:
            revert with 0, 'SafeMath: addition overflow'
        totalStakers++
    if uint256(stakeValue[address(msg.sender)]) + arg1 < uint256(stakeValue[address(msg.sender)]):
        revert with 0, 'SafeMath: addition overflow'
    require uint256(stakeValue[address(msg.sender)]) + arg1 <= test266151307()
    require uint256(stakeValue[address(msg.sender)]) <= test266151307()
    if not stor12[address(msg.sender)].field_0:
        uint128(stor0.field_0) = uint128(block.number - 1)
        uint128(stor0.field_0) = uint128(stakeValue[address(msg.sender)])
        uint128(stor0.field_128) = 0
        stor12[address(msg.sender)].field_0++
        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = uint128(stor0.field_0)
        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_128 = uint128(stor0.field_128)
    require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
    if stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 >= block.number:
        require stor12[address(msg.sender)].field_0 - 1 < stor12[address(msg.sender)].field_0
        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = uint128(uint256(stakeValue[address(msg.sender)]) + arg1)
    else:
        uint128(stor0.field_0) = uint128(block.number)
        uint128(stor0.field_128) = uint128(uint256(stakeValue[address(msg.sender)]) + arg1)
        stor12[address(msg.sender)].field_0++
        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = uint128(stor0.field_0)
        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_128 = uint128(stor0.field_128)
    if uint256(totalStaked) + arg1 < uint256(totalStaked):
        revert with 0, 'SafeMath: addition overflow'
    require uint256(totalStaked) + arg1 <= test266151307()
    require uint256(totalStaked) <= test266151307()
    if not stor13.length:
        uint128(stor0.field_0) = uint128(block.number - 1)
        uint128(stor0.field_0) = uint128(stor7)
        uint128(stor0.field_128) = 0
        stor13.length++
        stor13[stor13.length].field_0 = uint128(stor0.field_0)
        stor13[stor13.length].field_128 = uint128(stor0.field_128)
    require stor13.length - 1 < stor13.length
    if stor13[stor13.length].field_0 >= block.number:
        require stor13.length - 1 < stor13.length
        stor13[stor13.length].field_0 = uint128(uint256(totalStaked) + arg1)
    else:
        uint128(stor0.field_0) = uint128(block.number)
        uint128(stor0.field_128) = uint128(uint256(totalStaked) + arg1)
        stor13.length++
        stor13[stor13.length].field_0 = uint128(stor0.field_0)
        stor13[stor13.length].field_128 = uint128(stor0.field_128)
    if uint256(totalStaked) + arg1 < uint256(totalStaked):
        revert with 0, 'SafeMath: addition overflow'
    uint256(totalStaked) += arg1
    if uint256(stakeValue[address(msg.sender)]) + arg1 < uint256(stakeValue[address(msg.sender)]):
        revert with 0, 'SafeMath: addition overflow'
    uint256(stakeValue[address(msg.sender)]) += arg1
    if profitPerShare:
        require profitPerShare
        if profitPerShare * arg1 / profitPerShare != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if profitPerShare * arg1 >= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 32, 37, 0x214f766572666c6f772e2043616e6e6f7420636f6e766572742075696e7420746f20696e74, mem[265 len 27]
        stakerPayouts[address(msg.sender)] += profitPerShare * arg1
    stor5[address(msg.sender)] = block.number
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 36, 0xfe5374616b65206661696c65642064756520746f206661696c6564207472616e73666572, mem[264 len 28]
    emit OnStake(msg.sender, arg1);
}



}
