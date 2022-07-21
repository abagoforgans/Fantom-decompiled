contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#  - emergencyWithdraw()
#
address owner;
address depositTokenAddress;
address rewardTokenAddress;
address feeAddr;
uint256 tokenPerSecond;
address stor6;
uint256 stor7;
uint256 stor8;
uint16 stor9;
mapping of struct userInfo;
uint256 startTime;
uint256 endTime;
uint256 burnMultiplier;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function endTime() payable {
    return endTime
}

function burnMultiplier() payable {
    return burnMultiplier
}

function feeAddr() payable {
    return feeAddr
}

function tokenPerSecond() payable {
    return tokenPerSecond
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function depositToken() payable {
    return depositTokenAddress
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function poolInfo() payable {
    return stor6, stor7, stor8, stor9
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    endTime = block.timestamp
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setDepositFee(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = arg1
    emit 0x228b7910: arg1, msg.sender
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeAddr != msg.sender:
        revert with 0, 'setFeeAddress: Forbidden'
    feeAddr = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function adjustBlockEnd() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not tokenPerSecond:
        revert with 0, 18
    if block.timestamp > !(ext_call.return_data[0] / tokenPerSecond):
        revert with 0, 17
    endTime = block.timestamp + (ext_call.return_data[0] / tokenPerSecond)
}

function updateStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= startTime:
        revert with 0, 'Staking was started already'
    require block.timestamp < arg1
    startTime = arg1
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not tokenPerSecond:
        revert with 0, 18
    if block.timestamp > !(ext_call.return_data[0] / tokenPerSecond):
        revert with 0, 17
    endTime = block.timestamp + (ext_call.return_data[0] / tokenPerSecond)
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > startTime:
        if arg2 > endTime:
            if endTime < startTime:
                return 0
            if arg1 > endTime:
                return 0
            if endTime < arg1:
                revert with 0, 17
            return (endTime - arg1)
        if arg2 < startTime:
            return 0
        if arg1 > endTime:
            return 0
        if arg2 < arg1:
            revert with 0, 17
        return (arg2 - arg1)
    if arg2 > endTime:
        if endTime < startTime:
            return 0
        if startTime > endTime:
            return 0
        if endTime < startTime:
            revert with 0, 17
        return (endTime - startTime)
    if arg2 < startTime:
        return 0
    if startTime > endTime:
        return 0
    if arg2 < startTime:
        revert with 0, 17
    return (arg2 - startTime)
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'not enough token'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call rewardTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function updatePool() payable {
    if block.timestamp > stor7:
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if stor7 > startTime:
                if block.timestamp > endTime:
                    if endTime < startTime:
                        if False and tokenPerSecond > 0:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if stor8 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        stor8 += 0 / ext_call.return_data[0]
                    else:
                        if stor7 > endTime:
                            if False and tokenPerSecond > 0:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !(0 / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += 0 / ext_call.return_data[0]
                        else:
                            if endTime < stor7:
                                revert with 0, 17
                            if endTime - stor7 and tokenPerSecond > -1 / endTime - stor7:
                                revert with 0, 17
                            if (endTime * tokenPerSecond) - (stor7 * tokenPerSecond) and 10^18 > -1 / (endTime * tokenPerSecond) - (stor7 * tokenPerSecond):
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !((10^18 * endTime * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += (10^18 * endTime * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0]
                else:
                    if block.timestamp < startTime:
                        if False and tokenPerSecond > 0:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if stor8 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        stor8 += 0 / ext_call.return_data[0]
                    else:
                        if stor7 > endTime:
                            if False and tokenPerSecond > 0:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !(0 / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += 0 / ext_call.return_data[0]
                        else:
                            if block.timestamp < stor7:
                                revert with 0, 17
                            if block.timestamp - stor7 and tokenPerSecond > -1 / block.timestamp - stor7:
                                revert with 0, 17
                            if (block.timestamp * tokenPerSecond) - (stor7 * tokenPerSecond) and 10^18 > -1 / (block.timestamp * tokenPerSecond) - (stor7 * tokenPerSecond):
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !((10^18 * block.timestamp * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += (10^18 * block.timestamp * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0]
            else:
                if block.timestamp > endTime:
                    if endTime < startTime:
                        if False and tokenPerSecond > 0:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if stor8 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        stor8 += 0 / ext_call.return_data[0]
                    else:
                        if startTime > endTime:
                            if False and tokenPerSecond > 0:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !(0 / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += 0 / ext_call.return_data[0]
                        else:
                            if endTime < startTime:
                                revert with 0, 17
                            if endTime - startTime and tokenPerSecond > -1 / endTime - startTime:
                                revert with 0, 17
                            if (endTime * tokenPerSecond) - (startTime * tokenPerSecond) and 10^18 > -1 / (endTime * tokenPerSecond) - (startTime * tokenPerSecond):
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !((10^18 * endTime * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += (10^18 * endTime * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0]
                else:
                    if block.timestamp < startTime:
                        if False and tokenPerSecond > 0:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if stor8 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        stor8 += 0 / ext_call.return_data[0]
                    else:
                        if startTime > endTime:
                            if False and tokenPerSecond > 0:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !(0 / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += 0 / ext_call.return_data[0]
                        else:
                            if block.timestamp < startTime:
                                revert with 0, 17
                            if block.timestamp - startTime and tokenPerSecond > -1 / block.timestamp - startTime:
                                revert with 0, 17
                            if (block.timestamp * tokenPerSecond) - (startTime * tokenPerSecond) and 10^18 > -1 / (block.timestamp * tokenPerSecond) - (startTime * tokenPerSecond):
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !((10^18 * block.timestamp * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += (10^18 * block.timestamp * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0]
        stor7 = block.timestamp
}

function setTokenPerSecond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp > stor7:
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if stor7 > startTime:
                if block.timestamp > endTime:
                    if endTime < startTime:
                        if False and tokenPerSecond > 0:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if stor8 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        stor8 += 0 / ext_call.return_data[0]
                    else:
                        if stor7 > endTime:
                            if False and tokenPerSecond > 0:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !(0 / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += 0 / ext_call.return_data[0]
                        else:
                            if endTime < stor7:
                                revert with 0, 17
                            if endTime - stor7 and tokenPerSecond > -1 / endTime - stor7:
                                revert with 0, 17
                            if (endTime * tokenPerSecond) - (stor7 * tokenPerSecond) and 10^18 > -1 / (endTime * tokenPerSecond) - (stor7 * tokenPerSecond):
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !((10^18 * endTime * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += (10^18 * endTime * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0]
                else:
                    if block.timestamp < startTime:
                        if False and tokenPerSecond > 0:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if stor8 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        stor8 += 0 / ext_call.return_data[0]
                    else:
                        if stor7 > endTime:
                            if False and tokenPerSecond > 0:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !(0 / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += 0 / ext_call.return_data[0]
                        else:
                            if block.timestamp < stor7:
                                revert with 0, 17
                            if block.timestamp - stor7 and tokenPerSecond > -1 / block.timestamp - stor7:
                                revert with 0, 17
                            if (block.timestamp * tokenPerSecond) - (stor7 * tokenPerSecond) and 10^18 > -1 / (block.timestamp * tokenPerSecond) - (stor7 * tokenPerSecond):
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !((10^18 * block.timestamp * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += (10^18 * block.timestamp * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0]
            else:
                if block.timestamp > endTime:
                    if endTime < startTime:
                        if False and tokenPerSecond > 0:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if stor8 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        stor8 += 0 / ext_call.return_data[0]
                    else:
                        if startTime > endTime:
                            if False and tokenPerSecond > 0:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !(0 / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += 0 / ext_call.return_data[0]
                        else:
                            if endTime < startTime:
                                revert with 0, 17
                            if endTime - startTime and tokenPerSecond > -1 / endTime - startTime:
                                revert with 0, 17
                            if (endTime * tokenPerSecond) - (startTime * tokenPerSecond) and 10^18 > -1 / (endTime * tokenPerSecond) - (startTime * tokenPerSecond):
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !((10^18 * endTime * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += (10^18 * endTime * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0]
                else:
                    if block.timestamp < startTime:
                        if False and tokenPerSecond > 0:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if stor8 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        stor8 += 0 / ext_call.return_data[0]
                    else:
                        if startTime > endTime:
                            if False and tokenPerSecond > 0:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !(0 / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += 0 / ext_call.return_data[0]
                        else:
                            if block.timestamp < startTime:
                                revert with 0, 17
                            if block.timestamp - startTime and tokenPerSecond > -1 / block.timestamp - startTime:
                                revert with 0, 17
                            if (block.timestamp * tokenPerSecond) - (startTime * tokenPerSecond) and 10^18 > -1 / (block.timestamp * tokenPerSecond) - (startTime * tokenPerSecond):
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if stor8 > !((10^18 * block.timestamp * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0]):
                                revert with 0, 17
                            stor8 += (10^18 * block.timestamp * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0]
        stor7 = block.timestamp
    tokenPerSecond = arg1
}

function pendingToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= stor7:
        if userInfo[address(arg1)].field_0 and stor8 > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * stor8 / 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * stor8 / 10^18) - userInfo[address(arg1)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[address(arg1)].field_0 and stor8 > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * stor8 / 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * stor8 / 10^18) - userInfo[address(arg1)].field_256)
    if stor7 > startTime:
        if block.timestamp > endTime:
            if endTime < startTime:
                if False and tokenPerSecond > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if stor8 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if userInfo[address(arg1)].field_0 and stor8 + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if (stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18 < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return (((stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
            if stor7 > endTime:
                if False and tokenPerSecond > 0:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if stor8 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if userInfo[address(arg1)].field_0 and stor8 + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                    revert with 0, 17
                if (stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18 < userInfo[address(arg1)].field_256:
                    revert with 0, 17
                return (((stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
            if endTime < stor7:
                revert with 0, 17
            if endTime - stor7 and tokenPerSecond > -1 / endTime - stor7:
                revert with 0, 17
            if (endTime * tokenPerSecond) - (stor7 * tokenPerSecond) and 10^18 > -1 / (endTime * tokenPerSecond) - (stor7 * tokenPerSecond):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if stor8 > !((10^18 * endTime * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[address(arg1)].field_0 and stor8 + ((10^18 * endTime * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if (stor8 * userInfo[address(arg1)].field_0) + ((10^18 * endTime * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18 < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((stor8 * userInfo[address(arg1)].field_0) + ((10^18 * endTime * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if block.timestamp < startTime:
            if False and tokenPerSecond > 0:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if stor8 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[address(arg1)].field_0 and stor8 + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if (stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18 < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if stor7 > endTime:
            if False and tokenPerSecond > 0:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if stor8 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[address(arg1)].field_0 and stor8 + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if (stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18 < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if block.timestamp < stor7:
            revert with 0, 17
        if block.timestamp - stor7 and tokenPerSecond > -1 / block.timestamp - stor7:
            revert with 0, 17
        if (block.timestamp * tokenPerSecond) - (stor7 * tokenPerSecond) and 10^18 > -1 / (block.timestamp * tokenPerSecond) - (stor7 * tokenPerSecond):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if stor8 > !((10^18 * block.timestamp * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and stor8 + ((10^18 * block.timestamp * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (stor8 * userInfo[address(arg1)].field_0) + ((10^18 * block.timestamp * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((stor8 * userInfo[address(arg1)].field_0) + ((10^18 * block.timestamp * tokenPerSecond) - (10^18 * stor7 * tokenPerSecond) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
    if block.timestamp > endTime:
        if endTime < startTime:
            if False and tokenPerSecond > 0:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if stor8 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[address(arg1)].field_0 and stor8 + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if (stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18 < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if startTime > endTime:
            if False and tokenPerSecond > 0:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if stor8 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[address(arg1)].field_0 and stor8 + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if (stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18 < userInfo[address(arg1)].field_256:
                revert with 0, 17
            return (((stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
        if endTime < startTime:
            revert with 0, 17
        if endTime - startTime and tokenPerSecond > -1 / endTime - startTime:
            revert with 0, 17
        if (endTime * tokenPerSecond) - (startTime * tokenPerSecond) and 10^18 > -1 / (endTime * tokenPerSecond) - (startTime * tokenPerSecond):
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if stor8 > !((10^18 * endTime * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and stor8 + ((10^18 * endTime * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (stor8 * userInfo[address(arg1)].field_0) + ((10^18 * endTime * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((stor8 * userInfo[address(arg1)].field_0) + ((10^18 * endTime * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
    if block.timestamp < startTime:
        if False and tokenPerSecond > 0:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if stor8 > !(0 / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and stor8 + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
    if startTime > endTime:
        if False and tokenPerSecond > 0:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if stor8 > !(0 / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and stor8 + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((stor8 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
    if block.timestamp < startTime:
        revert with 0, 17
    if block.timestamp - startTime and tokenPerSecond > -1 / block.timestamp - startTime:
        revert with 0, 17
    if (block.timestamp * tokenPerSecond) - (startTime * tokenPerSecond) and 10^18 > -1 / (block.timestamp * tokenPerSecond) - (startTime * tokenPerSecond):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if stor8 > !((10^18 * block.timestamp * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and stor8 + ((10^18 * block.timestamp * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if (stor8 * userInfo[address(arg1)].field_0) + ((10^18 * block.timestamp * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18 < userInfo[address(arg1)].field_256:
        revert with 0, 17
    return (((stor8 * userInfo[address(arg1)].field_0) + ((10^18 * block.timestamp * tokenPerSecond) - (10^18 * startTime * tokenPerSecond) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^18) - userInfo[address(arg1)].field_256)
}



}
