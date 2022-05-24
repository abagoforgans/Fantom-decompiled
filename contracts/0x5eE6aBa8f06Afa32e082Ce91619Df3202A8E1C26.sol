contract main {




// =====================  Runtime code  =====================


const decimals = 18

const genesis_supply = 50000 * 10^18

const TREASURY_FUND_ALLOCATION = 300000000 * 10^18

const TREASURY_FUND_VESTING_DURATION = (17520 * 24 * 3600)

const COMMUNITY_REWARD_ALLOCATION = 700000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint16 stor3; offset 160
address owner;
array of struct stor4;
array of struct stor5;
address treasuryAddress;
uint256 startTime;
uint256 endTime;
address treasuryFundAddress;
uint256 treasuryFundLastClaimed;
uint256 treasuryFundEmissionRate;
address communityRewardControllerAddress;
uint256 communityRewardClaimed;

function treasuryFundLastClaimed() payable {
    return treasuryFundLastClaimed
}

function totalSupply() payable {
    return totalSupply
}

function endTime() payable {
    return endTime
}

function treasury() payable {
    return treasuryAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function communityRewardController() payable {
    return communityRewardControllerAddress
}

function communityRewardClaimed() payable {
    return communityRewardClaimed
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function treasuryFund() payable {
    return treasuryFundAddress
}

function treasuryFundEmissionRate() payable {
    return treasuryFundEmissionRate
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setCommunityRewardController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'zero'
    communityRewardControllerAddress = arg1
}

function setTreasuryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    treasuryAddress = arg1
    emit TreasuryChanged(arg1);
}

function setTreasuryFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryFundAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only treasury fund address can trigger'
    if not arg1:
        revert with 0, 'zero'
    treasuryFundAddress = arg1
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function poolMint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.hasPool(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '!pools'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    emit ShareMinted(arg2, this.address, arg1);
}

function unclaimedTreasuryFund() payable {
    if block.timestamp <= endTime:
        if treasuryFundLastClaimed >= block.timestamp:
            return 0
        if block.timestamp < treasuryFundLastClaimed:
            revert with 0, 17
        if block.timestamp - treasuryFundLastClaimed and treasuryFundEmissionRate > -1 / block.timestamp - treasuryFundLastClaimed:
            revert with 0, 17
        return ((block.timestamp * treasuryFundEmissionRate) - (treasuryFundLastClaimed * treasuryFundEmissionRate))
    if treasuryFundLastClaimed >= endTime:
        return 0
    if endTime < treasuryFundLastClaimed:
        revert with 0, 17
    if endTime - treasuryFundLastClaimed and treasuryFundEmissionRate > -1 / endTime - treasuryFundLastClaimed:
        revert with 0, 17
    return ((endTime * treasuryFundEmissionRate) - (treasuryFundLastClaimed * treasuryFundEmissionRate))
}

function claimCommunityRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'invalidAmount'
    if not communityRewardControllerAddress:
        revert with 0, '!rewardController'
    if 700000000 * 10^18 < communityRewardClaimed:
        revert with 0, 17
    if arg1 > -communityRewardClaimed + 700000000 * 10^18:
        revert with 0, 'exceedRewards'
    if communityRewardClaimed > !arg1:
        revert with 0, 17
    communityRewardClaimed += arg1
    if not communityRewardControllerAddress:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg1:
        revert with 0, 17
    totalSupply += arg1
    if balanceOf[stor12] > !arg1:
        revert with 0, 17
    balanceOf[stor12] += arg1
    emit Transfer(arg1, 0, communityRewardControllerAddress);
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28] >> 32, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 'ERC20: burn from the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30] >> 16, 0
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function poolBurnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.hasPool(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '!pools'
    if not arg1:
        revert with 0, 'ERC20: burn from the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    34,
                    0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 162 len 30] >> 16,
                    0
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    36,
                    0x6545524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 260 len 28] >> 32,
                    0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    emit ShareBurned(arg2, arg1, this.address);
}

