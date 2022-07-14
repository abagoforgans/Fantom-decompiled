contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint32 stor2;
address rewardTokenAddress;
address zapperAddress;
uint256 rewardPerSecond;
uint16 depositFeeToBurn; offset 160
address burnAddress;
address sub_3c86abfcAddress;
array of struct poolInfo;
uint256 startTime;
uint256 endTime;
uint256 sub_c2a0fb04;
uint256 stor13;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536,
           poolInfo[arg1].field_1792
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_512, userInfo[arg1].field_768, userInfo[arg1].field_1024
}

function endTime() payable {
    return endTime
}

function sub_3c86abfc(?) payable {
    return sub_3c86abfcAddress
}

function burnAddress() payable {
    return burnAddress
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function rewardPerSecond() payable {
    return rewardPerSecond
}

function depositFeeToBurn() payable {
    return depositFeeToBurn
}

function zapper() payable {
    return zapperAddress
}

function sub_c2a0fb04(?) payable {
    return sub_c2a0fb04
}

function rewardToken() payable {
    return address(rewardTokenAddress)
}

function _fallback() payable {
    revert
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    endTime = block.timestamp
}

function sub_375cf3de(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    endTime = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_15bf0bc1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3c86abfcAddress = address(arg1)
    sub_c2a0fb04 = arg2
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= endTime:
        if arg2 < arg1:
            revert with 0, 17
        return (arg2 - arg1)
    if arg1 >= endTime:
        return 0
    if endTime < arg1:
        revert with 0, 17
    return (endTime - arg1)
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function setZapper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'setZapTimeLock: not address 0'
    zapperAddress = arg1
    require ext_code.size(address(rewardTokenAddress))
    call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sweep(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getUserStakedTokens2(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userInfo[address(arg1)].field_256:
        mem[128] = userInfo[address(arg1)][1].field_0
        idx = 128
        s = 0
        while (32 * userInfo[address(arg1)].field_256) + 96 > idx:
            mem[idx + 32] = userInfo[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=userInfo[address(arg1)].field_256, data=mem[128 len 32 * userInfo[address(arg1)].field_256])
    mem[(32 * userInfo[address(arg1)].field_256) + 128] = 32
    mem[(32 * userInfo[address(arg1)].field_256) + 160] = userInfo[address(arg1)].field_256
    mem[(32 * userInfo[address(arg1)].field_256) + 192 len 32 * userInfo[address(arg1)].field_256] = mem[128 len 32 * userInfo[address(arg1)].field_256]
    return memory
      from (32 * userInfo[address(arg1)].field_256) + 128
       len (96 * userInfo[address(arg1)].field_256) + 64
}

function getUserStakedTokens1(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userInfo[address(arg1)].field_0:
        mem[128] = userInfo[address(arg1)].field_0
        if (32 * userInfo[address(arg1)].field_0) + 32 > 64:
            mem[160] = userInfo[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * userInfo[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = userInfo[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * userInfo[address(arg1)].field_0) + 128] = 32
    mem[(32 * userInfo[address(arg1)].field_0) + 160] = userInfo[address(arg1)].field_0
    mem[(32 * userInfo[address(arg1)].field_0) + 192 len 32 * userInfo[address(arg1)].field_0] = mem[128 len 32 * userInfo[address(arg1)].field_0]
    return memory
      from (32 * userInfo[address(arg1)].field_0) + 128
       len (96 * userInfo[address(arg1)].field_0) + 64
}

function emergencyWithdraw() payable {
    if 0 >= poolInfo.length:
        revert with 0, 50
    mem[0] = msg.sender
    if uint256(poolInfo.field_256) < userInfo[msg.sender].field_512:
        revert with 0, 17
    uint256(poolInfo.field_256) -= userInfo[msg.sender].field_512
    idx = userInfo[mem[0]].field_512
    while idx:
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= userInfo[msg.sender].field_0:
            revert with 0, 50
        require ext_code.size(address(poolInfo.field_1536))
        call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, userInfo[msg.sender][idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= userInfo[msg.sender].field_256:
            revert with 0, 50
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = userInfo[msg.sender][idx + 1].field_0
        require ext_code.size(address(poolInfo.field_1792))
        call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, userInfo[msg.sender][idx + 1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not userInfo[msg.sender].field_0:
            revert with 0, 49
        userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = 0
        userInfo[msg.sender].field_0--
        if not userInfo[msg.sender].field_256:
            revert with 0, 49
        mem[0] = sha3(msg.sender, 8) + 1
        stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = 0
        userInfo[msg.sender].field_256--
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    userInfo[msg.sender].field_512 = 0
    userInfo[msg.sender].field_768 = 0
    emit EmergencyWithdraw(0, msg.sender);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > poolInfo[arg1].field_0:
        if poolInfo[arg1].field_256:
            if block.timestamp <= endTime:
                if block.timestamp < poolInfo[arg1].field_0:
                    revert with 0, 17
                if block.timestamp - poolInfo[arg1].field_0 and rewardPerSecond > -1 / block.timestamp - poolInfo[arg1].field_0:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_0 * rewardPerSecond) and 10^12 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_0 * rewardPerSecond):
                    revert with 0, 17
                if not poolInfo[arg1].field_256:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !((10^12 * block.timestamp * rewardPerSecond) - (10^12 * poolInfo[arg1].field_0 * rewardPerSecond) / poolInfo[arg1].field_256):
                    revert with 0, 17
                poolInfo[arg1].field_768 += (10^12 * block.timestamp * rewardPerSecond) - (10^12 * poolInfo[arg1].field_0 * rewardPerSecond) / poolInfo[arg1].field_256
            else:
                if poolInfo[arg1].field_0 >= endTime:
                    if False and rewardPerSecond > 0:
                        revert with 0, 17
                    if not poolInfo[arg1].field_256:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_256):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_256
                else:
                    if endTime < poolInfo[arg1].field_0:
                        revert with 0, 17
                    if endTime - poolInfo[arg1].field_0 and rewardPerSecond > -1 / endTime - poolInfo[arg1].field_0:
                        revert with 0, 17
                    if (endTime * rewardPerSecond) - (poolInfo[arg1].field_0 * rewardPerSecond) and 10^12 > -1 / (endTime * rewardPerSecond) - (poolInfo[arg1].field_0 * rewardPerSecond):
                        revert with 0, 17
                    if not poolInfo[arg1].field_256:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !((10^12 * endTime * rewardPerSecond) - (10^12 * poolInfo[arg1].field_0 * rewardPerSecond) / poolInfo[arg1].field_256):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += (10^12 * endTime * rewardPerSecond) - (10^12 * poolInfo[arg1].field_0 * rewardPerSecond) / poolInfo[arg1].field_256
        poolInfo[arg1].field_0 = block.timestamp
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.timestamp > poolInfo[idx].field_0:
            if poolInfo[idx].field_256:
                if block.timestamp <= endTime:
                    if block.timestamp < poolInfo[idx].field_0:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_0 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_0:
                        revert with 0, 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_0 * rewardPerSecond) and 10^12 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_0 * rewardPerSecond):
                        revert with 0, 17
                    if not poolInfo[idx].field_256:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !((10^12 * block.timestamp * rewardPerSecond) - (10^12 * poolInfo[idx].field_0 * rewardPerSecond) / poolInfo[idx].field_256):
                        revert with 0, 17
                    poolInfo[idx].field_768 += (10^12 * block.timestamp * rewardPerSecond) - (10^12 * poolInfo[idx].field_0 * rewardPerSecond) / poolInfo[idx].field_256
                else:
                    if poolInfo[idx].field_0 >= endTime:
                        if False and rewardPerSecond > 0:
                            revert with 0, 17
                        if not poolInfo[idx].field_256:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_256):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_256
                    else:
                        if endTime < poolInfo[idx].field_0:
                            revert with 0, 17
                        if endTime - poolInfo[idx].field_0 and rewardPerSecond > -1 / endTime - poolInfo[idx].field_0:
                            revert with 0, 17
                        if (endTime * rewardPerSecond) - (poolInfo[idx].field_0 * rewardPerSecond) and 10^12 > -1 / (endTime * rewardPerSecond) - (poolInfo[idx].field_0 * rewardPerSecond):
                            revert with 0, 17
                        if not poolInfo[idx].field_256:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !((10^12 * endTime * rewardPerSecond) - (10^12 * poolInfo[idx].field_0 * rewardPerSecond) / poolInfo[idx].field_256):
                            revert with 0, 17
                        poolInfo[idx].field_768 += (10^12 * endTime * rewardPerSecond) - (10^12 * poolInfo[idx].field_0 * rewardPerSecond) / poolInfo[idx].field_256
            poolInfo[idx].field_0 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updateRewardPerSecond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerSecond = arg1
    if 0 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > uint256(poolInfo.field_0):
        if uint256(poolInfo.field_256):
            if block.timestamp <= endTime:
                if block.timestamp < uint256(poolInfo.field_0):
                    revert with 0, 17
                if block.timestamp - uint256(poolInfo.field_0) and rewardPerSecond > -1 / block.timestamp - uint256(poolInfo.field_0):
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond) and 10^12 > -1 / (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond):
                    revert with 0, 17
                if not uint256(poolInfo.field_256):
                    revert with 0, 18
                if uint256(poolInfo.field_768) > !((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)):
                    revert with 0, 17
                uint256(poolInfo.field_768) += (10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)
            else:
                if uint256(poolInfo.field_0) >= endTime:
                    if False and rewardPerSecond > 0:
                        revert with 0, 17
                    if not uint256(poolInfo.field_256):
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(0 / uint256(poolInfo.field_256)):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_256)
                else:
                    if endTime < uint256(poolInfo.field_0):
                        revert with 0, 17
                    if endTime - uint256(poolInfo.field_0) and rewardPerSecond > -1 / endTime - uint256(poolInfo.field_0):
                        revert with 0, 17
                    if (endTime * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond) and 10^12 > -1 / (endTime * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond):
                        revert with 0, 17
                    if not uint256(poolInfo.field_256):
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += (10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)
        uint256(poolInfo.field_0) = block.timestamp
}

