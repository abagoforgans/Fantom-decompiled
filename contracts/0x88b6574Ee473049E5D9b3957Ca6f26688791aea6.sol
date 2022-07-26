contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2)
#
uint256 stor0;
uint256 epoch1Start;
uint256 epochDuration;
mapping of uint256 balanceOf;
mapping of struct stor4;
array of struct stor5;
mapping of uint128 stor6;

function epochDuration() payable {
    return epochDuration
}

function epochIsInitialized(address arg1, uint128 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor4[address(arg1)][arg2 << 128].field_256)
}

function epoch1Start() payable {
    return epoch1Start
}

function balanceOf(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return balanceOf[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function getCurrentEpoch() payable {
    if block.timestamp < epoch1Start:
        return 0
    if not epochDuration:
        revert with 'NH{q', 18
    if block.timestamp - epoch1Start / epochDuration > -2:
        revert with 'NH{q', 17
    return uint128((block.timestamp - epoch1Start / epochDuration) + 1)
}

function getEpochPoolSize(address arg1, uint128 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor4[address(arg1)][arg2 << 128].field_256:
        return stor4[address(arg1)][arg2 << 128].field_0
    if not stor4[address(arg1)][0].field_256:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function computeNewMultiplier(uint256 arg1, uint128 arg2, uint256 arg3, uint128 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if arg3 and arg4 > -1 / arg3:
        revert with 'NH{q', 17
    if arg1 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 * arg2 / 10^18 > -(arg3 * arg4 / 10^18) - 1:
        revert with 'NH{q', 17
    if (arg1 * arg2 / 10^18) + (arg3 * arg4 / 10^18) and 10^18 > -1 / (arg1 * arg2 / 10^18) + (arg3 * arg4 / 10^18):
        revert with 'NH{q', 17
    if not arg1 + arg3:
        revert with 'NH{q', 18
    return uint128((10^18 * arg1 * arg2 / 10^18) + (10^18 * arg3 * arg4 / 10^18) / arg1 + arg3)
}

function emergencyWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < epoch1Start:
        if 0 < stor6[address(arg1)]:
            revert with 'NH{q', 17
        if uint128(-stor6[address(arg1)]) < 10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'At least 10 epochs must pass without success'
    else:
        if not epochDuration:
            revert with 'NH{q', 18
        if block.timestamp - epoch1Start / epochDuration > -2:
            revert with 'NH{q', 17
        if uint128((block.timestamp - epoch1Start / epochDuration) + 1) < stor6[address(arg1)]:
            revert with 'NH{q', 17
        if uint128(uint128((block.timestamp - epoch1Start / epochDuration) + 1) - stor6[address(arg1)]) < 10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'At least 10 epochs must pass without success'
    if balanceOf[address(msg.sender)][address(arg1)] <= 0:
        revert with 0, 'Amount must be > 0'
    balanceOf[address(msg.sender)][address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balanceOf[address(msg.sender)][address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit EmergencyWithdraw(balanceOf[address(msg.sender)][address(arg1)], msg.sender, arg1);
}

function currentEpochMultiplier() payable {
    if block.timestamp < epoch1Start:
        if False and epochDuration > 0:
            revert with 'NH{q', 17
        if epoch1Start > -1:
            revert with 'NH{q', 17
        if epoch1Start < block.timestamp:
            revert with 'NH{q', 17
        if epoch1Start - block.timestamp and 10^18 > -1 / epoch1Start - block.timestamp:
            revert with 'NH{q', 17
        if not epochDuration:
            revert with 'NH{q', 18
        return uint128((10^18 * epoch1Start) - (10^18 * block.timestamp) / epochDuration)
    if not epochDuration:
        revert with 'NH{q', 18
    if block.timestamp - epoch1Start / epochDuration > -2:
        revert with 'NH{q', 17
    if uint128((block.timestamp - epoch1Start / epochDuration) + 1) and epochDuration > -1 / uint128((block.timestamp - epoch1Start / epochDuration) + 1):
        revert with 'NH{q', 17
    if epoch1Start > (-1 * uint128((block.timestamp - epoch1Start / epochDuration) + 1) * epochDuration) - 1:
        revert with 'NH{q', 17
    if epoch1Start + (uint128((block.timestamp - epoch1Start / epochDuration) + 1) * epochDuration) < block.timestamp:
        revert with 'NH{q', 17
    if epoch1Start + (uint128((block.timestamp - epoch1Start / epochDuration) + 1) * epochDuration) - block.timestamp and 10^18 > -1 / epoch1Start + (uint128((block.timestamp - epoch1Start / epochDuration) + 1) * epochDuration) - block.timestamp:
        revert with 'NH{q', 17
    if not epochDuration:
        revert with 'NH{q', 18
    return uint128((10^18 * epoch1Start) + (10^18 * uint128((block.timestamp - epoch1Start / epochDuration) + 1) * epochDuration) - (10^18 * block.timestamp) / epochDuration)
}

function manualEpochInit(address[] arg1, uint128 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg2 == arg2
    if block.timestamp < epoch1Start:
        if arg2 > 0:
            revert with 0, 'can't init a future epoch'
    else:
        if not epochDuration:
            revert with 'NH{q', 18
        if block.timestamp - epoch1Start / epochDuration > -2:
            revert with 'NH{q', 17
        if arg2 > uint128((block.timestamp - epoch1Start / epochDuration) + 1):
            revert with 0, 'can't init a future epoch'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = arg2
        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
        if not arg2:
            stor4[mem[(32 * idx) + 140 len 20]][arg2 << 128].field_0 = 0
        else:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if stor4[mem[(32 * idx) + 140 len 20]][arg2 << 128].field_256:
                revert with 0, 'Staking: epoch already initialized'
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if arg2 < 1:
                revert with 'NH{q', 17
            if not stor4[mem[(32 * idx) + 140 len 20]][arg2 - 1 << 128].field_256:
                revert with 0, 'Staking: previous epoch not initialized'
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if arg2 < 1:
                revert with 'NH{q', 17
            mem[0] = uint128(arg2 - 1)
            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 4)
            stor4[mem[(32 * idx) + 140 len 20]][arg2 << 128].field_0 = stor4[mem[(32 * idx) + 140 len 20]][arg2 - 1 << 128].field_0
        stor4[mem[(32 * idx) + 140 len 20]][arg2 << 128].field_256 = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(arg1.length) + 97] = 32
    mem[floor32(arg1.length) + 129] = arg1.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < arg1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit ManualEpochInit(mem[mem[64] len floor32(arg1.length) + (32 * arg1.length) + -mem[64] + 161], msg.sender, arg2);
}

function getEpochUserBalance(address arg1, address arg2, uint128 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor5[address(arg1)][address(arg2)].field_0:
        return 0
    if 0 >= stor5[address(arg1)][address(arg2)].field_0:
        revert with 'NH{q', 50
    if arg3 < stor5[address(arg1)][address(arg2)].field_0:
        return 0
    if stor5[address(arg1)][address(arg2)].field_0 < 1:
        revert with 'NH{q', 17
    if stor5[address(arg1)][address(arg2)].field_0 - 1 >= stor5[address(arg1)][address(arg2)].field_0:
        revert with 'NH{q', 50
    if arg3 >= stor5[address(arg1)][address(arg2)][stor5[address(arg1)][address(arg2)].field_0].field_0:
        if stor5[address(arg1)][address(arg2)].field_0 - 1 >= stor5[address(arg1)][address(arg2)].field_0:
            revert with 'NH{q', 50
        if stor5[address(arg1)][address(arg2)][stor5[address(arg1)][address(arg2)].field_0].field_0 > -stor5[address(arg1)][address(arg2)][stor5[address(arg1)][address(arg2)].field_0].field_0 - 1:
            revert with 'NH{q', 17
        if stor5[address(arg1)][address(arg2)][stor5[address(arg1)][address(arg2)].field_0].field_0 + stor5[address(arg1)][address(arg2)][stor5[address(arg1)][address(arg2)].field_0].field_0 and stor5[address(arg1)][address(arg2)][stor5[address(arg1)][address(arg2)].field_0].field_0 > -1 / stor5[address(arg1)][address(arg2)][stor5[address(arg1)][address(arg2)].field_0].field_0 + stor5[address(arg1)][address(arg2)][stor5[address(arg1)][address(arg2)].field_0].field_0:
            revert with 'NH{q', 17
        return ((stor5[address(arg1)][address(arg2)][stor5[address(arg1)][address(arg2)].field_0].field_0 * stor5[address(arg1)][address(arg2)][stor5[address(arg1)][address(arg2)].field_0].field_0) + (stor5[address(arg1)][address(arg2)][stor5[address(arg1)][address(arg2)].field_0].field_0 * stor5[address(arg1)][address(arg2)][stor5[address(arg1)][address(arg2)].field_0].field_0) / 10^18)
    idx = 0
    while stor5[address(arg1)][address(arg2)].field_0 - 1 > idx:
        if stor5[address(arg1)][address(arg2)].field_0 > -idx:
            revert with 'NH{q', 17
        if stor5[address(arg1)][address(arg2)].field_0 + idx - 1 > -2:
            revert with 'NH{q', 17
        if stor5[address(arg1)][address(arg2)].field_0 + idx / 2 >= stor5[address(arg1)][address(arg2)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg2), sha3(address(arg1), 5))
        if stor5[address(arg1)][address(arg2)][0.5 / stor5[address(arg1)][address(arg2)].field_0 + idx].field_0 <= arg3:
            idx = stor5[address(arg1)][address(arg2)].field_0 + idx / 2
            continue 
        if stor5[address(arg1)][address(arg2)].field_0 + idx / 2 < 1:
            revert with 'NH{q', 17
        idx = idx
        continue 
    if idx >= stor5[address(arg1)][address(arg2)].field_0:
        revert with 'NH{q', 50
    if stor5[address(arg1)][address(arg2)][idx].field_256 > -stor5[address(arg1)][address(arg2)][idx].field_512 - 1:
        revert with 'NH{q', 17
    if stor5[address(arg1)][address(arg2)][idx].field_256 + stor5[address(arg1)][address(arg2)][idx].field_512 and stor5[address(arg1)][address(arg2)][idx].field_128 > -1 / stor5[address(arg1)][address(arg2)][idx].field_256 + stor5[address(arg1)][address(arg2)][idx].field_512:
        revert with 'NH{q', 17
    return ((stor5[address(arg1)][address(arg2)][idx].field_256 * stor5[address(arg1)][address(arg2)][idx].field_0) + (stor5[address(arg1)][address(arg2)][idx].field_512 * stor5[address(arg1)][address(arg2)][idx].field_0) / 10^18)
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if balanceOf[address(msg.sender)][address(arg1)] < arg2:
        revert with 0, 'Staking: balance too small'
    if balanceOf[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)][address(arg1)] -= arg2
    mem[132] = arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp < epoch1Start:
        stor6[address(arg1)] = 0
        if not stor4[address(arg1)][0].field_256:
            mem[ceil32(return_data.size) + 128] = arg1
            if block.timestamp >= epoch1Start:
                if not epochDuration:
                    revert with 'NH{q', 18
                if block.timestamp - epoch1Start / epochDuration > -2:
                    revert with 'NH{q', 17
                if 0 > uint128((block.timestamp - epoch1Start / epochDuration) + 1):
                    revert with 0, 'can't init a future epoch'
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 'NH{q', 50
                mem[0] = 0
                mem[32] = sha3(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20], 4)
                stor4[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]][0].field_0 = 0
                stor4[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]][0].field_256 = 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 160] = 32
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 224
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit ManualEpochInit(Array(len=1, data=mem[ceil32(return_data.size) + 224]), msg.sender, 0);
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        stor4[address(arg1)][1].field_0 = ext_call.return_data[0]
        stor4[address(arg1)][1].field_256 = 1
        if stor5[address(msg.sender)][address(arg1)].field_0 < 1:
            revert with 'NH{q', 17
        if stor5[address(msg.sender)][address(arg1)].field_0 - 1 >= stor5[address(msg.sender)][address(arg1)].field_0:
            revert with 'NH{q', 50
        if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 < 0:
            stor5[address(msg.sender)][address(arg1)].field_0++
            stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 0
            stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_256 = 0
            stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_128 = 0
            stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_144 = 15258789062500
            stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_192 = 0
            stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_256 = balanceOf[address(msg.sender)][address(arg1)]
            stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_512 = 0
            if stor4[address(arg1)][0].field_0 < arg2:
                revert with 'NH{q', 17
            stor4[address(arg1)][0].field_0 -= arg2
        else:
            if stor5[address(msg.sender)][address(arg1)].field_0 - 1 >= stor5[address(msg.sender)][address(arg1)].field_0:
                revert with 'NH{q', 50
            if not stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                if stor5[address(msg.sender)][address(arg1)].field_0 - 1 >= stor5[address(msg.sender)][address(arg1)].field_0:
                    revert with 'NH{q', 50
                stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = balanceOf[address(msg.sender)][address(arg1)]
                stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 0
                stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 0
                stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 15258789062500
                stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 0
                if stor4[address(arg1)][0].field_0 < arg2:
                    revert with 'NH{q', 17
                stor4[address(arg1)][0].field_0 -= arg2
            else:
                if stor5[address(msg.sender)][address(arg1)].field_0 - 1 < 1:
                    revert with 'NH{q', 17
                if stor5[address(msg.sender)][address(arg1)].field_0 - 2 >= stor5[address(msg.sender)][address(arg1)].field_0:
                    revert with 'NH{q', 50
                if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 > -stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 - 1:
                    revert with 'NH{q', 17
                if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 + stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 and stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 > -1 / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 + stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                    revert with 'NH{q', 17
                if arg2 >= stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                    if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 < arg2 - stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                        revert with 'NH{q', 17
                    stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 - arg2 + stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0
                    stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 0
                    stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 0
                    stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 15258789062500
                    stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 0
                else:
                    if (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18 < stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                        revert with 'NH{q', 17
                    if ((stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 and 10^18 > -1 / ((stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                        revert with 'NH{q', 17
                    if not stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                        revert with 'NH{q', 18
                    if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 < arg2:
                        revert with 'NH{q', 17
                    stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 -= arg2
                    if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 and 10^18 > -1 / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                        revert with 'NH{q', 17
                    if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 and uint128((10^18 * (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) > -1 / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                        revert with 'NH{q', 17
                    if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 > -stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 - 1:
                        revert with 'NH{q', 17
                    if 10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 / 10^18 > -(stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * uint128((10^18 * (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 / 10^18) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * uint128((10^18 * (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) and 10^18 > -1 / (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 / 10^18) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * uint128((10^18 * (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18):
                        revert with 'NH{q', 17
                    if not stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 + stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                        revert with 'NH{q', 18
                    stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = uint128((10^18 * 10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 / 10^18) + (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * uint128((10^18 * (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 + stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0)
                if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 > -stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 - 1:
                    revert with 'NH{q', 17
                if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 + stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 and stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 > -1 / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 + stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                    revert with 'NH{q', 17
                if (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18 < (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18:
                    revert with 'NH{q', 17
                if stor4[address(arg1)][0].field_0 < 0:
                    revert with 'NH{q', 17
                if stor5[address(msg.sender)][address(arg1)].field_0 - 1 >= stor5[address(msg.sender)][address(arg1)].field_0:
                    revert with 'NH{q', 50
                stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = balanceOf[address(msg.sender)][address(arg1)]
    else:
        if not epochDuration:
            revert with 'NH{q', 18
        if block.timestamp - epoch1Start / epochDuration > -2:
            revert with 'NH{q', 17
        stor6[address(arg1)] = uint128((block.timestamp - epoch1Start / epochDuration) + 1)
        if not stor4[address(arg1)][(block.timestamp - stor1 / stor2) + 1 << 128].field_256:
            mem[ceil32(return_data.size) + 128] = arg1
            if block.timestamp < epoch1Start:
                if uint128((block.timestamp - epoch1Start / epochDuration) + 1) > 0:
                    revert with 0, 'can't init a future epoch'
            else:
                if not epochDuration:
                    revert with 'NH{q', 18
                if block.timestamp - epoch1Start / epochDuration > -2:
                    revert with 'NH{q', 17
                if uint128((block.timestamp - epoch1Start / epochDuration) + 1) > uint128((block.timestamp - epoch1Start / epochDuration) + 1):
                    revert with 0, 'can't init a future epoch'
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 'NH{q', 50
                mem[0] = uint128((block.timestamp - epoch1Start / epochDuration) + 1)
                mem[32] = sha3(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20], 4)
                if not uint128((block.timestamp - epoch1Start / epochDuration) + 1):
                    stor4[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]][(block.timestamp - stor1 / stor2) + 1 << 128].field_0 = 0
                else:
                    if idx >= 1:
                        revert with 'NH{q', 50
                    if stor4[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]][(block.timestamp - stor1 / stor2) + 1 << 128].field_256:
                        revert with 0, 'Staking: epoch already initialized'
                    if idx >= 1:
                        revert with 'NH{q', 50
                    if uint128((block.timestamp - epoch1Start / epochDuration) + 1) < 1:
                        revert with 'NH{q', 17
                    if not stor4[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]][uint128((block.timestamp - stor1 / stor2) + 1) - 1 << 128].field_256:
                        revert with 0, 'Staking: previous epoch not initialized'
                    if idx >= 1:
                        revert with 'NH{q', 50
                    if uint128((block.timestamp - epoch1Start / epochDuration) + 1) < 1:
                        revert with 'NH{q', 17
                    mem[0] = uint128(uint128((block.timestamp - epoch1Start / epochDuration) + 1) - 1)
                    mem[32] = sha3(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20], 4)
                    stor4[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]][(block.timestamp - stor1 / stor2) + 1 << 128].field_0 = stor4[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]][uint128((block.timestamp - stor1 / stor2) + 1) - 1 << 128].field_0
                stor4[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]][(block.timestamp - stor1 / stor2) + 1 << 128].field_256 = 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 160] = 32
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 224
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit ManualEpochInit(Array(len=1, data=mem[ceil32(return_data.size) + 224]), msg.sender, uint128((block.timestamp - epoch1Start / epochDuration) + 1));
        if uint128((block.timestamp - epoch1Start / epochDuration) + 1) > test266151307():
            revert with 'NH{q', 17
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        stor4[address(arg1)][uint128((block.timestamp - stor1 / stor2) + 1) + 1 << 128].field_0 = ext_call.return_data[0]
        stor4[address(arg1)][uint128((block.timestamp - stor1 / stor2) + 1) + 1 << 128].field_256 = 1
        if stor5[address(msg.sender)][address(arg1)].field_0 < 1:
            revert with 'NH{q', 17
        if stor5[address(msg.sender)][address(arg1)].field_0 - 1 >= stor5[address(msg.sender)][address(arg1)].field_0:
            revert with 'NH{q', 50
        if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 < uint128((block.timestamp - epoch1Start / epochDuration) + 1):
            stor5[address(msg.sender)][address(arg1)].field_0++
            stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = uint128((block.timestamp - epoch1Start / epochDuration) + 1)
            stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_128 = 0
            stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_144 = 15258789062500
            stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_192 = 0
            stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_256 = balanceOf[address(msg.sender)][address(arg1)]
            stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_512 = 0
            if stor4[address(arg1)][(block.timestamp - stor1 / stor2) + 1 << 128].field_0 < arg2:
                revert with 'NH{q', 17
            stor4[address(arg1)][(block.timestamp - stor1 / stor2) + 1 << 128].field_0 -= arg2
        else:
            if stor5[address(msg.sender)][address(arg1)].field_0 - 1 >= stor5[address(msg.sender)][address(arg1)].field_0:
                revert with 'NH{q', 50
            if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 == uint128((block.timestamp - epoch1Start / epochDuration) + 1):
                if stor5[address(msg.sender)][address(arg1)].field_0 - 1 >= stor5[address(msg.sender)][address(arg1)].field_0:
                    revert with 'NH{q', 50
                stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = balanceOf[address(msg.sender)][address(arg1)]
                stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 0
                stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 0
                stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 15258789062500
                stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 0
                if stor4[address(arg1)][(block.timestamp - stor1 / stor2) + 1 << 128].field_0 < arg2:
                    revert with 'NH{q', 17
                stor4[address(arg1)][(block.timestamp - stor1 / stor2) + 1 << 128].field_0 -= arg2
            else:
                if stor5[address(msg.sender)][address(arg1)].field_0 - 1 < 1:
                    revert with 'NH{q', 17
                if stor5[address(msg.sender)][address(arg1)].field_0 - 2 >= stor5[address(msg.sender)][address(arg1)].field_0:
                    revert with 'NH{q', 50
                if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 > -stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 - 1:
                    revert with 'NH{q', 17
                if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 + stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 and stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 > -1 / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 + stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                    revert with 'NH{q', 17
                if arg2 >= stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                    if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 < arg2 - stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                        revert with 'NH{q', 17
                    stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 - arg2 + stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0
                    stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 0
                    stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 0
                    stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 15258789062500
                    stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = 0
                else:
                    if (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18 < stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                        revert with 'NH{q', 17
                    if ((stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 and 10^18 > -1 / ((stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                        revert with 'NH{q', 17
                    if not stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                        revert with 'NH{q', 18
                    if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 < arg2:
                        revert with 'NH{q', 17
                    stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 -= arg2
                    if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 and 10^18 > -1 / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                        revert with 'NH{q', 17
                    if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 and uint128((10^18 * (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) > -1 / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                        revert with 'NH{q', 17
                    if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 > -stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 - 1:
                        revert with 'NH{q', 17
                    if 10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 / 10^18 > -(stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * uint128((10^18 * (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - 1:
                        revert with 'NH{q', 17
                    if (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 / 10^18) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * uint128((10^18 * (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) and 10^18 > -1 / (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 / 10^18) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * uint128((10^18 * (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18):
                        revert with 'NH{q', 17
                    if not stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 + stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                        revert with 'NH{q', 18
                    stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = uint128((10^18 * 10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 / 10^18) + (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * uint128((10^18 * (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) - (10^18 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18) / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 + stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0)
                if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 > -stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 - 1:
                    revert with 'NH{q', 17
                if stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 + stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 and stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 > -1 / stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 + stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0:
                    revert with 'NH{q', 17
                if (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18 < (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) + (stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 * stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0) / 10^18:
                    revert with 'NH{q', 17
                if stor4[address(arg1)][(block.timestamp - stor1 / stor2) + 1 << 128].field_0 < 0:
                    revert with 'NH{q', 17
                if stor5[address(msg.sender)][address(arg1)].field_0 - 1 >= stor5[address(msg.sender)][address(arg1)].field_0:
                    revert with 'NH{q', 50
                stor5[address(msg.sender)][address(arg1)][stor5[address(msg.sender)][address(arg1)].field_0].field_0 = balanceOf[address(msg.sender)][address(arg1)]
    emit Withdraw(arg2, msg.sender, arg1);
    stor0 = 1
}



}