function claimTreasuryFundRewards() payable {
    if treasuryFundAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only treasury fund address can trigger'
    if block.timestamp <= endTime:
        if treasuryFundLastClaimed < block.timestamp:
            if block.timestamp < treasuryFundLastClaimed:
                revert with 0, 17
            if block.timestamp - treasuryFundLastClaimed and treasuryFundEmissionRate > -1 / block.timestamp - treasuryFundLastClaimed:
                revert with 0, 17
            if (block.timestamp * treasuryFundEmissionRate) - (treasuryFundLastClaimed * treasuryFundEmissionRate) > 0:
                if treasuryFundAddress:
                    if not treasuryFundAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !((block.timestamp * treasuryFundEmissionRate) - (treasuryFundLastClaimed * treasuryFundEmissionRate)):
                        revert with 0, 17
                    totalSupply = totalSupply + (block.timestamp * treasuryFundEmissionRate) - (treasuryFundLastClaimed * treasuryFundEmissionRate)
                    if balanceOf[stor9] > !((block.timestamp * treasuryFundEmissionRate) - (treasuryFundLastClaimed * treasuryFundEmissionRate)):
                        revert with 0, 17
                    balanceOf[stor9] = balanceOf[stor9] + (block.timestamp * treasuryFundEmissionRate) - (treasuryFundLastClaimed * treasuryFundEmissionRate)
                    emit Transfer(((block.timestamp * treasuryFundEmissionRate) - (treasuryFundLastClaimed * treasuryFundEmissionRate)), 0, treasuryFundAddress);
                    treasuryFundLastClaimed = block.timestamp
    else:
        if treasuryFundLastClaimed < endTime:
            if endTime < treasuryFundLastClaimed:
                revert with 0, 17
            if endTime - treasuryFundLastClaimed and treasuryFundEmissionRate > -1 / endTime - treasuryFundLastClaimed:
                revert with 0, 17
            if (endTime * treasuryFundEmissionRate) - (treasuryFundLastClaimed * treasuryFundEmissionRate) > 0:
                if treasuryFundAddress:
                    if not treasuryFundAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !((endTime * treasuryFundEmissionRate) - (treasuryFundLastClaimed * treasuryFundEmissionRate)):
                        revert with 0, 17
                    totalSupply = totalSupply + (endTime * treasuryFundEmissionRate) - (treasuryFundLastClaimed * treasuryFundEmissionRate)
                    if balanceOf[stor9] > !((endTime * treasuryFundEmissionRate) - (treasuryFundLastClaimed * treasuryFundEmissionRate)):
                        revert with 0, 17
                    balanceOf[stor9] = balanceOf[stor9] + (endTime * treasuryFundEmissionRate) - (treasuryFundLastClaimed * treasuryFundEmissionRate)
                    emit Transfer(((endTime * treasuryFundEmissionRate) - (treasuryFundLastClaimed * treasuryFundEmissionRate)), 0, treasuryFundAddress);
                    treasuryFundLastClaimed = block.timestamp
}

function initialize(string arg1, string arg2, address arg3, address arg4, address arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not uint8(stor3.field_168):
        if uint8(stor3.field_160):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor3.field_168):
            uint16(stor3.field_160) = 257
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor5[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor4[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4.length = 0
            idx = 0
            while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor4[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    treasuryAddress = arg3
    treasuryFundAddress = arg4
    communityRewardControllerAddress = arg5
    startTime = arg6
    if arg6 > -63072001:
        revert with 0, 17
    endTime = arg6 + (17520 * 24 * 3600)
    treasuryFundLastClaimed = arg6
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > 0xfffffffffffffffffffffffffffffffffffffffffffff5697e9c0f5a84bfffff:
        revert with 0, 17
    totalSupply += 50000 * 10^18
    if balanceOf[address(msg.sender)] > 0xfffffffffffffffffffffffffffffffffffffffffffff5697e9c0f5a84bfffff:
        revert with 0, 17
    balanceOf[address(msg.sender)] += 50000 * 10^18
    emit Transfer(50000 * 10^18, 0, msg.sender);
    if not uint8(stor3.field_168):
        uint8(stor3.field_168) = 0
}

function name() payable {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}



}
