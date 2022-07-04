contract main {




// =====================  Runtime code  =====================


#
#  - getDepositorsList(uint256 arg1, uint256 arg2)
#
address owner;
mapping of uint8 stor1;
address trustedDepositTokenAddress;
address trustedRewardTokenAddress;
uint256 disburseAmount;
uint256 disburseDuration;
uint256 adminCanClaimAfter;
uint256 disbursePercentX100;
uint256 contractDeployTime;
uint256 adminClaimableTime;
uint256 lastDisburseTime;
uint256 totalClaimedRewards;
array of struct stor12;
mapping of uint256 stor13;
mapping of uint256 depositedTokens;
mapping of uint256 depositTime;
mapping of uint256 lastClaimedTime;
mapping of uint256 totalEarnedTokens;
mapping of uint256 lastDivPoints;
uint256 totalTokensDisbursed;
uint256 contractBalance;
uint256 totalDivPoints;
uint256 totalTokens;
uint256 stor23;

function disbursePercentX100() payable {
    return disbursePercentX100
}

function trustedDepositTokenAddress() payable {
    return trustedDepositTokenAddress
}

function lastDivPoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastDivPoints[arg1]
}

function getNumberOfHolders() payable {
    return stor12.length
}

function trustedRewardTokenAddress() payable {
    return trustedRewardTokenAddress
}

function depositTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return depositTime[arg1]
}

function totalEarnedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalEarnedTokens[arg1]
}

function totalTokensDisbursed() payable {
    return totalTokensDisbursed
}

function totalTokens() payable {
    return totalTokens
}

function contractBalance() payable {
    return contractBalance
}

function owner() payable {
    return owner
}

function totalDivPoints() payable {
    return totalDivPoints
}

function disburseDuration() payable {
    return disburseDuration
}

function contractDeployTime() payable {
    return contractDeployTime
}

function depositedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return depositedTokens[arg1]
}

function adminClaimableTime() payable {
    return adminClaimableTime
}

function totalClaimedRewards() payable {
    return totalClaimedRewards
}

function adminCanClaimAfter() payable {
    return adminCanClaimAfter
}

function lastDisburseTime() payable {
    return lastDisburseTime
}

function lastClaimedTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastClaimedTime[arg1]
}

function disburseAmount() payable {
    return disburseAmount
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addContractBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(trustedRewardTokenAddress)
    call trustedRewardTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Cannot add balance!'
    require arg1 + contractBalance >= contractBalance
    contractBalance += arg1
}

function getPendingDivs(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor13[address(arg1)]:
        return 0
    if not depositedTokens[address(arg1)]:
        return 0
    require lastDivPoints[address(arg1)] <= totalDivPoints
    if not depositedTokens[address(arg1)]:
        if stor23:
            return ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23)
    else:
        if depositedTokens[address(arg1)]:
            if (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / depositedTokens[address(arg1)] == totalDivPoints - lastDivPoints[address(arg1)]:
                if stor23:
                    return ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23)
    revert
}

