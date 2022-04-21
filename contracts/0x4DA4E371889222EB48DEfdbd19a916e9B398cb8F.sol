contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address minterAddress;
mapping of uint256 sub_24c10d0d;
mapping of uint256 claimAmounts;
uint256 lockEndTime;
uint256 lockRate;
uint256 startReleaseTime;
uint256 releasePeriod;

function minter() payable {
    return minterAddress
}

function lockRate() payable {
    return lockRate
}

function sub_24c10d0d(?) payable {
    require calldata.size - 4 >= 32
    return sub_24c10d0d[arg1]
}

function lockEndTime() payable {
    return lockEndTime
}

function releasePeriod() payable {
    return releasePeriod
}

function claimAmounts(address arg1) payable {
    require calldata.size - 4 >= 32
    return claimAmounts[arg1]
}

function startReleaseTime() payable {
    return startReleaseTime
}

function owner() payable {
    return owner
}

function token() payable {
    return tokenAddress
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

function setMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    minterAddress = arg1
}

function sub_e0a0899a(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    startReleaseTime = arg1
    releasePeriod = arg2
}

function setLock(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    lockEndTime = arg1
    lockRate = arg2
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

function canClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= startReleaseTime:
        return 0
    if releasePeriod + startReleaseTime < startReleaseTime:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp >= releasePeriod + startReleaseTime:
        if claimAmounts[address(arg1)] > sub_24c10d0d[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (sub_24c10d0d[address(arg1)] - claimAmounts[address(arg1)])
    if startReleaseTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_24c10d0d[address(arg1)]:
        if releasePeriod <= 0:
            revert with 0, 'SafeMath: division by zero'
        require releasePeriod
        if claimAmounts[address(arg1)] > 0 / releasePeriod:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / releasePeriod) - claimAmounts[address(arg1)])
    if (block.timestamp * sub_24c10d0d[address(arg1)]) - (startReleaseTime * sub_24c10d0d[address(arg1)]) / sub_24c10d0d[address(arg1)] != block.timestamp - startReleaseTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if releasePeriod <= 0:
        revert with 0, 'SafeMath: division by zero'
    require releasePeriod
    if claimAmounts[address(arg1)] > (block.timestamp * sub_24c10d0d[address(arg1)]) - (startReleaseTime * sub_24c10d0d[address(arg1)]) / releasePeriod:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((block.timestamp * sub_24c10d0d[address(arg1)]) - (startReleaseTime * sub_24c10d0d[address(arg1)]) / releasePeriod) - claimAmounts[address(arg1)])
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= startReleaseTime:
        if 0 < arg1:
            revert with 0, 'invalid amount'
    else:
        if releasePeriod + startReleaseTime < startReleaseTime:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp >= releasePeriod + startReleaseTime:
            if claimAmounts[address(msg.sender)] > sub_24c10d0d[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_24c10d0d[address(msg.sender)] - claimAmounts[address(msg.sender)] < arg1:
                revert with 0, 'invalid amount'
        else:
            if startReleaseTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_24c10d0d[address(msg.sender)]:
                if releasePeriod <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require releasePeriod
                if claimAmounts[address(msg.sender)] > 0 / releasePeriod:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (0 / releasePeriod) - claimAmounts[address(msg.sender)] < arg1:
                    revert with 0, 'invalid amount'
            else:
                if (block.timestamp * sub_24c10d0d[address(msg.sender)]) - (startReleaseTime * sub_24c10d0d[address(msg.sender)]) / sub_24c10d0d[address(msg.sender)] != block.timestamp - startReleaseTime:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if releasePeriod <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require releasePeriod
                if claimAmounts[address(msg.sender)] > (block.timestamp * sub_24c10d0d[address(msg.sender)]) - (startReleaseTime * sub_24c10d0d[address(msg.sender)]) / releasePeriod:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((block.timestamp * sub_24c10d0d[address(msg.sender)]) - (startReleaseTime * sub_24c10d0d[address(msg.sender)]) / releasePeriod) - claimAmounts[address(msg.sender)] < arg1:
                    revert with 0, 'invalid amount'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 + claimAmounts[msg.sender] < claimAmounts[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    claimAmounts[msg.sender] += arg1
}

function mint(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if minterAddress != msg.sender:
        revert with 0, 'no minter'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg2:
        if arg3 > lockEndTime:
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_24c10d0d[address(arg1)] < sub_24c10d0d[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if arg4 <= lockEndTime:
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_24c10d0d[address(arg1)] < sub_24c10d0d[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if arg3 > arg4:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 > lockEndTime:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg4 - arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg4 - arg3
                if 0 / arg4 - arg3 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2 - (0 / arg4 - arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / arg4 - arg3) + sub_24c10d0d[address(arg1)] < sub_24c10d0d[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_24c10d0d[address(arg1)] += 0 / arg4 - arg3
    else:
        if lockRate * arg2 / arg2 != lockRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg3 > lockEndTime:
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_24c10d0d[address(arg1)] < sub_24c10d0d[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if arg4 <= lockEndTime:
                if lockRate * arg2 / 100 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2 - (lockRate * arg2 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (lockRate * arg2 / 100) + sub_24c10d0d[address(arg1)] < sub_24c10d0d[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_24c10d0d[address(arg1)] += lockRate * arg2 / 100
            else:
                if arg3 > arg4:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg3 > lockEndTime:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not lockRate * arg2 / 100:
                    if arg4 - arg3 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg4 - arg3
                    if 0 / arg4 - arg3 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), arg2 - (0 / arg4 - arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (0 / arg4 - arg3) + sub_24c10d0d[address(arg1)] < sub_24c10d0d[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_24c10d0d[address(arg1)] += 0 / arg4 - arg3
                else:
                    if (lockEndTime * lockRate * arg2 / 100) - (arg3 * lockRate * arg2 / 100) / lockRate * arg2 / 100 != lockEndTime - arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg4 - arg3 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg4 - arg3
                    if (lockEndTime * lockRate * arg2 / 100) - (arg3 * lockRate * arg2 / 100) / arg4 - arg3 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), arg2 - ((lockEndTime * lockRate * arg2 / 100) - (arg3 * lockRate * arg2 / 100) / arg4 - arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ((lockEndTime * lockRate * arg2 / 100) - (arg3 * lockRate * arg2 / 100) / arg4 - arg3) + sub_24c10d0d[address(arg1)] < sub_24c10d0d[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_24c10d0d[address(arg1)] += (lockEndTime * lockRate * arg2 / 100) - (arg3 * lockRate * arg2 / 100) / arg4 - arg3
}



}