function compound() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if 0 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > uint256(poolInfo.field_0):
        if uint256(poolInfo.field_256):
            if block.timestamp <= endTime:
                if block.timestamp < uint256(poolInfo.field_0):
                    revert with 0, 17
                if block.timestamp - uint256(poolInfo.field_0) and rewardPerSecond > -1 / block.timestamp - uint256(poolInfo.field_0):
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond) and 10^12 > -1 / (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond):
                    revert with 0, 17
                if not uint256(poolInfo.field_256):
                    revert with 0, 18
                if uint256(poolInfo.field_768) > !((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)):
                    revert with 0, 17
                uint256(poolInfo.field_768) += (10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)
            else:
                if uint256(poolInfo.field_0) >= endTime:
                    if False and rewardPerSecond > 0:
                        revert with 0, 17
                    if not uint256(poolInfo.field_256):
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(0 / uint256(poolInfo.field_256)):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_256)
                else:
                    if endTime < uint256(poolInfo.field_0):
                        revert with 0, 17
                    if endTime - uint256(poolInfo.field_0) and rewardPerSecond > -1 / endTime - uint256(poolInfo.field_0):
                        revert with 0, 17
                    if (endTime * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond) and 10^12 > -1 / (endTime * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond):
                        revert with 0, 17
                    if not uint256(poolInfo.field_256):
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += (10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)
        uint256(poolInfo.field_0) = block.timestamp
    if userInfo[msg.sender].field_512:
        if userInfo[msg.sender].field_512 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_512:
            revert with 0, 17
        if userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_768:
            revert with 0, 17
        if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768:
            if not sub_c2a0fb04:
                require ext_code.size(zapperAddress)
                call zapperAddress.zapInToken(address arg1, uint256 arg2, address arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(stor2), (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768, address(poolInfo.field_1280), msg.sender
            else:
                require ext_code.size(sub_3c86abfcAddress)
                staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(zapperAddress)
                    call zapperAddress.zapInToken(address arg1, uint256 arg2, address arg3, address arg4) with:
                         gas gas_remaining wei
                        args address(rewardTokenAddress), (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768, address(poolInfo.field_1280), msg.sender
                else:
                    if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 and sub_c2a0fb04 > -1 / (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768:
                        revert with 0, 17
                    if not stor13:
                        revert with 0, 18
                    if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 > !((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13):
                        revert with 0, 17
                    require ext_code.size(zapperAddress)
                    call zapperAddress.zapInToken(address arg1, uint256 arg2, address arg3, address arg4) with:
                         gas gas_remaining wei
                        args address(rewardTokenAddress), (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 + ((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13), address(poolInfo.field_1280), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if userInfo[msg.sender].field_512 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_512:
                revert with 0, 17
            userInfo[msg.sender].field_768 = userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12
    emit Compound(0, msg.sender);
    stor1 = 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0 >= poolInfo.length:
        revert with 0, 50
    if arg1 > userInfo[msg.sender].field_512:
        revert with 0, 'withdraw: not good'
    if 0 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > uint256(poolInfo.field_0):
        if uint256(poolInfo.field_256):
            if block.timestamp <= endTime:
                if block.timestamp < uint256(poolInfo.field_0):
                    revert with 0, 17
                if block.timestamp - uint256(poolInfo.field_0) and rewardPerSecond > -1 / block.timestamp - uint256(poolInfo.field_0):
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond) and 10^12 > -1 / (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond):
                    revert with 0, 17
                if not uint256(poolInfo.field_256):
                    revert with 0, 18
                if uint256(poolInfo.field_768) > !((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)):
                    revert with 0, 17
                uint256(poolInfo.field_768) += (10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)
            else:
                if uint256(poolInfo.field_0) >= endTime:
                    if False and rewardPerSecond > 0:
                        revert with 0, 17
                    if not uint256(poolInfo.field_256):
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(0 / uint256(poolInfo.field_256)):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_256)
                else:
                    if endTime < uint256(poolInfo.field_0):
                        revert with 0, 17
                    if endTime - uint256(poolInfo.field_0) and rewardPerSecond > -1 / endTime - uint256(poolInfo.field_0):
                        revert with 0, 17
                    if (endTime * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond) and 10^12 > -1 / (endTime * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond):
                        revert with 0, 17
                    if not uint256(poolInfo.field_256):
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += (10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)
        uint256(poolInfo.field_0) = block.timestamp
    if userInfo[msg.sender].field_512 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_512:
        revert with 0, 17
    if userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_768:
        revert with 0, 17
    if not (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768:
        if arg1:
            if userInfo[msg.sender].field_512 < arg1:
                revert with 0, 17
            idx = userInfo[msg.sender].field_512
            while idx > userInfo[msg.sender].field_512 - arg1:
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= userInfo[msg.sender].field_0:
                    revert with 0, 50
                require ext_code.size(address(poolInfo.field_1536))
                call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, userInfo[msg.sender][idx].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= userInfo[msg.sender].field_256:
                    revert with 0, 50
                mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[100] = this.address
                mem[132] = msg.sender
                mem[164] = userInfo[msg.sender][idx + 1].field_0
                require ext_code.size(address(poolInfo.field_1792))
                call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, userInfo[msg.sender][idx + 1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not userInfo[msg.sender].field_0:
                    revert with 0, 49
                userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = 0
                userInfo[msg.sender].field_0--
                if not userInfo[msg.sender].field_256:
                    revert with 0, 49
                mem[0] = sha3(msg.sender, 8) + 1
                stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = 0
                userInfo[msg.sender].field_256--
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                continue 
            if userInfo[msg.sender].field_512 < arg1:
                revert with 0, 17
            userInfo[msg.sender].field_512 -= arg1
            if uint256(poolInfo.field_256) < arg1:
                revert with 0, 17
            uint256(poolInfo.field_256) -= arg1
    else:
        if not sub_c2a0fb04:
            require ext_code.size(address(rewardTokenAddress))
            call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1:
                if userInfo[msg.sender].field_512 < arg1:
                    revert with 0, 17
                idx = userInfo[msg.sender].field_512
                while idx > userInfo[msg.sender].field_512 - arg1:
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= userInfo[msg.sender].field_0:
                        revert with 0, 50
                    require ext_code.size(address(poolInfo.field_1536))
                    call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, userInfo[msg.sender][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= userInfo[msg.sender].field_256:
                        revert with 0, 50
                    mem[ceil32(return_data.size) + 96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = this.address
                    mem[ceil32(return_data.size) + 132] = msg.sender
                    mem[ceil32(return_data.size) + 164] = userInfo[msg.sender][idx + 1].field_0
                    require ext_code.size(address(poolInfo.field_1792))
                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, userInfo[msg.sender][idx + 1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not userInfo[msg.sender].field_0:
                        revert with 0, 49
                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = 0
                    userInfo[msg.sender].field_0--
                    if not userInfo[msg.sender].field_256:
                        revert with 0, 49
                    mem[0] = sha3(msg.sender, 8) + 1
                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = 0
                    userInfo[msg.sender].field_256--
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                if userInfo[msg.sender].field_512 < arg1:
                    revert with 0, 17
                userInfo[msg.sender].field_512 -= arg1
                if uint256(poolInfo.field_256) < arg1:
                    revert with 0, 17
                uint256(poolInfo.field_256) -= arg1
        else:
            require ext_code.size(sub_3c86abfcAddress)
            staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(address(rewardTokenAddress))
                call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
            else:
                if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 and sub_c2a0fb04 > -1 / (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768:
                    revert with 0, 17
                if not stor13:
                    revert with 0, 18
                if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 > !((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13):
                    revert with 0, 17
                require ext_code.size(address(rewardTokenAddress))
                call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 + ((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1:
                if userInfo[msg.sender].field_512 < arg1:
                    revert with 0, 17
                idx = userInfo[msg.sender].field_512
                while idx > userInfo[msg.sender].field_512 - arg1:
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= userInfo[msg.sender].field_0:
                        revert with 0, 50
                    require ext_code.size(address(poolInfo.field_1536))
                    call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, userInfo[msg.sender][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= userInfo[msg.sender].field_256:
                        revert with 0, 50
                    mem[(2 * ceil32(return_data.size)) + 96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 164] = userInfo[msg.sender][idx + 1].field_0
                    require ext_code.size(address(poolInfo.field_1792))
                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, userInfo[msg.sender][idx + 1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not userInfo[msg.sender].field_0:
                        revert with 0, 49
                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = 0
                    userInfo[msg.sender].field_0--
                    if not userInfo[msg.sender].field_256:
                        revert with 0, 49
                    mem[0] = sha3(msg.sender, 8) + 1
                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = 0
                    userInfo[msg.sender].field_256--
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                if userInfo[msg.sender].field_512 < arg1:
                    revert with 0, 17
                userInfo[msg.sender].field_512 -= arg1
                if uint256(poolInfo.field_256) < arg1:
                    revert with 0, 17
                uint256(poolInfo.field_256) -= arg1
    if userInfo[msg.sender].field_512 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_512:
        revert with 0, 17
    userInfo[msg.sender].field_768 = userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12
    emit Withdraw(arg1, msg.sender);
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= uint256(poolInfo.field_0):
        if userInfo[address(arg1)].field_512 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_512:
            revert with 0, 17
        if userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12 < userInfo[address(arg1)].field_768:
            revert with 0, 17
        if (userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768 <= 0:
            return ((userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768)
        if sub_c2a0fb04 <= 0:
            return ((userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768)
        require ext_code.size(sub_3c86abfcAddress)
        staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return ((userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768)
        if (userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768 and sub_c2a0fb04 > -1 / (userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768:
            revert with 0, 17
        if not stor13:
            revert with 0, 18
        if (userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768 > !((userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_768 * sub_c2a0fb04) / stor13):
            revert with 0, 17
        return ((userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768 + ((userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_768 * sub_c2a0fb04) / stor13))
    if not uint256(poolInfo.field_256):
        if userInfo[address(arg1)].field_512 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_512:
            revert with 0, 17
        if userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12 < userInfo[address(arg1)].field_768:
            revert with 0, 17
        if (userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768 <= 0:
            return ((userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768)
        if sub_c2a0fb04 <= 0:
            return ((userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768)
        require ext_code.size(sub_3c86abfcAddress)
        staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return ((userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768)
        if (userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768 and sub_c2a0fb04 > -1 / (userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768:
            revert with 0, 17
        if not stor13:
            revert with 0, 18
        if (userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768 > !((userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_768 * sub_c2a0fb04) / stor13):
            revert with 0, 17
        return ((userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_768 + ((userInfo[address(arg1)].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_768 * sub_c2a0fb04) / stor13))
    if block.timestamp <= endTime:
        if block.timestamp < uint256(poolInfo.field_0):
            revert with 0, 17
        if block.timestamp - uint256(poolInfo.field_0) and rewardPerSecond > -1 / block.timestamp - uint256(poolInfo.field_0):
            revert with 0, 17
        if (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond) and 10^12 > -1 / (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond):
            revert with 0, 17
        if not uint256(poolInfo.field_256):
            revert with 0, 18
        if uint256(poolInfo.field_768) > !((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)):
            revert with 0, 17
        if userInfo[address(arg1)].field_512 and uint256(poolInfo.field_768) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)) > -1 / userInfo[address(arg1)].field_512:
            revert with 0, 17
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12 < userInfo[address(arg1)].field_768:
            revert with 0, 17
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768 <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768)
        if sub_c2a0fb04 <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768)
        require ext_code.size(sub_3c86abfcAddress)
        staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768)
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768 and sub_c2a0fb04 > -1 / ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768:
            revert with 0, 17
        if not stor13:
            revert with 0, 18
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768 > !(((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_768 * sub_c2a0fb04) / stor13):
            revert with 0, 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768 + (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_768 * sub_c2a0fb04) / stor13))
    if uint256(poolInfo.field_0) >= endTime:
        if False and rewardPerSecond > 0:
            revert with 0, 17
        if not uint256(poolInfo.field_256):
            revert with 0, 18
        if uint256(poolInfo.field_768) > !(0 / uint256(poolInfo.field_256)):
            revert with 0, 17
        if userInfo[address(arg1)].field_512 and uint256(poolInfo.field_768) + (0 / uint256(poolInfo.field_256)) > -1 / userInfo[address(arg1)].field_512:
            revert with 0, 17
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12 < userInfo[address(arg1)].field_768:
            revert with 0, 17
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768 <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768)
        if sub_c2a0fb04 <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768)
        require ext_code.size(sub_3c86abfcAddress)
        staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768)
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768 and sub_c2a0fb04 > -1 / ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768:
            revert with 0, 17
        if not stor13:
            revert with 0, 18
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768 > !(((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_768 * sub_c2a0fb04) / stor13):
            revert with 0, 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768 + (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_768 * sub_c2a0fb04) / stor13))
    if endTime < uint256(poolInfo.field_0):
        revert with 0, 17
    if endTime - uint256(poolInfo.field_0) and rewardPerSecond > -1 / endTime - uint256(poolInfo.field_0):
        revert with 0, 17
    if (endTime * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond) and 10^12 > -1 / (endTime * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond):
        revert with 0, 17
    if not uint256(poolInfo.field_256):
        revert with 0, 18
    if uint256(poolInfo.field_768) > !((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)):
        revert with 0, 17
    if userInfo[address(arg1)].field_512 and uint256(poolInfo.field_768) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)) > -1 / userInfo[address(arg1)].field_512:
        revert with 0, 17
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12 < userInfo[address(arg1)].field_768:
        revert with 0, 17
    if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768 <= 0:
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768)
    if sub_c2a0fb04 <= 0:
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768)
    require ext_code.size(sub_3c86abfcAddress)
    staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768)
    if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768 and sub_c2a0fb04 > -1 / ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768:
        revert with 0, 17
    if not stor13:
        revert with 0, 18
    if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768 > !(((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_768 * sub_c2a0fb04) / stor13):
        revert with 0, 17
    return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12) - userInfo[address(arg1)].field_768 + (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_512) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_512) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_768 * sub_c2a0fb04) / stor13))
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0 >= poolInfo.length:
        revert with 0, 50
    mem[32] = 8
    mem[0] = 7
    if block.timestamp <= uint256(poolInfo.field_0):
        if not userInfo[msg.sender].field_512:
            if arg1:
                mem[96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(poolInfo.field_1024)
                mem[132] = msg.sender
                require ext_code.size(address(poolInfo.field_1536))
                staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args uint256(poolInfo.field_1024), msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _10 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                _12 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                mem[ceil32(return_data.size) + 96] = _12
                require return_data.size >= _10 + (32 * _12) + 32
                mem[ceil32(return_data.size) + 128 len 32 * _12] = mem[_10 + 128 len 32 * _12]
                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                mem[mem[64] + 36] = msg.sender
                require ext_code.size(address(poolInfo.field_1792))
                staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args uint256(poolInfo.field_1024), msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1129 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1154 = mem[_1129]
                require mem[_1129] <= test266151307()
                require _1129 + mem[_1129] + 31 < _1129 + return_data.size
                _1179 = mem[_1129 + mem[_1129]]
                if mem[_1129 + mem[_1129]] > test266151307():
                    revert with 0, 65
                if _1129 + ceil32(return_data.size) + (32 * mem[_1129 + mem[_1129]]) + 32 > test266151307() or (32 * mem[_1129 + mem[_1129]]) + 32 < 0:
                    revert with 0, 65
                mem[64] = _1129 + ceil32(return_data.size) + (32 * mem[_1129 + mem[_1129]]) + 32
                mem[_1129 + ceil32(return_data.size)] = _1179
                require return_data.size >= _1154 + (32 * _1179) + 32
                mem[_1129 + ceil32(return_data.size) + 32 len 32 * _1179] = mem[_1129 + _1154 + 32 len 32 * _1179]
                if _12 < arg1:
                    revert with 0, 'deposit: Not enough NFTs'
                if _1179 < arg1:
                    revert with 0, 'deposit: Not enough NFTs'
                idx = 0
                while idx < arg1:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    _2424 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _2424
                    require ext_code.size(address(poolInfo.field_1536))
                    call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _2424
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_1129 + ceil32(return_data.size)]:
                        revert with 0, 50
                    _2524 = mem[(32 * idx) + _1129 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _2524
                    require ext_code.size(address(poolInfo.field_1792))
                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _2524
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    userInfo[msg.sender].field_0++
                    mem[0] = sha3(msg.sender, 8)
                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    if idx >= mem[_1129 + ceil32(return_data.size)]:
                        revert with 0, 50
                    userInfo[msg.sender].field_256++
                    mem[0] = sha3(msg.sender, 8) + 1
                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1129 + ceil32(return_data.size) + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if userInfo[msg.sender].field_512 > !arg1:
                    revert with 0, 17
                userInfo[msg.sender].field_512 += arg1
                if uint256(poolInfo.field_256) > !arg1:
                    revert with 0, 17
                uint256(poolInfo.field_256) += arg1
        else:
            if userInfo[msg.sender].field_512 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_512:
                revert with 0, 17
            if userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_768:
                revert with 0, 17
            if not (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768:
                if arg1:
                    mem[96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(poolInfo.field_1024)
                    mem[132] = msg.sender
                    require ext_code.size(address(poolInfo.field_1536))
                    staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args uint256(poolInfo.field_1024), msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _55 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                    require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                    require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                    _61 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                    if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                    mem[ceil32(return_data.size) + 96] = _61
                    require return_data.size >= _55 + (32 * _61) + 32
                    mem[ceil32(return_data.size) + 128 len 32 * _61] = mem[_55 + 128 len 32 * _61]
                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(address(poolInfo.field_1792))
                    staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args uint256(poolInfo.field_1024), msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1130 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1155 = mem[_1130]
                    require mem[_1130] <= test266151307()
                    require _1130 + mem[_1130] + 31 < _1130 + return_data.size
                    _1180 = mem[_1130 + mem[_1130]]
                    if mem[_1130 + mem[_1130]] > test266151307():
                        revert with 0, 65
                    if _1130 + ceil32(return_data.size) + (32 * mem[_1130 + mem[_1130]]) + 32 > test266151307() or (32 * mem[_1130 + mem[_1130]]) + 32 < 0:
                        revert with 0, 65
                    mem[64] = _1130 + ceil32(return_data.size) + (32 * mem[_1130 + mem[_1130]]) + 32
                    mem[_1130 + ceil32(return_data.size)] = _1180
                    require return_data.size >= _1155 + (32 * _1180) + 32
                    mem[_1130 + ceil32(return_data.size) + 32 len 32 * _1180] = mem[_1130 + _1155 + 32 len 32 * _1180]
                    if _61 < arg1:
                        revert with 0, 'deposit: Not enough NFTs'
                    if _1180 < arg1:
                        revert with 0, 'deposit: Not enough NFTs'
                    idx = 0
                    while idx < arg1:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _2426 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _2426
                        require ext_code.size(address(poolInfo.field_1536))
                        call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _2426
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_1130 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _2526 = mem[(32 * idx) + _1130 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _2526
                        require ext_code.size(address(poolInfo.field_1792))
                        call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _2526
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        userInfo[msg.sender].field_0++
                        mem[0] = sha3(msg.sender, 8)
                        userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        if idx >= mem[_1130 + ceil32(return_data.size)]:
                            revert with 0, 50
                        userInfo[msg.sender].field_256++
                        mem[0] = sha3(msg.sender, 8) + 1
                        stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1130 + ceil32(return_data.size) + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if userInfo[msg.sender].field_512 > !arg1:
                        revert with 0, 17
                    userInfo[msg.sender].field_512 += arg1
                    if uint256(poolInfo.field_256) > !arg1:
                        revert with 0, 17
                    uint256(poolInfo.field_256) += arg1
            else:
                mem[100] = msg.sender
                if not sub_c2a0fb04:
                    mem[132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                    require ext_code.size(address(rewardTokenAddress))
                    call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if arg1:
                        mem[ceil32(return_data.size) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 100] = uint256(poolInfo.field_1024)
                        mem[ceil32(return_data.size) + 132] = msg.sender
                        require ext_code.size(address(poolInfo.field_1536))
                        staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                gas gas_remaining wei
                               args uint256(poolInfo.field_1024), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _109 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < ceil32(return_data.size) + return_data.size + 96
                        _123 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                        require return_data.size >= _109 + (32 * _123) + 32
                        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _123] = mem[ceil32(return_data.size) + _109 + 128 len 32 * _123]
                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(address(poolInfo.field_1792))
                        staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                gas gas_remaining wei
                               args uint256(poolInfo.field_1024), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1131 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1156 = mem[_1131]
                        require mem[_1131] <= test266151307()
                        require _1131 + mem[_1131] + 31 < _1131 + return_data.size
                        _1181 = mem[_1131 + mem[_1131]]
                        if mem[_1131 + mem[_1131]] > test266151307():
                            revert with 0, 65
                        if _1131 + ceil32(return_data.size) + (32 * mem[_1131 + mem[_1131]]) + 32 > test266151307() or (32 * mem[_1131 + mem[_1131]]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = _1131 + ceil32(return_data.size) + (32 * mem[_1131 + mem[_1131]]) + 32
                        mem[_1131 + ceil32(return_data.size)] = _1181
                        require return_data.size >= _1156 + (32 * _1181) + 32
                        mem[_1131 + ceil32(return_data.size) + 32 len 32 * _1181] = mem[_1131 + _1156 + 32 len 32 * _1181]
                        if mem[(2 * ceil32(return_data.size)) + 96] < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        if _1181 < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        idx = 0
                        while idx < arg1:
                            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            _2428 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _2428
                            require ext_code.size(address(poolInfo.field_1536))
                            call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _2428
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_1131 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _2528 = mem[(32 * idx) + _1131 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _2528
                            require ext_code.size(address(poolInfo.field_1792))
                            call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _2528
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            userInfo[msg.sender].field_0++
                            mem[0] = sha3(msg.sender, 8)
                            userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                            if idx >= mem[_1131 + ceil32(return_data.size)]:
                                revert with 0, 50
                            userInfo[msg.sender].field_256++
                            mem[0] = sha3(msg.sender, 8) + 1
                            stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1131 + ceil32(return_data.size) + 32]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if userInfo[msg.sender].field_512 > !arg1:
                            revert with 0, 17
                        userInfo[msg.sender].field_512 += arg1
                        if uint256(poolInfo.field_256) > !arg1:
                            revert with 0, 17
                        uint256(poolInfo.field_256) += arg1
                else:
                    require ext_code.size(sub_3c86abfcAddress)
                    staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        mem[ceil32(return_data.size) + 100] = msg.sender
                        mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                        require ext_code.size(address(rewardTokenAddress))
                        call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if arg1:
                            mem[(2 * ceil32(return_data.size)) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = uint256(poolInfo.field_1024)
                            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                            require ext_code.size(address(poolInfo.field_1536))
                            staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _172 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                            _188 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            require return_data.size >= _172 + (32 * _188) + 32
                            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _188] = mem[(2 * ceil32(return_data.size)) + _172 + 128 len 32 * _188]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_1792))
                            staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1132 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1157 = mem[_1132]
                            require mem[_1132] <= test266151307()
                            require _1132 + mem[_1132] + 31 < _1132 + return_data.size
                            _1182 = mem[_1132 + mem[_1132]]
                            if mem[_1132 + mem[_1132]] > test266151307():
                                revert with 0, 65
                            if _1132 + ceil32(return_data.size) + (32 * mem[_1132 + mem[_1132]]) + 32 > test266151307() or (32 * mem[_1132 + mem[_1132]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _1132 + ceil32(return_data.size) + (32 * mem[_1132 + mem[_1132]]) + 32
                            mem[_1132 + ceil32(return_data.size)] = _1182
                            require return_data.size >= _1157 + (32 * _1182) + 32
                            mem[_1132 + ceil32(return_data.size) + 32 len 32 * _1182] = mem[_1132 + _1157 + 32 len 32 * _1182]
                            if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _1182 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            idx = 0
                            while idx < arg1:
                                if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _2430 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2430
                                require ext_code.size(address(poolInfo.field_1536))
                                call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2430
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_1132 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _2530 = mem[(32 * idx) + _1132 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2530
                                require ext_code.size(address(poolInfo.field_1792))
                                call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2530
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_0++
                                mem[0] = sha3(msg.sender, 8)
                                userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                if idx >= mem[_1132 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_256++
                                mem[0] = sha3(msg.sender, 8) + 1
                                stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1132 + ceil32(return_data.size) + 32]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if userInfo[msg.sender].field_512 > !arg1:
                                revert with 0, 17
                            userInfo[msg.sender].field_512 += arg1
                            if uint256(poolInfo.field_256) > !arg1:
                                revert with 0, 17
                            uint256(poolInfo.field_256) += arg1
                    else:
                        if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 and sub_c2a0fb04 > -1 / (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768:
                            revert with 0, 17
                        if not stor13:
                            revert with 0, 18
                        if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 > !((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13):
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 100] = msg.sender
                        mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 + ((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13)
                        require ext_code.size(address(rewardTokenAddress))
                        call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 + ((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13)
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if arg1:
                            mem[(2 * ceil32(return_data.size)) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 100] = uint256(poolInfo.field_1024)
                            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                            require ext_code.size(address(poolInfo.field_1536))
                            staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _356 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                            _384 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            require return_data.size >= _356 + (32 * _384) + 32
                            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _384] = mem[(2 * ceil32(return_data.size)) + _356 + 128 len 32 * _384]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_1792))
                            staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1133 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1158 = mem[_1133]
                            require mem[_1133] <= test266151307()
                            require _1133 + mem[_1133] + 31 < _1133 + return_data.size
                            _1183 = mem[_1133 + mem[_1133]]
                            if mem[_1133 + mem[_1133]] > test266151307():
                                revert with 0, 65
                            if _1133 + ceil32(return_data.size) + (32 * mem[_1133 + mem[_1133]]) + 32 > test266151307() or (32 * mem[_1133 + mem[_1133]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _1133 + ceil32(return_data.size) + (32 * mem[_1133 + mem[_1133]]) + 32
                            mem[_1133 + ceil32(return_data.size)] = _1183
                            require return_data.size >= _1158 + (32 * _1183) + 32
                            mem[_1133 + ceil32(return_data.size) + 32 len 32 * _1183] = mem[_1133 + _1158 + 32 len 32 * _1183]
                            if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _1183 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            idx = 0
                            while idx < arg1:
                                if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _2432 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2432
                                require ext_code.size(address(poolInfo.field_1536))
                                call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2432
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_1133 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _2532 = mem[(32 * idx) + _1133 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2532
                                require ext_code.size(address(poolInfo.field_1792))
                                call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2532
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_0++
                                mem[0] = sha3(msg.sender, 8)
                                userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                if idx >= mem[_1133 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_256++
                                mem[0] = sha3(msg.sender, 8) + 1
                                stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1133 + ceil32(return_data.size) + 32]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if userInfo[msg.sender].field_512 > !arg1:
                                revert with 0, 17
                            userInfo[msg.sender].field_512 += arg1
                            if uint256(poolInfo.field_256) > !arg1:
                                revert with 0, 17
                            uint256(poolInfo.field_256) += arg1
    else:
        if not uint256(poolInfo.field_256):
            uint256(poolInfo.field_0) = block.timestamp
            if not userInfo[msg.sender].field_512:
                if arg1:
                    mem[96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(poolInfo.field_1024)
                    mem[132] = msg.sender
                    require ext_code.size(address(poolInfo.field_1536))
                    staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args uint256(poolInfo.field_1024), msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _11 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                    require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                    require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                    _13 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                    if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                    mem[ceil32(return_data.size) + 96] = _13
                    require return_data.size >= _11 + (32 * _13) + 32
                    mem[ceil32(return_data.size) + 128 len 32 * _13] = mem[_11 + 128 len 32 * _13]
                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(address(poolInfo.field_1792))
                    staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args uint256(poolInfo.field_1024), msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1124 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1149 = mem[_1124]
                    require mem[_1124] <= test266151307()
                    require _1124 + mem[_1124] + 31 < _1124 + return_data.size
                    _1174 = mem[_1124 + mem[_1124]]
                    if mem[_1124 + mem[_1124]] > test266151307():
                        revert with 0, 65
                    if _1124 + ceil32(return_data.size) + (32 * mem[_1124 + mem[_1124]]) + 32 > test266151307() or (32 * mem[_1124 + mem[_1124]]) + 32 < 0:
                        revert with 0, 65
                    mem[64] = _1124 + ceil32(return_data.size) + (32 * mem[_1124 + mem[_1124]]) + 32
                    mem[_1124 + ceil32(return_data.size)] = _1174
                    require return_data.size >= _1149 + (32 * _1174) + 32
                    mem[_1124 + ceil32(return_data.size) + 32 len 32 * _1174] = mem[_1124 + _1149 + 32 len 32 * _1174]
                    if _13 < arg1:
                        revert with 0, 'deposit: Not enough NFTs'
                    if _1174 < arg1:
                        revert with 0, 'deposit: Not enough NFTs'
                    idx = 0
                    while idx < arg1:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _2414 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _2414
                        require ext_code.size(address(poolInfo.field_1536))
                        call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _2414
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_1124 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _2514 = mem[(32 * idx) + _1124 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _2514
                        require ext_code.size(address(poolInfo.field_1792))
                        call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _2514
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        userInfo[msg.sender].field_0++
                        mem[0] = sha3(msg.sender, 8)
                        userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        if idx >= mem[_1124 + ceil32(return_data.size)]:
                            revert with 0, 50
                        userInfo[msg.sender].field_256++
                        mem[0] = sha3(msg.sender, 8) + 1
                        stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1124 + ceil32(return_data.size) + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if userInfo[msg.sender].field_512 > !arg1:
                        revert with 0, 17
                    userInfo[msg.sender].field_512 += arg1
                    if uint256(poolInfo.field_256) > !arg1:
                        revert with 0, 17
                    uint256(poolInfo.field_256) += arg1
            else:
                if userInfo[msg.sender].field_512 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_512:
                    revert with 0, 17
                if userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_768:
                    revert with 0, 17
                if not (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768:
                    if arg1:
                        mem[96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                        mem[100] = uint256(poolInfo.field_1024)
                        mem[132] = msg.sender
                        require ext_code.size(address(poolInfo.field_1536))
                        staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                gas gas_remaining wei
                               args uint256(poolInfo.field_1024), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _57 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                        require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                        require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                        _62 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                        if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                        mem[ceil32(return_data.size) + 96] = _62
                        require return_data.size >= _57 + (32 * _62) + 32
                        mem[ceil32(return_data.size) + 128 len 32 * _62] = mem[_57 + 128 len 32 * _62]
                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(address(poolInfo.field_1792))
                        staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                gas gas_remaining wei
                               args uint256(poolInfo.field_1024), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1125 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1150 = mem[_1125]
                        require mem[_1125] <= test266151307()
                        require _1125 + mem[_1125] + 31 < _1125 + return_data.size
                        _1175 = mem[_1125 + mem[_1125]]
                        if mem[_1125 + mem[_1125]] > test266151307():
                            revert with 0, 65
                        if _1125 + ceil32(return_data.size) + (32 * mem[_1125 + mem[_1125]]) + 32 > test266151307() or (32 * mem[_1125 + mem[_1125]]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = _1125 + ceil32(return_data.size) + (32 * mem[_1125 + mem[_1125]]) + 32
                        mem[_1125 + ceil32(return_data.size)] = _1175
                        require return_data.size >= _1150 + (32 * _1175) + 32
                        mem[_1125 + ceil32(return_data.size) + 32 len 32 * _1175] = mem[_1125 + _1150 + 32 len 32 * _1175]
                        if _62 < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        if _1175 < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        idx = 0
                        while idx < arg1:
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _2416 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _2416
                            require ext_code.size(address(poolInfo.field_1536))
                            call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _2416
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_1125 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _2516 = mem[(32 * idx) + _1125 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _2516
                            require ext_code.size(address(poolInfo.field_1792))
                            call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _2516
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            userInfo[msg.sender].field_0++
                            mem[0] = sha3(msg.sender, 8)
                            userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            if idx >= mem[_1125 + ceil32(return_data.size)]:
                                revert with 0, 50
                            userInfo[msg.sender].field_256++
                            mem[0] = sha3(msg.sender, 8) + 1
                            stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1125 + ceil32(return_data.size) + 32]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if userInfo[msg.sender].field_512 > !arg1:
                            revert with 0, 17
                        userInfo[msg.sender].field_512 += arg1
                        if uint256(poolInfo.field_256) > !arg1:
                            revert with 0, 17
                        uint256(poolInfo.field_256) += arg1
                else:
                    mem[100] = msg.sender
                    if not sub_c2a0fb04:
                        mem[132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                        require ext_code.size(address(rewardTokenAddress))
                        call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if arg1:
                            mem[ceil32(return_data.size) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 100] = uint256(poolInfo.field_1024)
                            mem[ceil32(return_data.size) + 132] = msg.sender
                            require ext_code.size(address(poolInfo.field_1536))
                            staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _115 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < ceil32(return_data.size) + return_data.size + 96
                            _127 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            require return_data.size >= _115 + (32 * _127) + 32
                            mem[(2 * ceil32(return_data.size)) + 128 len 32 * _127] = mem[ceil32(return_data.size) + _115 + 128 len 32 * _127]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_1792))
                            staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1126 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1151 = mem[_1126]
                            require mem[_1126] <= test266151307()
                            require _1126 + mem[_1126] + 31 < _1126 + return_data.size
                            _1176 = mem[_1126 + mem[_1126]]
                            if mem[_1126 + mem[_1126]] > test266151307():
                                revert with 0, 65
                            if _1126 + ceil32(return_data.size) + (32 * mem[_1126 + mem[_1126]]) + 32 > test266151307() or (32 * mem[_1126 + mem[_1126]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _1126 + ceil32(return_data.size) + (32 * mem[_1126 + mem[_1126]]) + 32
                            mem[_1126 + ceil32(return_data.size)] = _1176
                            require return_data.size >= _1151 + (32 * _1176) + 32
                            mem[_1126 + ceil32(return_data.size) + 32 len 32 * _1176] = mem[_1126 + _1151 + 32 len 32 * _1176]
                            if mem[(2 * ceil32(return_data.size)) + 96] < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _1176 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            idx = 0
                            while idx < arg1:
                                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _2418 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2418
                                require ext_code.size(address(poolInfo.field_1536))
                                call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2418
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_1126 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _2518 = mem[(32 * idx) + _1126 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2518
                                require ext_code.size(address(poolInfo.field_1792))
                                call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2518
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_0++
                                mem[0] = sha3(msg.sender, 8)
                                userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                if idx >= mem[_1126 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_256++
                                mem[0] = sha3(msg.sender, 8) + 1
                                stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1126 + ceil32(return_data.size) + 32]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if userInfo[msg.sender].field_512 > !arg1:
                                revert with 0, 17
                            userInfo[msg.sender].field_512 += arg1
                            if uint256(poolInfo.field_256) > !arg1:
                                revert with 0, 17
                            uint256(poolInfo.field_256) += arg1
                    else:
                        require ext_code.size(sub_3c86abfcAddress)
                        staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            mem[ceil32(return_data.size) + 100] = msg.sender
                            mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                            require ext_code.size(address(rewardTokenAddress))
                            call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if arg1:
                                mem[(2 * ceil32(return_data.size)) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 100] = uint256(poolInfo.field_1024)
                                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                require ext_code.size(address(poolInfo.field_1536))
                                staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _178 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                _193 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                require return_data.size >= _178 + (32 * _193) + 32
                                mem[(4 * ceil32(return_data.size)) + 128 len 32 * _193] = mem[(2 * ceil32(return_data.size)) + _178 + 128 len 32 * _193]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_1792))
                                staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1127 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1152 = mem[_1127]
                                require mem[_1127] <= test266151307()
                                require _1127 + mem[_1127] + 31 < _1127 + return_data.size
                                _1177 = mem[_1127 + mem[_1127]]
                                if mem[_1127 + mem[_1127]] > test266151307():
                                    revert with 0, 65
                                if _1127 + ceil32(return_data.size) + (32 * mem[_1127 + mem[_1127]]) + 32 > test266151307() or (32 * mem[_1127 + mem[_1127]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _1127 + ceil32(return_data.size) + (32 * mem[_1127 + mem[_1127]]) + 32
                                mem[_1127 + ceil32(return_data.size)] = _1177
                                require return_data.size >= _1152 + (32 * _1177) + 32
                                mem[_1127 + ceil32(return_data.size) + 32 len 32 * _1177] = mem[_1127 + _1152 + 32 len 32 * _1177]
                                if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _1177 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                idx = 0
                                while idx < arg1:
                                    if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    _2420 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _2420
                                    require ext_code.size(address(poolInfo.field_1536))
                                    call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _2420
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_1127 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _2520 = mem[(32 * idx) + _1127 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _2520
                                    require ext_code.size(address(poolInfo.field_1792))
                                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _2520
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_0++
                                    mem[0] = sha3(msg.sender, 8)
                                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                    if idx >= mem[_1127 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_256++
                                    mem[0] = sha3(msg.sender, 8) + 1
                                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1127 + ceil32(return_data.size) + 32]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if userInfo[msg.sender].field_512 > !arg1:
                                    revert with 0, 17
                                userInfo[msg.sender].field_512 += arg1
                                if uint256(poolInfo.field_256) > !arg1:
                                    revert with 0, 17
                                uint256(poolInfo.field_256) += arg1
                        else:
                            if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 and sub_c2a0fb04 > -1 / (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768:
                                revert with 0, 17
                            if not stor13:
                                revert with 0, 18
                            if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 > !((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13):
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 100] = msg.sender
                            mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 + ((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13)
                            require ext_code.size(address(rewardTokenAddress))
                            call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 + ((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13)
                            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if arg1:
                                mem[(2 * ceil32(return_data.size)) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 100] = uint256(poolInfo.field_1024)
                                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                require ext_code.size(address(poolInfo.field_1536))
                                staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _368 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                _395 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                require return_data.size >= _368 + (32 * _395) + 32
                                mem[(4 * ceil32(return_data.size)) + 128 len 32 * _395] = mem[(2 * ceil32(return_data.size)) + _368 + 128 len 32 * _395]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_1792))
                                staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1128 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1153 = mem[_1128]
                                require mem[_1128] <= test266151307()
                                require _1128 + mem[_1128] + 31 < _1128 + return_data.size
                                _1178 = mem[_1128 + mem[_1128]]
                                if mem[_1128 + mem[_1128]] > test266151307():
                                    revert with 0, 65
                                if _1128 + ceil32(return_data.size) + (32 * mem[_1128 + mem[_1128]]) + 32 > test266151307() or (32 * mem[_1128 + mem[_1128]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _1128 + ceil32(return_data.size) + (32 * mem[_1128 + mem[_1128]]) + 32
                                mem[_1128 + ceil32(return_data.size)] = _1178
                                require return_data.size >= _1153 + (32 * _1178) + 32
                                mem[_1128 + ceil32(return_data.size) + 32 len 32 * _1178] = mem[_1128 + _1153 + 32 len 32 * _1178]
                                if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _1178 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                idx = 0
                                while idx < arg1:
                                    if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    _2422 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _2422
                                    require ext_code.size(address(poolInfo.field_1536))
                                    call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _2422
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_1128 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _2522 = mem[(32 * idx) + _1128 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _2522
                                    require ext_code.size(address(poolInfo.field_1792))
                                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _2522
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_0++
                                    mem[0] = sha3(msg.sender, 8)
                                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                    if idx >= mem[_1128 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_256++
                                    mem[0] = sha3(msg.sender, 8) + 1
                                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1128 + ceil32(return_data.size) + 32]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if userInfo[msg.sender].field_512 > !arg1:
                                    revert with 0, 17
                                userInfo[msg.sender].field_512 += arg1
                                if uint256(poolInfo.field_256) > !arg1:
                                    revert with 0, 17
                                uint256(poolInfo.field_256) += arg1
        else:
            if block.timestamp <= endTime:
                if block.timestamp < uint256(poolInfo.field_0):
                    revert with 0, 17
                if block.timestamp - uint256(poolInfo.field_0) and rewardPerSecond > -1 / block.timestamp - uint256(poolInfo.field_0):
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond) and 10^12 > -1 / (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond):
                    revert with 0, 17
                if not uint256(poolInfo.field_256):
                    revert with 0, 18
                if uint256(poolInfo.field_768) > !((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)):
                    revert with 0, 17
                uint256(poolInfo.field_768) += (10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)
                uint256(poolInfo.field_0) = block.timestamp
                if not userInfo[msg.sender].field_512:
                    if arg1:
                        mem[96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                        mem[100] = uint256(poolInfo.field_1024)
                        mem[132] = msg.sender
                        require ext_code.size(address(poolInfo.field_1536))
                        staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                gas gas_remaining wei
                               args uint256(poolInfo.field_1024), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _119 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                        require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                        require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                        _132 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                        if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                        mem[ceil32(return_data.size) + 96] = _132
                        require return_data.size >= _119 + (32 * _132) + 32
                        mem[ceil32(return_data.size) + 128 len 32 * _132] = mem[_119 + 128 len 32 * _132]
                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(address(poolInfo.field_1792))
                        staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                gas gas_remaining wei
                               args uint256(poolInfo.field_1024), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1119 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1144 = mem[_1119]
                        require mem[_1119] <= test266151307()
                        require _1119 + mem[_1119] + 31 < _1119 + return_data.size
                        _1169 = mem[_1119 + mem[_1119]]
                        if mem[_1119 + mem[_1119]] > test266151307():
                            revert with 0, 65
                        if _1119 + ceil32(return_data.size) + (32 * mem[_1119 + mem[_1119]]) + 32 > test266151307() or (32 * mem[_1119 + mem[_1119]]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = _1119 + ceil32(return_data.size) + (32 * mem[_1119 + mem[_1119]]) + 32
                        mem[_1119 + ceil32(return_data.size)] = _1169
                        require return_data.size >= _1144 + (32 * _1169) + 32
                        mem[_1119 + ceil32(return_data.size) + 32 len 32 * _1169] = mem[_1119 + _1144 + 32 len 32 * _1169]
                        if _132 < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        if _1169 < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        idx = 0
                        while idx < arg1:
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _2404 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _2404
                            require ext_code.size(address(poolInfo.field_1536))
                            call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _2404
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_1119 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _2504 = mem[(32 * idx) + _1119 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _2504
                            require ext_code.size(address(poolInfo.field_1792))
                            call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _2504
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            userInfo[msg.sender].field_0++
                            mem[0] = sha3(msg.sender, 8)
                            userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            if idx >= mem[_1119 + ceil32(return_data.size)]:
                                revert with 0, 50
                            userInfo[msg.sender].field_256++
                            mem[0] = sha3(msg.sender, 8) + 1
                            stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1119 + ceil32(return_data.size) + 32]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if userInfo[msg.sender].field_512 > !arg1:
                            revert with 0, 17
                        userInfo[msg.sender].field_512 += arg1
                        if uint256(poolInfo.field_256) > !arg1:
                            revert with 0, 17
                        uint256(poolInfo.field_256) += arg1
                else:
                    if userInfo[msg.sender].field_512 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_768:
                        revert with 0, 17
                    if not (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768:
                        if arg1:
                            mem[96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[100] = uint256(poolInfo.field_1024)
                            mem[132] = msg.sender
                            require ext_code.size(address(poolInfo.field_1536))
                            staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _295 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                            require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                            require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                            _314 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                revert with 0, 65
                            if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                            mem[ceil32(return_data.size) + 96] = _314
                            require return_data.size >= _295 + (32 * _314) + 32
                            mem[ceil32(return_data.size) + 128 len 32 * _314] = mem[_295 + 128 len 32 * _314]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_1792))
                            staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1120 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1145 = mem[_1120]
                            require mem[_1120] <= test266151307()
                            require _1120 + mem[_1120] + 31 < _1120 + return_data.size
                            _1170 = mem[_1120 + mem[_1120]]
                            if mem[_1120 + mem[_1120]] > test266151307():
                                revert with 0, 65
                            if _1120 + ceil32(return_data.size) + (32 * mem[_1120 + mem[_1120]]) + 32 > test266151307() or (32 * mem[_1120 + mem[_1120]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _1120 + ceil32(return_data.size) + (32 * mem[_1120 + mem[_1120]]) + 32
                            mem[_1120 + ceil32(return_data.size)] = _1170
                            require return_data.size >= _1145 + (32 * _1170) + 32
                            mem[_1120 + ceil32(return_data.size) + 32 len 32 * _1170] = mem[_1120 + _1145 + 32 len 32 * _1170]
                            if _314 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _1170 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            idx = 0
                            while idx < arg1:
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _2406 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2406
                                require ext_code.size(address(poolInfo.field_1536))
                                call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2406
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_1120 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _2506 = mem[(32 * idx) + _1120 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2506
                                require ext_code.size(address(poolInfo.field_1792))
                                call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2506
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_0++
                                mem[0] = sha3(msg.sender, 8)
                                userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                if idx >= mem[_1120 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_256++
                                mem[0] = sha3(msg.sender, 8) + 1
                                stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1120 + ceil32(return_data.size) + 32]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if userInfo[msg.sender].field_512 > !arg1:
                                revert with 0, 17
                            userInfo[msg.sender].field_512 += arg1
                            if uint256(poolInfo.field_256) > !arg1:
                                revert with 0, 17
                            uint256(poolInfo.field_256) += arg1
                    else:
                        mem[100] = msg.sender
                        if not sub_c2a0fb04:
                            mem[132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                            require ext_code.size(address(rewardTokenAddress))
                            call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if arg1:
                                mem[ceil32(return_data.size) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 100] = uint256(poolInfo.field_1024)
                                mem[ceil32(return_data.size) + 132] = msg.sender
                                require ext_code.size(address(poolInfo.field_1536))
                                staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 32
                                _423 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < ceil32(return_data.size) + return_data.size + 96
                                _454 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                require return_data.size >= _423 + (32 * _454) + 32
                                mem[(2 * ceil32(return_data.size)) + 128 len 32 * _454] = mem[ceil32(return_data.size) + _423 + 128 len 32 * _454]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_1792))
                                staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1121 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1146 = mem[_1121]
                                require mem[_1121] <= test266151307()
                                require _1121 + mem[_1121] + 31 < _1121 + return_data.size
                                _1171 = mem[_1121 + mem[_1121]]
                                if mem[_1121 + mem[_1121]] > test266151307():
                                    revert with 0, 65
                                if _1121 + ceil32(return_data.size) + (32 * mem[_1121 + mem[_1121]]) + 32 > test266151307() or (32 * mem[_1121 + mem[_1121]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _1121 + ceil32(return_data.size) + (32 * mem[_1121 + mem[_1121]]) + 32
                                mem[_1121 + ceil32(return_data.size)] = _1171
                                require return_data.size >= _1146 + (32 * _1171) + 32
                                mem[_1121 + ceil32(return_data.size) + 32 len 32 * _1171] = mem[_1121 + _1146 + 32 len 32 * _1171]
                                if mem[(2 * ceil32(return_data.size)) + 96] < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _1171 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                idx = 0
                                while idx < arg1:
                                    if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    _2408 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _2408
                                    require ext_code.size(address(poolInfo.field_1536))
                                    call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _2408
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_1121 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _2508 = mem[(32 * idx) + _1121 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _2508
                                    require ext_code.size(address(poolInfo.field_1792))
                                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _2508
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_0++
                                    mem[0] = sha3(msg.sender, 8)
                                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                    if idx >= mem[_1121 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_256++
                                    mem[0] = sha3(msg.sender, 8) + 1
                                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1121 + ceil32(return_data.size) + 32]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if userInfo[msg.sender].field_512 > !arg1:
                                    revert with 0, 17
                                userInfo[msg.sender].field_512 += arg1
                                if uint256(poolInfo.field_256) > !arg1:
                                    revert with 0, 17
                                uint256(poolInfo.field_256) += arg1
                        else:
                            require ext_code.size(sub_3c86abfcAddress)
                            staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                mem[ceil32(return_data.size) + 100] = msg.sender
                                mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                                require ext_code.size(address(rewardTokenAddress))
                                call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if arg1:
                                    mem[(2 * ceil32(return_data.size)) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 100] = uint256(poolInfo.field_1024)
                                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                    require ext_code.size(address(poolInfo.field_1536))
                                    staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _545 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                    _569 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    require return_data.size >= _545 + (32 * _569) + 32
                                    mem[(4 * ceil32(return_data.size)) + 128 len 32 * _569] = mem[(2 * ceil32(return_data.size)) + _545 + 128 len 32 * _569]
                                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(poolInfo.field_1792))
                                    staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1122 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1147 = mem[_1122]
                                    require mem[_1122] <= test266151307()
                                    require _1122 + mem[_1122] + 31 < _1122 + return_data.size
                                    _1172 = mem[_1122 + mem[_1122]]
                                    if mem[_1122 + mem[_1122]] > test266151307():
                                        revert with 0, 65
                                    if _1122 + ceil32(return_data.size) + (32 * mem[_1122 + mem[_1122]]) + 32 > test266151307() or (32 * mem[_1122 + mem[_1122]]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = _1122 + ceil32(return_data.size) + (32 * mem[_1122 + mem[_1122]]) + 32
                                    mem[_1122 + ceil32(return_data.size)] = _1172
                                    require return_data.size >= _1147 + (32 * _1172) + 32
                                    mem[_1122 + ceil32(return_data.size) + 32 len 32 * _1172] = mem[_1122 + _1147 + 32 len 32 * _1172]
                                    if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    if _1172 < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    idx = 0
                                    while idx < arg1:
                                        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        _2410 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _2410
                                        require ext_code.size(address(poolInfo.field_1536))
                                        call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _2410
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_1122 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _2510 = mem[(32 * idx) + _1122 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _2510
                                        require ext_code.size(address(poolInfo.field_1792))
                                        call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _2510
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_0++
                                        mem[0] = sha3(msg.sender, 8)
                                        userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                        if idx >= mem[_1122 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_256++
                                        mem[0] = sha3(msg.sender, 8) + 1
                                        stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1122 + ceil32(return_data.size) + 32]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if userInfo[msg.sender].field_512 > !arg1:
                                        revert with 0, 17
                                    userInfo[msg.sender].field_512 += arg1
                                    if uint256(poolInfo.field_256) > !arg1:
                                        revert with 0, 17
                                    uint256(poolInfo.field_256) += arg1
                            else:
                                if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 and sub_c2a0fb04 > -1 / (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768:
                                    revert with 0, 17
                                if not stor13:
                                    revert with 0, 18
                                if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 > !((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13):
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 100] = msg.sender
                                mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 + ((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13)
                                require ext_code.size(address(rewardTokenAddress))
                                call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 + ((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13)
                                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if arg1:
                                    mem[(2 * ceil32(return_data.size)) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 100] = uint256(poolInfo.field_1024)
                                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                    require ext_code.size(address(poolInfo.field_1536))
                                    staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _756 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                    _778 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    require return_data.size >= _756 + (32 * _778) + 32
                                    mem[(4 * ceil32(return_data.size)) + 128 len 32 * _778] = mem[(2 * ceil32(return_data.size)) + _756 + 128 len 32 * _778]
                                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(poolInfo.field_1792))
                                    staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1123 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1148 = mem[_1123]
                                    require mem[_1123] <= test266151307()
                                    require _1123 + mem[_1123] + 31 < _1123 + return_data.size
                                    _1173 = mem[_1123 + mem[_1123]]
                                    if mem[_1123 + mem[_1123]] > test266151307():
                                        revert with 0, 65
                                    if _1123 + ceil32(return_data.size) + (32 * mem[_1123 + mem[_1123]]) + 32 > test266151307() or (32 * mem[_1123 + mem[_1123]]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = _1123 + ceil32(return_data.size) + (32 * mem[_1123 + mem[_1123]]) + 32
                                    mem[_1123 + ceil32(return_data.size)] = _1173
                                    require return_data.size >= _1148 + (32 * _1173) + 32
                                    mem[_1123 + ceil32(return_data.size) + 32 len 32 * _1173] = mem[_1123 + _1148 + 32 len 32 * _1173]
                                    if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    if _1173 < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    idx = 0
                                    while idx < arg1:
                                        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        _2412 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _2412
                                        require ext_code.size(address(poolInfo.field_1536))
                                        call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _2412
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_1123 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _2512 = mem[(32 * idx) + _1123 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _2512
                                        require ext_code.size(address(poolInfo.field_1792))
                                        call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _2512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_0++
                                        mem[0] = sha3(msg.sender, 8)
                                        userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                        if idx >= mem[_1123 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_256++
                                        mem[0] = sha3(msg.sender, 8) + 1
                                        stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1123 + ceil32(return_data.size) + 32]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if userInfo[msg.sender].field_512 > !arg1:
                                        revert with 0, 17
                                    userInfo[msg.sender].field_512 += arg1
                                    if uint256(poolInfo.field_256) > !arg1:
                                        revert with 0, 17
                                    uint256(poolInfo.field_256) += arg1
            else:
                if uint256(poolInfo.field_0) >= endTime:
                    if False and rewardPerSecond > 0:
                        revert with 0, 17
                    if not uint256(poolInfo.field_256):
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(0 / uint256(poolInfo.field_256)):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 0 / uint256(poolInfo.field_256)
                    uint256(poolInfo.field_0) = block.timestamp
                    if not userInfo[msg.sender].field_512:
                        if arg1:
                            mem[96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[100] = uint256(poolInfo.field_1024)
                            mem[132] = msg.sender
                            require ext_code.size(address(poolInfo.field_1536))
                            staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _90 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                            require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                            require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                            _103 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                revert with 0, 65
                            if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                            mem[ceil32(return_data.size) + 96] = _103
                            require return_data.size >= _90 + (32 * _103) + 32
                            mem[ceil32(return_data.size) + 128 len 32 * _103] = mem[_90 + 128 len 32 * _103]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_1792))
                            staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1114 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1139 = mem[_1114]
                            require mem[_1114] <= test266151307()
                            require _1114 + mem[_1114] + 31 < _1114 + return_data.size
                            _1164 = mem[_1114 + mem[_1114]]
                            if mem[_1114 + mem[_1114]] > test266151307():
                                revert with 0, 65
                            if _1114 + ceil32(return_data.size) + (32 * mem[_1114 + mem[_1114]]) + 32 > test266151307() or (32 * mem[_1114 + mem[_1114]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _1114 + ceil32(return_data.size) + (32 * mem[_1114 + mem[_1114]]) + 32
                            mem[_1114 + ceil32(return_data.size)] = _1164
                            require return_data.size >= _1139 + (32 * _1164) + 32
                            mem[_1114 + ceil32(return_data.size) + 32 len 32 * _1164] = mem[_1114 + _1139 + 32 len 32 * _1164]
                            if _103 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _1164 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            idx = 0
                            while idx < arg1:
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _2394 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2394
                                require ext_code.size(address(poolInfo.field_1536))
                                call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2394
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_1114 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _2494 = mem[(32 * idx) + _1114 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2494
                                require ext_code.size(address(poolInfo.field_1792))
                                call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2494
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_0++
                                mem[0] = sha3(msg.sender, 8)
                                userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                if idx >= mem[_1114 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_256++
                                mem[0] = sha3(msg.sender, 8) + 1
                                stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1114 + ceil32(return_data.size) + 32]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if userInfo[msg.sender].field_512 > !arg1:
                                revert with 0, 17
                            userInfo[msg.sender].field_512 += arg1
                            if uint256(poolInfo.field_256) > !arg1:
                                revert with 0, 17
                            uint256(poolInfo.field_256) += arg1
                    else:
                        if userInfo[msg.sender].field_512 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_512:
                            revert with 0, 17
                        if userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_768:
                            revert with 0, 17
                        if not (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768:
                            if arg1:
                                mem[96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[100] = uint256(poolInfo.field_1024)
                                mem[132] = msg.sender
                                require ext_code.size(address(poolInfo.field_1536))
                                staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _245 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                                require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                                _265 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                    revert with 0, 65
                                if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                mem[ceil32(return_data.size) + 96] = _265
                                require return_data.size >= _245 + (32 * _265) + 32
                                mem[ceil32(return_data.size) + 128 len 32 * _265] = mem[_245 + 128 len 32 * _265]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_1792))
                                staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1115 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1140 = mem[_1115]
                                require mem[_1115] <= test266151307()
                                require _1115 + mem[_1115] + 31 < _1115 + return_data.size
                                _1165 = mem[_1115 + mem[_1115]]
                                if mem[_1115 + mem[_1115]] > test266151307():
                                    revert with 0, 65
                                if _1115 + ceil32(return_data.size) + (32 * mem[_1115 + mem[_1115]]) + 32 > test266151307() or (32 * mem[_1115 + mem[_1115]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _1115 + ceil32(return_data.size) + (32 * mem[_1115 + mem[_1115]]) + 32
                                mem[_1115 + ceil32(return_data.size)] = _1165
                                require return_data.size >= _1140 + (32 * _1165) + 32
                                mem[_1115 + ceil32(return_data.size) + 32 len 32 * _1165] = mem[_1115 + _1140 + 32 len 32 * _1165]
                                if _265 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _1165 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                idx = 0
                                while idx < arg1:
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _2396 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _2396
                                    require ext_code.size(address(poolInfo.field_1536))
                                    call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _2396
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_1115 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _2496 = mem[(32 * idx) + _1115 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _2496
                                    require ext_code.size(address(poolInfo.field_1792))
                                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _2496
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_0++
                                    mem[0] = sha3(msg.sender, 8)
                                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    if idx >= mem[_1115 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_256++
                                    mem[0] = sha3(msg.sender, 8) + 1
                                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1115 + ceil32(return_data.size) + 32]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if userInfo[msg.sender].field_512 > !arg1:
                                    revert with 0, 17
                                userInfo[msg.sender].field_512 += arg1
                                if uint256(poolInfo.field_256) > !arg1:
                                    revert with 0, 17
                                uint256(poolInfo.field_256) += arg1
                        else:
                            mem[100] = msg.sender
                            if not sub_c2a0fb04:
                                mem[132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                                require ext_code.size(address(rewardTokenAddress))
                                call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if arg1:
                                    mem[ceil32(return_data.size) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 100] = uint256(poolInfo.field_1024)
                                    mem[ceil32(return_data.size) + 132] = msg.sender
                                    require ext_code.size(address(poolInfo.field_1536))
                                    staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _362 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < ceil32(return_data.size) + return_data.size + 96
                                    _389 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    require return_data.size >= _362 + (32 * _389) + 32
                                    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _389] = mem[ceil32(return_data.size) + _362 + 128 len 32 * _389]
                                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(poolInfo.field_1792))
                                    staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1116 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1141 = mem[_1116]
                                    require mem[_1116] <= test266151307()
                                    require _1116 + mem[_1116] + 31 < _1116 + return_data.size
                                    _1166 = mem[_1116 + mem[_1116]]
                                    if mem[_1116 + mem[_1116]] > test266151307():
                                        revert with 0, 65
                                    if _1116 + ceil32(return_data.size) + (32 * mem[_1116 + mem[_1116]]) + 32 > test266151307() or (32 * mem[_1116 + mem[_1116]]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = _1116 + ceil32(return_data.size) + (32 * mem[_1116 + mem[_1116]]) + 32
                                    mem[_1116 + ceil32(return_data.size)] = _1166
                                    require return_data.size >= _1141 + (32 * _1166) + 32
                                    mem[_1116 + ceil32(return_data.size) + 32 len 32 * _1166] = mem[_1116 + _1141 + 32 len 32 * _1166]
                                    if mem[(2 * ceil32(return_data.size)) + 96] < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    if _1166 < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    idx = 0
                                    while idx < arg1:
                                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        _2398 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _2398
                                        require ext_code.size(address(poolInfo.field_1536))
                                        call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _2398
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_1116 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _2498 = mem[(32 * idx) + _1116 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _2498
                                        require ext_code.size(address(poolInfo.field_1792))
                                        call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _2498
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_0++
                                        mem[0] = sha3(msg.sender, 8)
                                        userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                        if idx >= mem[_1116 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_256++
                                        mem[0] = sha3(msg.sender, 8) + 1
                                        stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1116 + ceil32(return_data.size) + 32]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if userInfo[msg.sender].field_512 > !arg1:
                                        revert with 0, 17
                                    userInfo[msg.sender].field_512 += arg1
                                    if uint256(poolInfo.field_256) > !arg1:
                                        revert with 0, 17
                                    uint256(poolInfo.field_256) += arg1
                            else:
                                require ext_code.size(sub_3c86abfcAddress)
                                staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= 0:
                                    mem[ceil32(return_data.size) + 100] = msg.sender
                                    mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                                    require ext_code.size(address(rewardTokenAddress))
                                    call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if arg1:
                                        mem[(2 * ceil32(return_data.size)) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 100] = uint256(poolInfo.field_1024)
                                        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                        require ext_code.size(address(poolInfo.field_1536))
                                        staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _478 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                        _502 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                            revert with 0, 65
                                        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        require return_data.size >= _478 + (32 * _502) + 32
                                        mem[(4 * ceil32(return_data.size)) + 128 len 32 * _502] = mem[(2 * ceil32(return_data.size)) + _478 + 128 len 32 * _502]
                                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(poolInfo.field_1792))
                                        staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1117 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1142 = mem[_1117]
                                        require mem[_1117] <= test266151307()
                                        require _1117 + mem[_1117] + 31 < _1117 + return_data.size
                                        _1167 = mem[_1117 + mem[_1117]]
                                        if mem[_1117 + mem[_1117]] > test266151307():
                                            revert with 0, 65
                                        if _1117 + ceil32(return_data.size) + (32 * mem[_1117 + mem[_1117]]) + 32 > test266151307() or (32 * mem[_1117 + mem[_1117]]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = _1117 + ceil32(return_data.size) + (32 * mem[_1117 + mem[_1117]]) + 32
                                        mem[_1117 + ceil32(return_data.size)] = _1167
                                        require return_data.size >= _1142 + (32 * _1167) + 32
                                        mem[_1117 + ceil32(return_data.size) + 32 len 32 * _1167] = mem[_1117 + _1142 + 32 len 32 * _1167]
                                        if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        if _1167 < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        idx = 0
                                        while idx < arg1:
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            _2400 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _2400
                                            require ext_code.size(address(poolInfo.field_1536))
                                            call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _2400
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_1117 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _2500 = mem[(32 * idx) + _1117 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _2500
                                            require ext_code.size(address(poolInfo.field_1792))
                                            call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _2500
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_0++
                                            mem[0] = sha3(msg.sender, 8)
                                            userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            if idx >= mem[_1117 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_256++
                                            mem[0] = sha3(msg.sender, 8) + 1
                                            stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1117 + ceil32(return_data.size) + 32]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if userInfo[msg.sender].field_512 > !arg1:
                                            revert with 0, 17
                                        userInfo[msg.sender].field_512 += arg1
                                        if uint256(poolInfo.field_256) > !arg1:
                                            revert with 0, 17
                                        uint256(poolInfo.field_256) += arg1
                                else:
                                    if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 and sub_c2a0fb04 > -1 / (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768:
                                        revert with 0, 17
                                    if not stor13:
                                        revert with 0, 18
                                    if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 > !((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13):
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 100] = msg.sender
                                    mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 + ((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13)
                                    require ext_code.size(address(rewardTokenAddress))
                                    call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 + ((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13)
                                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if arg1:
                                        mem[(2 * ceil32(return_data.size)) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 100] = uint256(poolInfo.field_1024)
                                        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                        require ext_code.size(address(poolInfo.field_1536))
                                        staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _704 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                        _721 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                            revert with 0, 65
                                        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        require return_data.size >= _704 + (32 * _721) + 32
                                        mem[(4 * ceil32(return_data.size)) + 128 len 32 * _721] = mem[(2 * ceil32(return_data.size)) + _704 + 128 len 32 * _721]
                                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(poolInfo.field_1792))
                                        staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1118 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1143 = mem[_1118]
                                        require mem[_1118] <= test266151307()
                                        require _1118 + mem[_1118] + 31 < _1118 + return_data.size
                                        _1168 = mem[_1118 + mem[_1118]]
                                        if mem[_1118 + mem[_1118]] > test266151307():
                                            revert with 0, 65
                                        if _1118 + ceil32(return_data.size) + (32 * mem[_1118 + mem[_1118]]) + 32 > test266151307() or (32 * mem[_1118 + mem[_1118]]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = _1118 + ceil32(return_data.size) + (32 * mem[_1118 + mem[_1118]]) + 32
                                        mem[_1118 + ceil32(return_data.size)] = _1168
                                        require return_data.size >= _1143 + (32 * _1168) + 32
                                        mem[_1118 + ceil32(return_data.size) + 32 len 32 * _1168] = mem[_1118 + _1143 + 32 len 32 * _1168]
                                        if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        if _1168 < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        idx = 0
                                        while idx < arg1:
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            _2402 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _2402
                                            require ext_code.size(address(poolInfo.field_1536))
                                            call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _2402
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_1118 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _2502 = mem[(32 * idx) + _1118 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _2502
                                            require ext_code.size(address(poolInfo.field_1792))
                                            call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _2502
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_0++
                                            mem[0] = sha3(msg.sender, 8)
                                            userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            if idx >= mem[_1118 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_256++
                                            mem[0] = sha3(msg.sender, 8) + 1
                                            stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1118 + ceil32(return_data.size) + 32]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if userInfo[msg.sender].field_512 > !arg1:
                                            revert with 0, 17
                                        userInfo[msg.sender].field_512 += arg1
                                        if uint256(poolInfo.field_256) > !arg1:
                                            revert with 0, 17
                                        uint256(poolInfo.field_256) += arg1
                else:
                    if endTime < uint256(poolInfo.field_0):
                        revert with 0, 17
                    if endTime - uint256(poolInfo.field_0) and rewardPerSecond > -1 / endTime - uint256(poolInfo.field_0):
                        revert with 0, 17
                    if (endTime * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond) and 10^12 > -1 / (endTime * rewardPerSecond) - (uint256(poolInfo.field_0) * rewardPerSecond):
                        revert with 0, 17
                    if not uint256(poolInfo.field_256):
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += (10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)
                    uint256(poolInfo.field_0) = block.timestamp
                    if not userInfo[msg.sender].field_512:
                        if arg1:
                            mem[96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[100] = uint256(poolInfo.field_1024)
                            mem[132] = msg.sender
                            require ext_code.size(address(poolInfo.field_1536))
                            staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _125 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                            require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                            require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                            _138 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                revert with 0, 65
                            if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                            mem[ceil32(return_data.size) + 96] = _138
                            require return_data.size >= _125 + (32 * _138) + 32
                            mem[ceil32(return_data.size) + 128 len 32 * _138] = mem[_125 + 128 len 32 * _138]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_1792))
                            staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1109 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1134 = mem[_1109]
                            require mem[_1109] <= test266151307()
                            require _1109 + mem[_1109] + 31 < _1109 + return_data.size
                            _1159 = mem[_1109 + mem[_1109]]
                            if mem[_1109 + mem[_1109]] > test266151307():
                                revert with 0, 65
                            if _1109 + ceil32(return_data.size) + (32 * mem[_1109 + mem[_1109]]) + 32 > test266151307() or (32 * mem[_1109 + mem[_1109]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _1109 + ceil32(return_data.size) + (32 * mem[_1109 + mem[_1109]]) + 32
                            mem[_1109 + ceil32(return_data.size)] = _1159
                            require return_data.size >= _1134 + (32 * _1159) + 32
                            mem[_1109 + ceil32(return_data.size) + 32 len 32 * _1159] = mem[_1109 + _1134 + 32 len 32 * _1159]
                            if _138 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _1159 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            idx = 0
                            while idx < arg1:
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _2384 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2384
                                require ext_code.size(address(poolInfo.field_1536))
                                call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2384
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_1109 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _2484 = mem[(32 * idx) + _1109 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _2484
                                require ext_code.size(address(poolInfo.field_1792))
                                call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _2484
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_0++
                                mem[0] = sha3(msg.sender, 8)
                                userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                if idx >= mem[_1109 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_256++
                                mem[0] = sha3(msg.sender, 8) + 1
                                stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1109 + ceil32(return_data.size) + 32]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if userInfo[msg.sender].field_512 > !arg1:
                                revert with 0, 17
                            userInfo[msg.sender].field_512 += arg1
                            if uint256(poolInfo.field_256) > !arg1:
                                revert with 0, 17
                            uint256(poolInfo.field_256) += arg1
                    else:
                        if userInfo[msg.sender].field_512 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_512:
                            revert with 0, 17
                        if userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_768:
                            revert with 0, 17
                        if not (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768:
                            if arg1:
                                mem[96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[100] = uint256(poolInfo.field_1024)
                                mem[132] = msg.sender
                                require ext_code.size(address(poolInfo.field_1536))
                                staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _302 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                                require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                                _319 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                    revert with 0, 65
                                if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                mem[ceil32(return_data.size) + 96] = _319
                                require return_data.size >= _302 + (32 * _319) + 32
                                mem[ceil32(return_data.size) + 128 len 32 * _319] = mem[_302 + 128 len 32 * _319]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_1792))
                                staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1110 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1135 = mem[_1110]
                                require mem[_1110] <= test266151307()
                                require _1110 + mem[_1110] + 31 < _1110 + return_data.size
                                _1160 = mem[_1110 + mem[_1110]]
                                if mem[_1110 + mem[_1110]] > test266151307():
                                    revert with 0, 65
                                if _1110 + ceil32(return_data.size) + (32 * mem[_1110 + mem[_1110]]) + 32 > test266151307() or (32 * mem[_1110 + mem[_1110]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _1110 + ceil32(return_data.size) + (32 * mem[_1110 + mem[_1110]]) + 32
                                mem[_1110 + ceil32(return_data.size)] = _1160
                                require return_data.size >= _1135 + (32 * _1160) + 32
                                mem[_1110 + ceil32(return_data.size) + 32 len 32 * _1160] = mem[_1110 + _1135 + 32 len 32 * _1160]
                                if _319 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _1160 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                idx = 0
                                while idx < arg1:
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _2386 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _2386
                                    require ext_code.size(address(poolInfo.field_1536))
                                    call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _2386
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_1110 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _2486 = mem[(32 * idx) + _1110 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _2486
                                    require ext_code.size(address(poolInfo.field_1792))
                                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _2486
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_0++
                                    mem[0] = sha3(msg.sender, 8)
                                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    if idx >= mem[_1110 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_256++
                                    mem[0] = sha3(msg.sender, 8) + 1
                                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1110 + ceil32(return_data.size) + 32]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if userInfo[msg.sender].field_512 > !arg1:
                                    revert with 0, 17
                                userInfo[msg.sender].field_512 += arg1
                                if uint256(poolInfo.field_256) > !arg1:
                                    revert with 0, 17
                                uint256(poolInfo.field_256) += arg1
                        else:
                            mem[100] = msg.sender
                            if not sub_c2a0fb04:
                                mem[132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                                require ext_code.size(address(rewardTokenAddress))
                                call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if arg1:
                                    mem[ceil32(return_data.size) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 100] = uint256(poolInfo.field_1024)
                                    mem[ceil32(return_data.size) + 132] = msg.sender
                                    require ext_code.size(address(poolInfo.field_1536))
                                    staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    _436 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < ceil32(return_data.size) + return_data.size + 96
                                    _462 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    require return_data.size >= _436 + (32 * _462) + 32
                                    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _462] = mem[ceil32(return_data.size) + _436 + 128 len 32 * _462]
                                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(poolInfo.field_1792))
                                    staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1111 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1136 = mem[_1111]
                                    require mem[_1111] <= test266151307()
                                    require _1111 + mem[_1111] + 31 < _1111 + return_data.size
                                    _1161 = mem[_1111 + mem[_1111]]
                                    if mem[_1111 + mem[_1111]] > test266151307():
                                        revert with 0, 65
                                    if _1111 + ceil32(return_data.size) + (32 * mem[_1111 + mem[_1111]]) + 32 > test266151307() or (32 * mem[_1111 + mem[_1111]]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = _1111 + ceil32(return_data.size) + (32 * mem[_1111 + mem[_1111]]) + 32
                                    mem[_1111 + ceil32(return_data.size)] = _1161
                                    require return_data.size >= _1136 + (32 * _1161) + 32
                                    mem[_1111 + ceil32(return_data.size) + 32 len 32 * _1161] = mem[_1111 + _1136 + 32 len 32 * _1161]
                                    if mem[(2 * ceil32(return_data.size)) + 96] < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    if _1161 < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    idx = 0
                                    while idx < arg1:
                                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        _2388 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _2388
                                        require ext_code.size(address(poolInfo.field_1536))
                                        call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _2388
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_1111 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _2488 = mem[(32 * idx) + _1111 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _2488
                                        require ext_code.size(address(poolInfo.field_1792))
                                        call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _2488
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_0++
                                        mem[0] = sha3(msg.sender, 8)
                                        userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                        if idx >= mem[_1111 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_256++
                                        mem[0] = sha3(msg.sender, 8) + 1
                                        stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1111 + ceil32(return_data.size) + 32]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if userInfo[msg.sender].field_512 > !arg1:
                                        revert with 0, 17
                                    userInfo[msg.sender].field_512 += arg1
                                    if uint256(poolInfo.field_256) > !arg1:
                                        revert with 0, 17
                                    uint256(poolInfo.field_256) += arg1
                            else:
                                require ext_code.size(sub_3c86abfcAddress)
                                staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args msg.sender
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] <= 0:
                                    mem[ceil32(return_data.size) + 100] = msg.sender
                                    mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                                    require ext_code.size(address(rewardTokenAddress))
                                    call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768
                                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if arg1:
                                        mem[(2 * ceil32(return_data.size)) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 100] = uint256(poolInfo.field_1024)
                                        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                        require ext_code.size(address(poolInfo.field_1536))
                                        staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _553 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                        _579 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                            revert with 0, 65
                                        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        require return_data.size >= _553 + (32 * _579) + 32
                                        mem[(4 * ceil32(return_data.size)) + 128 len 32 * _579] = mem[(2 * ceil32(return_data.size)) + _553 + 128 len 32 * _579]
                                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(poolInfo.field_1792))
                                        staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1112 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1137 = mem[_1112]
                                        require mem[_1112] <= test266151307()
                                        require _1112 + mem[_1112] + 31 < _1112 + return_data.size
                                        _1162 = mem[_1112 + mem[_1112]]
                                        if mem[_1112 + mem[_1112]] > test266151307():
                                            revert with 0, 65
                                        if _1112 + ceil32(return_data.size) + (32 * mem[_1112 + mem[_1112]]) + 32 > test266151307() or (32 * mem[_1112 + mem[_1112]]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = _1112 + ceil32(return_data.size) + (32 * mem[_1112 + mem[_1112]]) + 32
                                        mem[_1112 + ceil32(return_data.size)] = _1162
                                        require return_data.size >= _1137 + (32 * _1162) + 32
                                        mem[_1112 + ceil32(return_data.size) + 32 len 32 * _1162] = mem[_1112 + _1137 + 32 len 32 * _1162]
                                        if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        if _1162 < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        idx = 0
                                        while idx < arg1:
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            _2390 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _2390
                                            require ext_code.size(address(poolInfo.field_1536))
                                            call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _2390
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_1112 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _2490 = mem[(32 * idx) + _1112 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _2490
                                            require ext_code.size(address(poolInfo.field_1792))
                                            call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _2490
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_0++
                                            mem[0] = sha3(msg.sender, 8)
                                            userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            if idx >= mem[_1112 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_256++
                                            mem[0] = sha3(msg.sender, 8) + 1
                                            stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1112 + ceil32(return_data.size) + 32]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if userInfo[msg.sender].field_512 > !arg1:
                                            revert with 0, 17
                                        userInfo[msg.sender].field_512 += arg1
                                        if uint256(poolInfo.field_256) > !arg1:
                                            revert with 0, 17
                                        uint256(poolInfo.field_256) += arg1
                                else:
                                    if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 and sub_c2a0fb04 > -1 / (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768:
                                        revert with 0, 17
                                    if not stor13:
                                        revert with 0, 18
                                    if (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 > !((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13):
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 100] = msg.sender
                                    mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 + ((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13)
                                    require ext_code.size(address(rewardTokenAddress))
                                    call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_768 + ((userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_768 * sub_c2a0fb04) / stor13)
                                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if arg1:
                                        mem[(2 * ceil32(return_data.size)) + 96] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 100] = uint256(poolInfo.field_1024)
                                        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                                        require ext_code.size(address(poolInfo.field_1536))
                                        staticcall address(poolInfo.field_1536).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 96
                                        require return_data.size >= 32
                                        _762 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                        _782 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                            revert with 0, 65
                                        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        require return_data.size >= _762 + (32 * _782) + 32
                                        mem[(4 * ceil32(return_data.size)) + 128 len 32 * _782] = mem[(2 * ceil32(return_data.size)) + _762 + 128 len 32 * _782]
                                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(poolInfo.field_1792))
                                        staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1113 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1138 = mem[_1113]
                                        require mem[_1113] <= test266151307()
                                        require _1113 + mem[_1113] + 31 < _1113 + return_data.size
                                        _1163 = mem[_1113 + mem[_1113]]
                                        if mem[_1113 + mem[_1113]] > test266151307():
                                            revert with 0, 65
                                        if _1113 + ceil32(return_data.size) + (32 * mem[_1113 + mem[_1113]]) + 32 > test266151307() or (32 * mem[_1113 + mem[_1113]]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = _1113 + ceil32(return_data.size) + (32 * mem[_1113 + mem[_1113]]) + 32
                                        mem[_1113 + ceil32(return_data.size)] = _1163
                                        require return_data.size >= _1138 + (32 * _1163) + 32
                                        mem[_1113 + ceil32(return_data.size) + 32 len 32 * _1163] = mem[_1113 + _1138 + 32 len 32 * _1163]
                                        if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        if _1163 < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        idx = 0
                                        while idx < arg1:
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            _2392 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _2392
                                            require ext_code.size(address(poolInfo.field_1536))
                                            call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _2392
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_1113 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _2492 = mem[(32 * idx) + _1113 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _2492
                                            require ext_code.size(address(poolInfo.field_1792))
                                            call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _2492
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_0++
                                            mem[0] = sha3(msg.sender, 8)
                                            userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            if idx >= mem[_1113 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_256++
                                            mem[0] = sha3(msg.sender, 8) + 1
                                            stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1113 + ceil32(return_data.size) + 32]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if userInfo[msg.sender].field_512 > !arg1:
                                            revert with 0, 17
                                        userInfo[msg.sender].field_512 += arg1
                                        if uint256(poolInfo.field_256) > !arg1:
                                            revert with 0, 17
                                        uint256(poolInfo.field_256) += arg1
    if userInfo[msg.sender].field_512 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_512:
        revert with 0, 17
    userInfo[msg.sender].field_768 = userInfo[msg.sender].field_512 * uint256(poolInfo.field_768) / 10^12
    emit Deposit(arg1, msg.sender);
}



}