function transferAnyOldERC20Token(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if trustedDepositTokenAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x2141646d696e2063616e6e6f74207472616e73666572206f7574206465706f73697420746f6b656e732066726f6d2074686973207661756c74,
                    mem[221 len 7]
    if trustedRewardTokenAddress == arg1:
        if block.timestamp <= adminClaimableTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x7341646d696e2063616e6e6f74205472616e73666572206f75742052657761726420546f6b656e7320596574,
                        mem[208 len 20]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferAnyERC20Token(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if trustedDepositTokenAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x2141646d696e2063616e6e6f74207472616e73666572206f7574206465706f73697420746f6b656e732066726f6d2074686973207661756c74,
                    mem[221 len 7]
    if trustedRewardTokenAddress == arg1:
        if block.timestamp <= adminClaimableTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x7341646d696e2063616e6e6f74205472616e73666572206f75742052657761726420546f6b656e7320596574,
                        mem[208 len 20]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer out tokens!'
}

function getPendingDisbursement() payable {
    require disburseDuration + contractDeployTime >= contractDeployTime
    if block.timestamp <= disburseDuration + contractDeployTime:
        if lastDisburseTime >= block.timestamp:
            if not disburseAmount:
                if not disbursePercentX100 * disburseAmount:
                    if disburseDuration:
                        return (0 / disburseDuration / 10000)
                else:
                    if disbursePercentX100 * disburseAmount:
                        if not 0 / disbursePercentX100 * disburseAmount:
                            if disburseDuration:
                                return (0 / disburseDuration / 10000)
            else:
                if disburseAmount:
                    if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                        if not disbursePercentX100 * disburseAmount:
                            if disburseDuration:
                                return (0 / disburseDuration / 10000)
                        else:
                            if disbursePercentX100 * disburseAmount:
                                if not 0 / disbursePercentX100 * disburseAmount:
                                    if disburseDuration:
                                        return (0 / disburseDuration / 10000)
        else:
            if lastDisburseTime <= block.timestamp:
                if not disburseAmount:
                    if not disbursePercentX100 * disburseAmount:
                        if disburseDuration:
                            return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000)
                    else:
                        if disbursePercentX100 * disburseAmount:
                            if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == block.timestamp - lastDisburseTime:
                                if disburseDuration:
                                    return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000)
                else:
                    if disburseAmount:
                        if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                            if not disbursePercentX100 * disburseAmount:
                                if disburseDuration:
                                    return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000)
                            else:
                                if disbursePercentX100 * disburseAmount:
                                    if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == block.timestamp - lastDisburseTime:
                                        if disburseDuration:
                                            return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000)
    else:
        if lastDisburseTime >= disburseDuration + contractDeployTime:
            if not disburseAmount:
                if not disbursePercentX100 * disburseAmount:
                    if disburseDuration:
                        return (0 / disburseDuration / 10000)
                else:
                    if disbursePercentX100 * disburseAmount:
                        if not 0 / disbursePercentX100 * disburseAmount:
                            if disburseDuration:
                                return (0 / disburseDuration / 10000)
            else:
                if disburseAmount:
                    if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                        if not disbursePercentX100 * disburseAmount:
                            if disburseDuration:
                                return (0 / disburseDuration / 10000)
                        else:
                            if disbursePercentX100 * disburseAmount:
                                if not 0 / disbursePercentX100 * disburseAmount:
                                    if disburseDuration:
                                        return (0 / disburseDuration / 10000)
        else:
            if lastDisburseTime <= disburseDuration + contractDeployTime:
                if not disburseAmount:
                    if not disbursePercentX100 * disburseAmount:
                        if disburseDuration:
                            return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000)
                    else:
                        if disbursePercentX100 * disburseAmount:
                            if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == disburseDuration + contractDeployTime - lastDisburseTime:
                                if disburseDuration:
                                    return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000)
                else:
                    if disburseAmount:
                        if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                            if not disbursePercentX100 * disburseAmount:
                                if disburseDuration:
                                    return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000)
                            else:
                                if disbursePercentX100 * disburseAmount:
                                    if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == disburseDuration + contractDeployTime - lastDisburseTime:
                                        if disburseDuration:
                                            return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000)
    revert
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Cannot withdraw 0 Tokens!'
    if arg1 > depositedTokens[msg.sender]:
        revert with 0, 'Invalid amount to withdraw'
    require disburseDuration + contractDeployTime >= contractDeployTime
    if block.timestamp <= disburseDuration + contractDeployTime:
        if lastDisburseTime >= block.timestamp:
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require not 0 / disbursePercentX100 * disburseAmount
            require disburseDuration
            if contractBalance >= 0 / disburseDuration / 10000:
                if 0 / disburseDuration / 10000:
                    if totalTokens:
                        if 0 / disburseDuration / 10000:
                            require 0 / disburseDuration / 10000
                            require stor23 * 0 / disburseDuration / 10000 / 0 / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * 0 / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * 0 / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed((0 / disburseDuration / 10000));
                        require 0 / disburseDuration / 10000 <= contractBalance
                        contractBalance -= 0 / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
        else:
            require lastDisburseTime <= block.timestamp
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == block.timestamp - lastDisburseTime
            require disburseDuration
            if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                    if totalTokens:
                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                            require (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                            require stor23 * (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed(((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000));
                        require (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 <= contractBalance
                        contractBalance -= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
    else:
        if lastDisburseTime >= disburseDuration + contractDeployTime:
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require not 0 / disbursePercentX100 * disburseAmount
            require disburseDuration
            if contractBalance >= 0 / disburseDuration / 10000:
                if 0 / disburseDuration / 10000:
                    if totalTokens:
                        if 0 / disburseDuration / 10000:
                            require 0 / disburseDuration / 10000
                            require stor23 * 0 / disburseDuration / 10000 / 0 / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * 0 / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * 0 / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed((0 / disburseDuration / 10000));
                        require 0 / disburseDuration / 10000 <= contractBalance
                        contractBalance -= 0 / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
        else:
            require lastDisburseTime <= disburseDuration + contractDeployTime
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == disburseDuration + contractDeployTime - lastDisburseTime
            require disburseDuration
            if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                    if totalTokens:
                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                            require (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                            require stor23 * (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed(((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000));
                        require (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 <= contractBalance
                        contractBalance -= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
    lastClaimedTime[msg.sender] = block.timestamp
    lastDivPoints[msg.sender] = totalDivPoints
    require ext_code.size(trustedDepositTokenAddress)
    call trustedDepositTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens.'
    require arg1 <= depositedTokens[msg.sender]
    depositedTokens[msg.sender] -= arg1
    require arg1 <= totalTokens
    totalTokens -= arg1
    if stor13[address(msg.sender)]:
        if not depositedTokens[msg.sender]:
            if stor13[address(msg.sender)]:
                require stor12.length - 1 < stor12.length
                require stor13[address(msg.sender)] - 1 < stor12.length
                stor12[stor13[address(msg.sender)]].field_0 = stor12[stor12.length].field_0
                stor13[stor12[stor12.length].field_0] = stor13[address(msg.sender)]
                require stor12.length
                stor12[stor12.length].field_0 = 0
                stor12.length--
                stor13[address(msg.sender)] = 0
}

function claim() payable {
    if stor1[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x21436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor1[block.number][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x21436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    require disburseDuration + contractDeployTime >= contractDeployTime
    if block.timestamp <= disburseDuration + contractDeployTime:
        if lastDisburseTime >= block.timestamp:
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require not 0 / disbursePercentX100 * disburseAmount
            require disburseDuration
            if contractBalance >= 0 / disburseDuration / 10000:
                if 0 / disburseDuration / 10000:
                    if totalTokens:
                        if 0 / disburseDuration / 10000:
                            require 0 / disburseDuration / 10000
                            require stor23 * 0 / disburseDuration / 10000 / 0 / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * 0 / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * 0 / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed((0 / disburseDuration / 10000));
                        require 0 / disburseDuration / 10000 <= contractBalance
                        contractBalance -= 0 / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
        else:
            require lastDisburseTime <= block.timestamp
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == block.timestamp - lastDisburseTime
            require disburseDuration
            if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                    if totalTokens:
                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                            require (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                            require stor23 * (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed(((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000));
                        require (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 <= contractBalance
                        contractBalance -= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
    else:
        if lastDisburseTime >= disburseDuration + contractDeployTime:
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require not 0 / disbursePercentX100 * disburseAmount
            require disburseDuration
            if contractBalance >= 0 / disburseDuration / 10000:
                if 0 / disburseDuration / 10000:
                    if totalTokens:
                        if 0 / disburseDuration / 10000:
                            require 0 / disburseDuration / 10000
                            require stor23 * 0 / disburseDuration / 10000 / 0 / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * 0 / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * 0 / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed((0 / disburseDuration / 10000));
                        require 0 / disburseDuration / 10000 <= contractBalance
                        contractBalance -= 0 / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
        else:
            require lastDisburseTime <= disburseDuration + contractDeployTime
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == disburseDuration + contractDeployTime - lastDisburseTime
            require disburseDuration
            if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                    if totalTokens:
                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                            require (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                            require stor23 * (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed(((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000));
                        require (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 <= contractBalance
                        contractBalance -= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
    if stor13[address(msg.sender)]:
        if depositedTokens[address(msg.sender)]:
            require lastDivPoints[address(msg.sender)] <= totalDivPoints
            if depositedTokens[address(msg.sender)]:
                require depositedTokens[address(msg.sender)]
                require (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / depositedTokens[address(msg.sender)] == totalDivPoints - lastDivPoints[address(msg.sender)]
            require stor23
            if (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23:
                require ext_code.size(trustedRewardTokenAddress)
                call trustedRewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens.'
                require ((totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23) + totalEarnedTokens[address(msg.sender)] >= totalEarnedTokens[address(msg.sender)]
                totalEarnedTokens[address(msg.sender)] += (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23
                require ((totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23) + totalClaimedRewards >= totalClaimedRewards
                totalClaimedRewards += (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23
                emit RewardsTransferred(msg.sender, (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23);
    lastClaimedTime[address(msg.sender)] = block.timestamp
    lastDivPoints[address(msg.sender)] = totalDivPoints
    stor1[block.number][tx.origin] = 1
    stor1[block.number][msg.sender] = 1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Cannot deposit 0 Tokens'
    require disburseDuration + contractDeployTime >= contractDeployTime
    if block.timestamp <= disburseDuration + contractDeployTime:
        if lastDisburseTime >= block.timestamp:
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require not 0 / disbursePercentX100 * disburseAmount
            require disburseDuration
            if contractBalance >= 0 / disburseDuration / 10000:
                if 0 / disburseDuration / 10000:
                    if totalTokens:
                        if 0 / disburseDuration / 10000:
                            require 0 / disburseDuration / 10000
                            require stor23 * 0 / disburseDuration / 10000 / 0 / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * 0 / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * 0 / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed((0 / disburseDuration / 10000));
                        require 0 / disburseDuration / 10000 <= contractBalance
                        contractBalance -= 0 / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
        else:
            require lastDisburseTime <= block.timestamp
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == block.timestamp - lastDisburseTime
            require disburseDuration
            if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                    if totalTokens:
                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                            require (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                            require stor23 * (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed(((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000));
                        require (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 <= contractBalance
                        contractBalance -= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
    else:
        if lastDisburseTime >= disburseDuration + contractDeployTime:
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require not 0 / disbursePercentX100 * disburseAmount
            require disburseDuration
            if contractBalance >= 0 / disburseDuration / 10000:
                if 0 / disburseDuration / 10000:
                    if totalTokens:
                        if 0 / disburseDuration / 10000:
                            require 0 / disburseDuration / 10000
                            require stor23 * 0 / disburseDuration / 10000 / 0 / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * 0 / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * 0 / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed((0 / disburseDuration / 10000));
                        require 0 / disburseDuration / 10000 <= contractBalance
                        contractBalance -= 0 / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
        else:
            require lastDisburseTime <= disburseDuration + contractDeployTime
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == disburseDuration + contractDeployTime - lastDisburseTime
            require disburseDuration
            if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                    if totalTokens:
                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                            require (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                            require stor23 * (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed(((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000));
                        require (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 <= contractBalance
                        contractBalance -= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
    if stor13[address(msg.sender)]:
        if depositedTokens[address(msg.sender)]:
            require lastDivPoints[address(msg.sender)] <= totalDivPoints
            if depositedTokens[address(msg.sender)]:
                require depositedTokens[address(msg.sender)]
                require (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / depositedTokens[address(msg.sender)] == totalDivPoints - lastDivPoints[address(msg.sender)]
            require stor23
            if (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23:
                require ext_code.size(trustedRewardTokenAddress)
                call trustedRewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens.'
                require ((totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23) + totalEarnedTokens[address(msg.sender)] >= totalEarnedTokens[address(msg.sender)]
                totalEarnedTokens[address(msg.sender)] += (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23
                require ((totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23) + totalClaimedRewards >= totalClaimedRewards
                totalClaimedRewards += (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23
                emit RewardsTransferred(msg.sender, (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23);
    lastClaimedTime[address(msg.sender)] = block.timestamp
    lastDivPoints[address(msg.sender)] = totalDivPoints
    require ext_code.size(trustedDepositTokenAddress)
    call trustedDepositTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient Token Allowance'
    require arg1 + depositedTokens[msg.sender] >= depositedTokens[msg.sender]
    depositedTokens[msg.sender] += arg1
    require arg1 + totalTokens >= totalTokens
    totalTokens += arg1
    if not stor13[address(msg.sender)]:
        if not stor13[address(msg.sender)]:
            stor12.length++
            stor12[stor12.length].field_0 = msg.sender
            stor12[stor12.length].field_160 = 0
            stor13[address(msg.sender)] = stor12.length
        depositTime[msg.sender] = block.timestamp
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x21436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor1[block.number][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x21436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if arg1 <= 0:
        revert with 0, 'Cannot withdraw 0 Tokens!'
    if arg1 > depositedTokens[msg.sender]:
        revert with 0, 'Invalid amount to withdraw'
    require disburseDuration + contractDeployTime >= contractDeployTime
    if block.timestamp <= disburseDuration + contractDeployTime:
        if lastDisburseTime >= block.timestamp:
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require not 0 / disbursePercentX100 * disburseAmount
            require disburseDuration
            if contractBalance >= 0 / disburseDuration / 10000:
                if 0 / disburseDuration / 10000:
                    if totalTokens:
                        if 0 / disburseDuration / 10000:
                            require 0 / disburseDuration / 10000
                            require stor23 * 0 / disburseDuration / 10000 / 0 / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * 0 / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * 0 / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed((0 / disburseDuration / 10000));
                        require 0 / disburseDuration / 10000 <= contractBalance
                        contractBalance -= 0 / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
        else:
            require lastDisburseTime <= block.timestamp
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == block.timestamp - lastDisburseTime
            require disburseDuration
            if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                    if totalTokens:
                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                            require (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                            require stor23 * (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed(((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000));
                        require (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 <= contractBalance
                        contractBalance -= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
    else:
        if lastDisburseTime >= disburseDuration + contractDeployTime:
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require not 0 / disbursePercentX100 * disburseAmount
            require disburseDuration
            if contractBalance >= 0 / disburseDuration / 10000:
                if 0 / disburseDuration / 10000:
                    if totalTokens:
                        if 0 / disburseDuration / 10000:
                            require 0 / disburseDuration / 10000
                            require stor23 * 0 / disburseDuration / 10000 / 0 / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * 0 / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * 0 / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed((0 / disburseDuration / 10000));
                        require 0 / disburseDuration / 10000 <= contractBalance
                        contractBalance -= 0 / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
        else:
            require lastDisburseTime <= disburseDuration + contractDeployTime
            if disburseAmount:
                require disburseAmount
                require disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100
            if disbursePercentX100 * disburseAmount:
                require disbursePercentX100 * disburseAmount
                require (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == disburseDuration + contractDeployTime - lastDisburseTime
            require disburseDuration
            if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                    if totalTokens:
                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                            require (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                            require stor23 * (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 == stor23
                        require totalTokens
                        require (stor23 * (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 / totalTokens
                        emit RewardsDisbursed(((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000));
                        require (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 <= contractBalance
                        contractBalance -= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000
                        lastDisburseTime = block.timestamp
            else:
                if contractBalance:
                    if totalTokens:
                        if contractBalance:
                            require contractBalance
                            require stor23 * contractBalance / contractBalance == stor23
                        require totalTokens
                        require (stor23 * contractBalance / totalTokens) + totalDivPoints >= totalDivPoints
                        totalDivPoints += stor23 * contractBalance / totalTokens
                        emit RewardsDisbursed(contractBalance);
                        require contractBalance <= contractBalance
                        contractBalance = 0
                        lastDisburseTime = block.timestamp
    if stor13[address(msg.sender)]:
        if depositedTokens[address(msg.sender)]:
            require lastDivPoints[address(msg.sender)] <= totalDivPoints
            if depositedTokens[address(msg.sender)]:
                require depositedTokens[address(msg.sender)]
                require (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / depositedTokens[address(msg.sender)] == totalDivPoints - lastDivPoints[address(msg.sender)]
            require stor23
            if (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23:
                require ext_code.size(trustedRewardTokenAddress)
                call trustedRewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Could not transfer tokens.'
                require ((totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23) + totalEarnedTokens[address(msg.sender)] >= totalEarnedTokens[address(msg.sender)]
                totalEarnedTokens[address(msg.sender)] += (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23
                require ((totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23) + totalClaimedRewards >= totalClaimedRewards
                totalClaimedRewards += (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23
                emit RewardsTransferred(msg.sender, (totalDivPoints * depositedTokens[address(msg.sender)]) - (lastDivPoints[address(msg.sender)] * depositedTokens[address(msg.sender)]) / stor23);
    lastClaimedTime[address(msg.sender)] = block.timestamp
    lastDivPoints[address(msg.sender)] = totalDivPoints
    require ext_code.size(trustedDepositTokenAddress)
    call trustedDepositTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer tokens.'
    require arg1 <= depositedTokens[msg.sender]
    depositedTokens[msg.sender] -= arg1
    require arg1 <= totalTokens
    totalTokens -= arg1
    if stor13[address(msg.sender)]:
        if not depositedTokens[msg.sender]:
            if stor13[address(msg.sender)]:
                require stor12.length - 1 < stor12.length
                require stor13[address(msg.sender)] - 1 < stor12.length
                stor12[stor13[address(msg.sender)]].field_0 = stor12[stor12.length].field_0
                stor13[stor12[stor12.length].field_0] = stor13[address(msg.sender)]
                require stor12.length
                stor12[stor12.length].field_0 = 0
                stor12.length--
                stor13[address(msg.sender)] = 0
    stor1[block.number][tx.origin] = 1
    stor1[block.number][msg.sender] = 1
}

function getEstimatedPendingDivs(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor13[address(arg1)]:
        if disburseDuration + contractDeployTime >= contractDeployTime:
            if block.timestamp <= disburseDuration + contractDeployTime:
                if lastDisburseTime >= block.timestamp:
                    if not disburseAmount:
                        if not disbursePercentX100 * disburseAmount:
                            if disburseDuration:
                                if not depositedTokens[address(arg1)]:
                                    return 0
                                if not totalTokens:
                                    return 0
                                if contractBalance >= 0 / disburseDuration / 10000:
                                    if not depositedTokens[address(arg1)]:
                                        if totalTokens:
                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                    else:
                                        if depositedTokens[address(arg1)]:
                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                if totalTokens:
                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                else:
                                    if not depositedTokens[address(arg1)]:
                                        if totalTokens:
                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                    else:
                                        if depositedTokens[address(arg1)]:
                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                if totalTokens:
                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                        else:
                            if disbursePercentX100 * disburseAmount:
                                if not 0 / disbursePercentX100 * disburseAmount:
                                    if disburseDuration:
                                        if not depositedTokens[address(arg1)]:
                                            return 0
                                        if not totalTokens:
                                            return 0
                                        if contractBalance >= 0 / disburseDuration / 10000:
                                            if not depositedTokens[address(arg1)]:
                                                if totalTokens:
                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if depositedTokens[address(arg1)]:
                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                        if totalTokens:
                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if not depositedTokens[address(arg1)]:
                                                if totalTokens:
                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if depositedTokens[address(arg1)]:
                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                        if totalTokens:
                                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                    else:
                        if disburseAmount:
                            if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                if not disbursePercentX100 * disburseAmount:
                                    if disburseDuration:
                                        if not depositedTokens[address(arg1)]:
                                            return 0
                                        if not totalTokens:
                                            return 0
                                        if contractBalance >= 0 / disburseDuration / 10000:
                                            if not depositedTokens[address(arg1)]:
                                                if totalTokens:
                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if depositedTokens[address(arg1)]:
                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                        if totalTokens:
                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if not depositedTokens[address(arg1)]:
                                                if totalTokens:
                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if depositedTokens[address(arg1)]:
                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                        if totalTokens:
                                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                else:
                                    if disbursePercentX100 * disburseAmount:
                                        if not 0 / disbursePercentX100 * disburseAmount:
                                            if disburseDuration:
                                                if not depositedTokens[address(arg1)]:
                                                    return 0
                                                if not totalTokens:
                                                    return 0
                                                if contractBalance >= 0 / disburseDuration / 10000:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                if totalTokens:
                                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                if totalTokens:
                                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                else:
                    if lastDisburseTime <= block.timestamp:
                        if not disburseAmount:
                            if not disbursePercentX100 * disburseAmount:
                                if disburseDuration:
                                    if not depositedTokens[address(arg1)]:
                                        return 0
                                    if not totalTokens:
                                        return 0
                                    if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                        if not depositedTokens[address(arg1)]:
                                            if totalTokens:
                                                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                    return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if depositedTokens[address(arg1)]:
                                                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                    if totalTokens:
                                                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                    else:
                                        if not depositedTokens[address(arg1)]:
                                            if totalTokens:
                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if depositedTokens[address(arg1)]:
                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                    if totalTokens:
                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                            else:
                                if disbursePercentX100 * disburseAmount:
                                    if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == block.timestamp - lastDisburseTime:
                                        if disburseDuration:
                                            if not depositedTokens[address(arg1)]:
                                                return 0
                                            if not totalTokens:
                                                return 0
                                            if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                            if totalTokens:
                                                                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                            if totalTokens:
                                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                        else:
                            if disburseAmount:
                                if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                    if not disbursePercentX100 * disburseAmount:
                                        if disburseDuration:
                                            if not depositedTokens[address(arg1)]:
                                                return 0
                                            if not totalTokens:
                                                return 0
                                            if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                            if totalTokens:
                                                                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                            if totalTokens:
                                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                    else:
                                        if disbursePercentX100 * disburseAmount:
                                            if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == block.timestamp - lastDisburseTime:
                                                if disburseDuration:
                                                    if not depositedTokens[address(arg1)]:
                                                        return 0
                                                    if not totalTokens:
                                                        return 0
                                                    if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                        if not depositedTokens[address(arg1)]:
                                                            if totalTokens:
                                                                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                        else:
                                                            if depositedTokens[address(arg1)]:
                                                                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                    if totalTokens:
                                                                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                            return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if not depositedTokens[address(arg1)]:
                                                            if totalTokens:
                                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                        else:
                                                            if depositedTokens[address(arg1)]:
                                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                    if totalTokens:
                                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
            else:
                if lastDisburseTime >= disburseDuration + contractDeployTime:
                    if not disburseAmount:
                        if not disbursePercentX100 * disburseAmount:
                            if disburseDuration:
                                if not depositedTokens[address(arg1)]:
                                    return 0
                                if not totalTokens:
                                    return 0
                                if contractBalance >= 0 / disburseDuration / 10000:
                                    if not depositedTokens[address(arg1)]:
                                        if totalTokens:
                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                    else:
                                        if depositedTokens[address(arg1)]:
                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                if totalTokens:
                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                else:
                                    if not depositedTokens[address(arg1)]:
                                        if totalTokens:
                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                    else:
                                        if depositedTokens[address(arg1)]:
                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                if totalTokens:
                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                        else:
                            if disbursePercentX100 * disburseAmount:
                                if not 0 / disbursePercentX100 * disburseAmount:
                                    if disburseDuration:
                                        if not depositedTokens[address(arg1)]:
                                            return 0
                                        if not totalTokens:
                                            return 0
                                        if contractBalance >= 0 / disburseDuration / 10000:
                                            if not depositedTokens[address(arg1)]:
                                                if totalTokens:
                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if depositedTokens[address(arg1)]:
                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                        if totalTokens:
                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if not depositedTokens[address(arg1)]:
                                                if totalTokens:
                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if depositedTokens[address(arg1)]:
                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                        if totalTokens:
                                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                    else:
                        if disburseAmount:
                            if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                if not disbursePercentX100 * disburseAmount:
                                    if disburseDuration:
                                        if not depositedTokens[address(arg1)]:
                                            return 0
                                        if not totalTokens:
                                            return 0
                                        if contractBalance >= 0 / disburseDuration / 10000:
                                            if not depositedTokens[address(arg1)]:
                                                if totalTokens:
                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if depositedTokens[address(arg1)]:
                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                        if totalTokens:
                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if not depositedTokens[address(arg1)]:
                                                if totalTokens:
                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if depositedTokens[address(arg1)]:
                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                        if totalTokens:
                                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                else:
                                    if disbursePercentX100 * disburseAmount:
                                        if not 0 / disbursePercentX100 * disburseAmount:
                                            if disburseDuration:
                                                if not depositedTokens[address(arg1)]:
                                                    return 0
                                                if not totalTokens:
                                                    return 0
                                                if contractBalance >= 0 / disburseDuration / 10000:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                if totalTokens:
                                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                if totalTokens:
                                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                else:
                    if lastDisburseTime <= disburseDuration + contractDeployTime:
                        if not disburseAmount:
                            if not disbursePercentX100 * disburseAmount:
                                if disburseDuration:
                                    if not depositedTokens[address(arg1)]:
                                        return 0
                                    if not totalTokens:
                                        return 0
                                    if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                        if not depositedTokens[address(arg1)]:
                                            if totalTokens:
                                                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                    return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if depositedTokens[address(arg1)]:
                                                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                    if totalTokens:
                                                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                    else:
                                        if not depositedTokens[address(arg1)]:
                                            if totalTokens:
                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if depositedTokens[address(arg1)]:
                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                    if totalTokens:
                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                            else:
                                if disbursePercentX100 * disburseAmount:
                                    if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == disburseDuration + contractDeployTime - lastDisburseTime:
                                        if disburseDuration:
                                            if not depositedTokens[address(arg1)]:
                                                return 0
                                            if not totalTokens:
                                                return 0
                                            if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                            if totalTokens:
                                                                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                            if totalTokens:
                                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                        else:
                            if disburseAmount:
                                if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                    if not disbursePercentX100 * disburseAmount:
                                        if disburseDuration:
                                            if not depositedTokens[address(arg1)]:
                                                return 0
                                            if not totalTokens:
                                                return 0
                                            if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                            if totalTokens:
                                                                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                            if totalTokens:
                                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                    else:
                                        if disbursePercentX100 * disburseAmount:
                                            if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == disburseDuration + contractDeployTime - lastDisburseTime:
                                                if disburseDuration:
                                                    if not depositedTokens[address(arg1)]:
                                                        return 0
                                                    if not totalTokens:
                                                        return 0
                                                    if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                        if not depositedTokens[address(arg1)]:
                                                            if totalTokens:
                                                                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                        else:
                                                            if depositedTokens[address(arg1)]:
                                                                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                    if totalTokens:
                                                                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                            return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if not depositedTokens[address(arg1)]:
                                                            if totalTokens:
                                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                        else:
                                                            if depositedTokens[address(arg1)]:
                                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                    if totalTokens:
                                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
    else:
        if not depositedTokens[address(arg1)]:
            if disburseDuration + contractDeployTime >= contractDeployTime:
                if block.timestamp <= disburseDuration + contractDeployTime:
                    if lastDisburseTime >= block.timestamp:
                        if not disburseAmount:
                            if not disbursePercentX100 * disburseAmount:
                                if disburseDuration:
                                    if not depositedTokens[address(arg1)]:
                                        return 0
                                    if not totalTokens:
                                        return 0
                                    if contractBalance >= 0 / disburseDuration / 10000:
                                        if not depositedTokens[address(arg1)]:
                                            if totalTokens:
                                                if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                    return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if depositedTokens[address(arg1)]:
                                                if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                    if totalTokens:
                                                        if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                    else:
                                        if not depositedTokens[address(arg1)]:
                                            if totalTokens:
                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if depositedTokens[address(arg1)]:
                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                    if totalTokens:
                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                            else:
                                if disbursePercentX100 * disburseAmount:
                                    if not 0 / disbursePercentX100 * disburseAmount:
                                        if disburseDuration:
                                            if not depositedTokens[address(arg1)]:
                                                return 0
                                            if not totalTokens:
                                                return 0
                                            if contractBalance >= 0 / disburseDuration / 10000:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                            if totalTokens:
                                                                if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                            if totalTokens:
                                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                        else:
                            if disburseAmount:
                                if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                    if not disbursePercentX100 * disburseAmount:
                                        if disburseDuration:
                                            if not depositedTokens[address(arg1)]:
                                                return 0
                                            if not totalTokens:
                                                return 0
                                            if contractBalance >= 0 / disburseDuration / 10000:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                            if totalTokens:
                                                                if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                            if totalTokens:
                                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                    else:
                                        if disbursePercentX100 * disburseAmount:
                                            if not 0 / disbursePercentX100 * disburseAmount:
                                                if disburseDuration:
                                                    if not depositedTokens[address(arg1)]:
                                                        return 0
                                                    if not totalTokens:
                                                        return 0
                                                    if contractBalance >= 0 / disburseDuration / 10000:
                                                        if not depositedTokens[address(arg1)]:
                                                            if totalTokens:
                                                                if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                        else:
                                                            if depositedTokens[address(arg1)]:
                                                                if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                    if totalTokens:
                                                                        if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                            return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if not depositedTokens[address(arg1)]:
                                                            if totalTokens:
                                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                        else:
                                                            if depositedTokens[address(arg1)]:
                                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                    if totalTokens:
                                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                    else:
                        if lastDisburseTime <= block.timestamp:
                            if not disburseAmount:
                                if not disbursePercentX100 * disburseAmount:
                                    if disburseDuration:
                                        if not depositedTokens[address(arg1)]:
                                            return 0
                                        if not totalTokens:
                                            return 0
                                        if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                            if not depositedTokens[address(arg1)]:
                                                if totalTokens:
                                                    if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if depositedTokens[address(arg1)]:
                                                    if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                        if totalTokens:
                                                            if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if not depositedTokens[address(arg1)]:
                                                if totalTokens:
                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if depositedTokens[address(arg1)]:
                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                        if totalTokens:
                                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                else:
                                    if disbursePercentX100 * disburseAmount:
                                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == block.timestamp - lastDisburseTime:
                                            if disburseDuration:
                                                if not depositedTokens[address(arg1)]:
                                                    return 0
                                                if not totalTokens:
                                                    return 0
                                                if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                if totalTokens:
                                                                    if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                if totalTokens:
                                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                            else:
                                if disburseAmount:
                                    if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                        if not disbursePercentX100 * disburseAmount:
                                            if disburseDuration:
                                                if not depositedTokens[address(arg1)]:
                                                    return 0
                                                if not totalTokens:
                                                    return 0
                                                if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                if totalTokens:
                                                                    if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                if totalTokens:
                                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if disbursePercentX100 * disburseAmount:
                                                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == block.timestamp - lastDisburseTime:
                                                    if disburseDuration:
                                                        if not depositedTokens[address(arg1)]:
                                                            return 0
                                                        if not totalTokens:
                                                            return 0
                                                        if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                        if totalTokens:
                                                                            if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                                return ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                        else:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                        if totalTokens:
                                                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                else:
                    if lastDisburseTime >= disburseDuration + contractDeployTime:
                        if not disburseAmount:
                            if not disbursePercentX100 * disburseAmount:
                                if disburseDuration:
                                    if not depositedTokens[address(arg1)]:
                                        return 0
                                    if not totalTokens:
                                        return 0
                                    if contractBalance >= 0 / disburseDuration / 10000:
                                        if not depositedTokens[address(arg1)]:
                                            if totalTokens:
                                                if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                    return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if depositedTokens[address(arg1)]:
                                                if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                    if totalTokens:
                                                        if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                    else:
                                        if not depositedTokens[address(arg1)]:
                                            if totalTokens:
                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if depositedTokens[address(arg1)]:
                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                    if totalTokens:
                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                            else:
                                if disbursePercentX100 * disburseAmount:
                                    if not 0 / disbursePercentX100 * disburseAmount:
                                        if disburseDuration:
                                            if not depositedTokens[address(arg1)]:
                                                return 0
                                            if not totalTokens:
                                                return 0
                                            if contractBalance >= 0 / disburseDuration / 10000:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                            if totalTokens:
                                                                if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                            if totalTokens:
                                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                        else:
                            if disburseAmount:
                                if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                    if not disbursePercentX100 * disburseAmount:
                                        if disburseDuration:
                                            if not depositedTokens[address(arg1)]:
                                                return 0
                                            if not totalTokens:
                                                return 0
                                            if contractBalance >= 0 / disburseDuration / 10000:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                            if totalTokens:
                                                                if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if not depositedTokens[address(arg1)]:
                                                    if totalTokens:
                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if depositedTokens[address(arg1)]:
                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                            if totalTokens:
                                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                    else:
                                        if disbursePercentX100 * disburseAmount:
                                            if not 0 / disbursePercentX100 * disburseAmount:
                                                if disburseDuration:
                                                    if not depositedTokens[address(arg1)]:
                                                        return 0
                                                    if not totalTokens:
                                                        return 0
                                                    if contractBalance >= 0 / disburseDuration / 10000:
                                                        if not depositedTokens[address(arg1)]:
                                                            if totalTokens:
                                                                if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                        else:
                                                            if depositedTokens[address(arg1)]:
                                                                if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                    if totalTokens:
                                                                        if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                            return (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if not depositedTokens[address(arg1)]:
                                                            if totalTokens:
                                                                if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                    return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                        else:
                                                            if depositedTokens[address(arg1)]:
                                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                    if totalTokens:
                                                                        if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                            return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                    else:
                        if lastDisburseTime <= disburseDuration + contractDeployTime:
                            if not disburseAmount:
                                if not disbursePercentX100 * disburseAmount:
                                    if disburseDuration:
                                        if not depositedTokens[address(arg1)]:
                                            return 0
                                        if not totalTokens:
                                            return 0
                                        if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                            if not depositedTokens[address(arg1)]:
                                                if totalTokens:
                                                    if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if depositedTokens[address(arg1)]:
                                                    if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                        if totalTokens:
                                                            if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if not depositedTokens[address(arg1)]:
                                                if totalTokens:
                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                            else:
                                                if depositedTokens[address(arg1)]:
                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                        if totalTokens:
                                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                else:
                                    if disbursePercentX100 * disburseAmount:
                                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == disburseDuration + contractDeployTime - lastDisburseTime:
                                            if disburseDuration:
                                                if not depositedTokens[address(arg1)]:
                                                    return 0
                                                if not totalTokens:
                                                    return 0
                                                if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                if totalTokens:
                                                                    if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                if totalTokens:
                                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                            else:
                                if disburseAmount:
                                    if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                        if not disbursePercentX100 * disburseAmount:
                                            if disburseDuration:
                                                if not depositedTokens[address(arg1)]:
                                                    return 0
                                                if not totalTokens:
                                                    return 0
                                                if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                if totalTokens:
                                                                    if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                else:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                if totalTokens:
                                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                        else:
                                            if disbursePercentX100 * disburseAmount:
                                                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == disburseDuration + contractDeployTime - lastDisburseTime:
                                                    if disburseDuration:
                                                        if not depositedTokens[address(arg1)]:
                                                            return 0
                                                        if not totalTokens:
                                                            return 0
                                                        if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                        if totalTokens:
                                                                            if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                                return ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens)
                                                        else:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                        return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                        if totalTokens:
                                                                            if contractBalance * depositedTokens[address(arg1)] / totalTokens >= 0:
                                                                                return (contractBalance * depositedTokens[address(arg1)] / totalTokens)
        else:
            if lastDivPoints[address(arg1)] <= totalDivPoints:
                if not depositedTokens[address(arg1)]:
                    if stor23:
                        if disburseDuration + contractDeployTime >= contractDeployTime:
                            if block.timestamp <= disburseDuration + contractDeployTime:
                                if lastDisburseTime >= block.timestamp:
                                    if not disburseAmount:
                                        if not disbursePercentX100 * disburseAmount:
                                            if disburseDuration:
                                                if not depositedTokens[address(arg1)]:
                                                    return 0
                                                if not totalTokens:
                                                    return 0
                                                if contractBalance >= 0 / disburseDuration / 10000:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                if totalTokens:
                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                else:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                if totalTokens:
                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                        else:
                                            if disbursePercentX100 * disburseAmount:
                                                if not 0 / disbursePercentX100 * disburseAmount:
                                                    if disburseDuration:
                                                        if not depositedTokens[address(arg1)]:
                                                            return 0
                                                        if not totalTokens:
                                                            return 0
                                                        if contractBalance >= 0 / disburseDuration / 10000:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                        if totalTokens:
                                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                        else:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                        if totalTokens:
                                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                    else:
                                        if disburseAmount:
                                            if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                                if not disbursePercentX100 * disburseAmount:
                                                    if disburseDuration:
                                                        if not depositedTokens[address(arg1)]:
                                                            return 0
                                                        if not totalTokens:
                                                            return 0
                                                        if contractBalance >= 0 / disburseDuration / 10000:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                        if totalTokens:
                                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                        else:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                        if totalTokens:
                                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                else:
                                                    if disbursePercentX100 * disburseAmount:
                                                        if not 0 / disbursePercentX100 * disburseAmount:
                                                            if disburseDuration:
                                                                if not depositedTokens[address(arg1)]:
                                                                    return 0
                                                                if not totalTokens:
                                                                    return 0
                                                                if contractBalance >= 0 / disburseDuration / 10000:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        if totalTokens:
                                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if depositedTokens[address(arg1)]:
                                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                                if totalTokens:
                                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        if totalTokens:
                                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if depositedTokens[address(arg1)]:
                                                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                if totalTokens:
                                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                else:
                                    if lastDisburseTime <= block.timestamp:
                                        if not disburseAmount:
                                            if not disbursePercentX100 * disburseAmount:
                                                if disburseDuration:
                                                    if not depositedTokens[address(arg1)]:
                                                        return 0
                                                    if not totalTokens:
                                                        return 0
                                                    if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                        if not depositedTokens[address(arg1)]:
                                                            if totalTokens:
                                                                if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                    return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                        else:
                                                            if depositedTokens[address(arg1)]:
                                                                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                    if totalTokens:
                                                                        if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                    else:
                                                        if not depositedTokens[address(arg1)]:
                                                            if totalTokens:
                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                        else:
                                                            if depositedTokens[address(arg1)]:
                                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                    if totalTokens:
                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                            else:
                                                if disbursePercentX100 * disburseAmount:
                                                    if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == block.timestamp - lastDisburseTime:
                                                        if disburseDuration:
                                                            if not depositedTokens[address(arg1)]:
                                                                return 0
                                                            if not totalTokens:
                                                                return 0
                                                            if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                if not depositedTokens[address(arg1)]:
                                                                    if totalTokens:
                                                                        if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if depositedTokens[address(arg1)]:
                                                                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                            if totalTokens:
                                                                                if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if not depositedTokens[address(arg1)]:
                                                                    if totalTokens:
                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if depositedTokens[address(arg1)]:
                                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                            if totalTokens:
                                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                        else:
                                            if disburseAmount:
                                                if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                                    if not disbursePercentX100 * disburseAmount:
                                                        if disburseDuration:
                                                            if not depositedTokens[address(arg1)]:
                                                                return 0
                                                            if not totalTokens:
                                                                return 0
                                                            if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                if not depositedTokens[address(arg1)]:
                                                                    if totalTokens:
                                                                        if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if depositedTokens[address(arg1)]:
                                                                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                            if totalTokens:
                                                                                if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if not depositedTokens[address(arg1)]:
                                                                    if totalTokens:
                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if depositedTokens[address(arg1)]:
                                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                            if totalTokens:
                                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                    else:
                                                        if disbursePercentX100 * disburseAmount:
                                                            if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == block.timestamp - lastDisburseTime:
                                                                if disburseDuration:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        return 0
                                                                    if not totalTokens:
                                                                        return 0
                                                                    if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                        if not depositedTokens[address(arg1)]:
                                                                            if totalTokens:
                                                                                if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                        else:
                                                                            if depositedTokens[address(arg1)]:
                                                                                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                                    if totalTokens:
                                                                                        if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if not depositedTokens[address(arg1)]:
                                                                            if totalTokens:
                                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                        else:
                                                                            if depositedTokens[address(arg1)]:
                                                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                    if totalTokens:
                                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                            else:
                                if lastDisburseTime >= disburseDuration + contractDeployTime:
                                    if not disburseAmount:
                                        if not disbursePercentX100 * disburseAmount:
                                            if disburseDuration:
                                                if not depositedTokens[address(arg1)]:
                                                    return 0
                                                if not totalTokens:
                                                    return 0
                                                if contractBalance >= 0 / disburseDuration / 10000:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                if totalTokens:
                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                else:
                                                    if not depositedTokens[address(arg1)]:
                                                        if totalTokens:
                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                    else:
                                                        if depositedTokens[address(arg1)]:
                                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                if totalTokens:
                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                        else:
                                            if disbursePercentX100 * disburseAmount:
                                                if not 0 / disbursePercentX100 * disburseAmount:
                                                    if disburseDuration:
                                                        if not depositedTokens[address(arg1)]:
                                                            return 0
                                                        if not totalTokens:
                                                            return 0
                                                        if contractBalance >= 0 / disburseDuration / 10000:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                        if totalTokens:
                                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                        else:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                        if totalTokens:
                                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                    else:
                                        if disburseAmount:
                                            if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                                if not disbursePercentX100 * disburseAmount:
                                                    if disburseDuration:
                                                        if not depositedTokens[address(arg1)]:
                                                            return 0
                                                        if not totalTokens:
                                                            return 0
                                                        if contractBalance >= 0 / disburseDuration / 10000:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                        if totalTokens:
                                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                        else:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                        if totalTokens:
                                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                else:
                                                    if disbursePercentX100 * disburseAmount:
                                                        if not 0 / disbursePercentX100 * disburseAmount:
                                                            if disburseDuration:
                                                                if not depositedTokens[address(arg1)]:
                                                                    return 0
                                                                if not totalTokens:
                                                                    return 0
                                                                if contractBalance >= 0 / disburseDuration / 10000:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        if totalTokens:
                                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if depositedTokens[address(arg1)]:
                                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                                if totalTokens:
                                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        if totalTokens:
                                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if depositedTokens[address(arg1)]:
                                                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                if totalTokens:
                                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                else:
                                    if lastDisburseTime <= disburseDuration + contractDeployTime:
                                        if not disburseAmount:
                                            if not disbursePercentX100 * disburseAmount:
                                                if disburseDuration:
                                                    if not depositedTokens[address(arg1)]:
                                                        return 0
                                                    if not totalTokens:
                                                        return 0
                                                    if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                        if not depositedTokens[address(arg1)]:
                                                            if totalTokens:
                                                                if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                    return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                        else:
                                                            if depositedTokens[address(arg1)]:
                                                                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                    if totalTokens:
                                                                        if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                    else:
                                                        if not depositedTokens[address(arg1)]:
                                                            if totalTokens:
                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                        else:
                                                            if depositedTokens[address(arg1)]:
                                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                    if totalTokens:
                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                            else:
                                                if disbursePercentX100 * disburseAmount:
                                                    if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == disburseDuration + contractDeployTime - lastDisburseTime:
                                                        if disburseDuration:
                                                            if not depositedTokens[address(arg1)]:
                                                                return 0
                                                            if not totalTokens:
                                                                return 0
                                                            if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                if not depositedTokens[address(arg1)]:
                                                                    if totalTokens:
                                                                        if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if depositedTokens[address(arg1)]:
                                                                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                            if totalTokens:
                                                                                if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if not depositedTokens[address(arg1)]:
                                                                    if totalTokens:
                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if depositedTokens[address(arg1)]:
                                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                            if totalTokens:
                                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                        else:
                                            if disburseAmount:
                                                if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                                    if not disbursePercentX100 * disburseAmount:
                                                        if disburseDuration:
                                                            if not depositedTokens[address(arg1)]:
                                                                return 0
                                                            if not totalTokens:
                                                                return 0
                                                            if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                if not depositedTokens[address(arg1)]:
                                                                    if totalTokens:
                                                                        if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if depositedTokens[address(arg1)]:
                                                                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                            if totalTokens:
                                                                                if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if not depositedTokens[address(arg1)]:
                                                                    if totalTokens:
                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if depositedTokens[address(arg1)]:
                                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                            if totalTokens:
                                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                    else:
                                                        if disbursePercentX100 * disburseAmount:
                                                            if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == disburseDuration + contractDeployTime - lastDisburseTime:
                                                                if disburseDuration:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        return 0
                                                                    if not totalTokens:
                                                                        return 0
                                                                    if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                        if not depositedTokens[address(arg1)]:
                                                                            if totalTokens:
                                                                                if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                        else:
                                                                            if depositedTokens[address(arg1)]:
                                                                                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                                    if totalTokens:
                                                                                        if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if not depositedTokens[address(arg1)]:
                                                                            if totalTokens:
                                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                        else:
                                                                            if depositedTokens[address(arg1)]:
                                                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                    if totalTokens:
                                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                else:
                    if depositedTokens[address(arg1)]:
                        if (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / depositedTokens[address(arg1)] == totalDivPoints - lastDivPoints[address(arg1)]:
                            if stor23:
                                if disburseDuration + contractDeployTime >= contractDeployTime:
                                    if block.timestamp <= disburseDuration + contractDeployTime:
                                        if lastDisburseTime >= block.timestamp:
                                            if not disburseAmount:
                                                if not disbursePercentX100 * disburseAmount:
                                                    if disburseDuration:
                                                        if not depositedTokens[address(arg1)]:
                                                            return 0
                                                        if not totalTokens:
                                                            return 0
                                                        if contractBalance >= 0 / disburseDuration / 10000:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                        if totalTokens:
                                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                        else:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                        if totalTokens:
                                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                else:
                                                    if disbursePercentX100 * disburseAmount:
                                                        if not 0 / disbursePercentX100 * disburseAmount:
                                                            if disburseDuration:
                                                                if not depositedTokens[address(arg1)]:
                                                                    return 0
                                                                if not totalTokens:
                                                                    return 0
                                                                if contractBalance >= 0 / disburseDuration / 10000:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        if totalTokens:
                                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if depositedTokens[address(arg1)]:
                                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                                if totalTokens:
                                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        if totalTokens:
                                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if depositedTokens[address(arg1)]:
                                                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                if totalTokens:
                                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                            else:
                                                if disburseAmount:
                                                    if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                                        if not disbursePercentX100 * disburseAmount:
                                                            if disburseDuration:
                                                                if not depositedTokens[address(arg1)]:
                                                                    return 0
                                                                if not totalTokens:
                                                                    return 0
                                                                if contractBalance >= 0 / disburseDuration / 10000:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        if totalTokens:
                                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if depositedTokens[address(arg1)]:
                                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                                if totalTokens:
                                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        if totalTokens:
                                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if depositedTokens[address(arg1)]:
                                                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                if totalTokens:
                                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                        else:
                                                            if disbursePercentX100 * disburseAmount:
                                                                if not 0 / disbursePercentX100 * disburseAmount:
                                                                    if disburseDuration:
                                                                        if not depositedTokens[address(arg1)]:
                                                                            return 0
                                                                        if not totalTokens:
                                                                            return 0
                                                                        if contractBalance >= 0 / disburseDuration / 10000:
                                                                            if not depositedTokens[address(arg1)]:
                                                                                if totalTokens:
                                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                            else:
                                                                                if depositedTokens[address(arg1)]:
                                                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                                        if totalTokens:
                                                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                        else:
                                                                            if not depositedTokens[address(arg1)]:
                                                                                if totalTokens:
                                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                            else:
                                                                                if depositedTokens[address(arg1)]:
                                                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                        if totalTokens:
                                                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                        else:
                                            if lastDisburseTime <= block.timestamp:
                                                if not disburseAmount:
                                                    if not disbursePercentX100 * disburseAmount:
                                                        if disburseDuration:
                                                            if not depositedTokens[address(arg1)]:
                                                                return 0
                                                            if not totalTokens:
                                                                return 0
                                                            if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                if not depositedTokens[address(arg1)]:
                                                                    if totalTokens:
                                                                        if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if depositedTokens[address(arg1)]:
                                                                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                            if totalTokens:
                                                                                if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if not depositedTokens[address(arg1)]:
                                                                    if totalTokens:
                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if depositedTokens[address(arg1)]:
                                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                            if totalTokens:
                                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                    else:
                                                        if disbursePercentX100 * disburseAmount:
                                                            if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == block.timestamp - lastDisburseTime:
                                                                if disburseDuration:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        return 0
                                                                    if not totalTokens:
                                                                        return 0
                                                                    if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                        if not depositedTokens[address(arg1)]:
                                                                            if totalTokens:
                                                                                if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                        else:
                                                                            if depositedTokens[address(arg1)]:
                                                                                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                                    if totalTokens:
                                                                                        if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if not depositedTokens[address(arg1)]:
                                                                            if totalTokens:
                                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                        else:
                                                                            if depositedTokens[address(arg1)]:
                                                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                    if totalTokens:
                                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                else:
                                                    if disburseAmount:
                                                        if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                                            if not disbursePercentX100 * disburseAmount:
                                                                if disburseDuration:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        return 0
                                                                    if not totalTokens:
                                                                        return 0
                                                                    if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                        if not depositedTokens[address(arg1)]:
                                                                            if totalTokens:
                                                                                if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                        else:
                                                                            if depositedTokens[address(arg1)]:
                                                                                if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                                    if totalTokens:
                                                                                        if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if not depositedTokens[address(arg1)]:
                                                                            if totalTokens:
                                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                        else:
                                                                            if depositedTokens[address(arg1)]:
                                                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                    if totalTokens:
                                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if disbursePercentX100 * disburseAmount:
                                                                    if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == block.timestamp - lastDisburseTime:
                                                                        if disburseDuration:
                                                                            if not depositedTokens[address(arg1)]:
                                                                                return 0
                                                                            if not totalTokens:
                                                                                return 0
                                                                            if contractBalance >= (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                                if not depositedTokens[address(arg1)]:
                                                                                    if totalTokens:
                                                                                        if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                                else:
                                                                                    if depositedTokens[address(arg1)]:
                                                                                        if (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                                            if totalTokens:
                                                                                                if ((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                                    return (((block.timestamp * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                            else:
                                                                                if not depositedTokens[address(arg1)]:
                                                                                    if totalTokens:
                                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                                else:
                                                                                    if depositedTokens[address(arg1)]:
                                                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                            if totalTokens:
                                                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                    else:
                                        if lastDisburseTime >= disburseDuration + contractDeployTime:
                                            if not disburseAmount:
                                                if not disbursePercentX100 * disburseAmount:
                                                    if disburseDuration:
                                                        if not depositedTokens[address(arg1)]:
                                                            return 0
                                                        if not totalTokens:
                                                            return 0
                                                        if contractBalance >= 0 / disburseDuration / 10000:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                        if totalTokens:
                                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                        else:
                                                            if not depositedTokens[address(arg1)]:
                                                                if totalTokens:
                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if depositedTokens[address(arg1)]:
                                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                        if totalTokens:
                                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                else:
                                                    if disbursePercentX100 * disburseAmount:
                                                        if not 0 / disbursePercentX100 * disburseAmount:
                                                            if disburseDuration:
                                                                if not depositedTokens[address(arg1)]:
                                                                    return 0
                                                                if not totalTokens:
                                                                    return 0
                                                                if contractBalance >= 0 / disburseDuration / 10000:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        if totalTokens:
                                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if depositedTokens[address(arg1)]:
                                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                                if totalTokens:
                                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        if totalTokens:
                                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if depositedTokens[address(arg1)]:
                                                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                if totalTokens:
                                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                            else:
                                                if disburseAmount:
                                                    if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                                        if not disbursePercentX100 * disburseAmount:
                                                            if disburseDuration:
                                                                if not depositedTokens[address(arg1)]:
                                                                    return 0
                                                                if not totalTokens:
                                                                    return 0
                                                                if contractBalance >= 0 / disburseDuration / 10000:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        if totalTokens:
                                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if depositedTokens[address(arg1)]:
                                                                            if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                                if totalTokens:
                                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        if totalTokens:
                                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if depositedTokens[address(arg1)]:
                                                                            if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                if totalTokens:
                                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                        else:
                                                            if disbursePercentX100 * disburseAmount:
                                                                if not 0 / disbursePercentX100 * disburseAmount:
                                                                    if disburseDuration:
                                                                        if not depositedTokens[address(arg1)]:
                                                                            return 0
                                                                        if not totalTokens:
                                                                            return 0
                                                                        if contractBalance >= 0 / disburseDuration / 10000:
                                                                            if not depositedTokens[address(arg1)]:
                                                                                if totalTokens:
                                                                                    if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                            else:
                                                                                if depositedTokens[address(arg1)]:
                                                                                    if 0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == 0 / disburseDuration / 10000:
                                                                                        if totalTokens:
                                                                                            if (0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                                return ((0 / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                        else:
                                                                            if not depositedTokens[address(arg1)]:
                                                                                if totalTokens:
                                                                                    if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                        return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                            else:
                                                                                if depositedTokens[address(arg1)]:
                                                                                    if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                        if totalTokens:
                                                                                            if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                                return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                        else:
                                            if lastDisburseTime <= disburseDuration + contractDeployTime:
                                                if not disburseAmount:
                                                    if not disbursePercentX100 * disburseAmount:
                                                        if disburseDuration:
                                                            if not depositedTokens[address(arg1)]:
                                                                return 0
                                                            if not totalTokens:
                                                                return 0
                                                            if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                if not depositedTokens[address(arg1)]:
                                                                    if totalTokens:
                                                                        if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if depositedTokens[address(arg1)]:
                                                                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                            if totalTokens:
                                                                                if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if not depositedTokens[address(arg1)]:
                                                                    if totalTokens:
                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                else:
                                                                    if depositedTokens[address(arg1)]:
                                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                            if totalTokens:
                                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                    else:
                                                        if disbursePercentX100 * disburseAmount:
                                                            if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == disburseDuration + contractDeployTime - lastDisburseTime:
                                                                if disburseDuration:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        return 0
                                                                    if not totalTokens:
                                                                        return 0
                                                                    if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                        if not depositedTokens[address(arg1)]:
                                                                            if totalTokens:
                                                                                if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                        else:
                                                                            if depositedTokens[address(arg1)]:
                                                                                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                                    if totalTokens:
                                                                                        if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if not depositedTokens[address(arg1)]:
                                                                            if totalTokens:
                                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                        else:
                                                                            if depositedTokens[address(arg1)]:
                                                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                    if totalTokens:
                                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                else:
                                                    if disburseAmount:
                                                        if disbursePercentX100 * disburseAmount / disburseAmount == disbursePercentX100:
                                                            if not disbursePercentX100 * disburseAmount:
                                                                if disburseDuration:
                                                                    if not depositedTokens[address(arg1)]:
                                                                        return 0
                                                                    if not totalTokens:
                                                                        return 0
                                                                    if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                        if not depositedTokens[address(arg1)]:
                                                                            if totalTokens:
                                                                                if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                        else:
                                                                            if depositedTokens[address(arg1)]:
                                                                                if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                                    if totalTokens:
                                                                                        if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                    else:
                                                                        if not depositedTokens[address(arg1)]:
                                                                            if totalTokens:
                                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                        else:
                                                                            if depositedTokens[address(arg1)]:
                                                                                if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                    if totalTokens:
                                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                            else:
                                                                if disbursePercentX100 * disburseAmount:
                                                                    if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disbursePercentX100 * disburseAmount == disburseDuration + contractDeployTime - lastDisburseTime:
                                                                        if disburseDuration:
                                                                            if not depositedTokens[address(arg1)]:
                                                                                return 0
                                                                            if not totalTokens:
                                                                                return 0
                                                                            if contractBalance >= (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                                if not depositedTokens[address(arg1)]:
                                                                                    if totalTokens:
                                                                                        if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                                else:
                                                                                    if depositedTokens[address(arg1)]:
                                                                                        if (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == (disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000:
                                                                                            if totalTokens:
                                                                                                if ((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                                    return (((disburseDuration * disbursePercentX100 * disburseAmount) + (contractDeployTime * disbursePercentX100 * disburseAmount) - (lastDisburseTime * disbursePercentX100 * disburseAmount) / disburseDuration / 10000 * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                            else:
                                                                                if not depositedTokens[address(arg1)]:
                                                                                    if totalTokens:
                                                                                        if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                            return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
                                                                                else:
                                                                                    if depositedTokens[address(arg1)]:
                                                                                        if contractBalance * depositedTokens[address(arg1)] / depositedTokens[address(arg1)] == contractBalance:
                                                                                            if totalTokens:
                                                                                                if (contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23) >= (totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23:
                                                                                                    return ((contractBalance * depositedTokens[address(arg1)] / totalTokens) + ((totalDivPoints * depositedTokens[address(arg1)]) - (lastDivPoints[address(arg1)] * depositedTokens[address(arg1)]) / stor23))
    revert
}



}
