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
           poolInfo[arg1].field_1792,
           poolInfo[arg1].field_2048
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_768, userInfo[arg1].field_1024, userInfo[arg1].field_1280
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

function sub_9791cf42(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if userInfo[address(arg1)].field_512:
        mem[128] = userInfo[address(arg1)][2].field_0
        if (32 * userInfo[address(arg1)].field_512) + 32 > 64:
            mem[160] = userInfo[address(arg1)][2].field_256
            idx = 160
            s = 1
            while (32 * userInfo[address(arg1)].field_512) + 96 > idx:
                mem[idx + 32] = userInfo[address(arg1)][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * userInfo[address(arg1)].field_512) + 128] = 32
    mem[(32 * userInfo[address(arg1)].field_512) + 160] = userInfo[address(arg1)].field_512
    mem[(32 * userInfo[address(arg1)].field_512) + 192 len 32 * userInfo[address(arg1)].field_512] = mem[128 len 32 * userInfo[address(arg1)].field_512]
    return memory
      from (32 * userInfo[address(arg1)].field_512) + 128
       len (96 * userInfo[address(arg1)].field_512) + 64
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

function emergencyWithdraw() payable {
    if 0 >= poolInfo.length:
        revert with 0, 50
    mem[0] = msg.sender
    if uint256(poolInfo.field_256) < userInfo[msg.sender].field_768:
        revert with 0, 17
    uint256(poolInfo.field_256) -= userInfo[msg.sender].field_768
    idx = userInfo[mem[0]].field_768
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
        require ext_code.size(address(poolInfo.field_1792))
        call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, userInfo[msg.sender][idx + 1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= userInfo[msg.sender].field_512:
            revert with 0, 50
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = userInfo[msg.sender][idx + 2].field_0
        require ext_code.size(address(poolInfo.field_2048))
        call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, userInfo[msg.sender][idx + 2].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not userInfo[msg.sender].field_0:
            revert with 0, 49
        userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = 0
        userInfo[msg.sender].field_0--
        if not userInfo[msg.sender].field_256:
            revert with 0, 49
        stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = 0
        userInfo[msg.sender].field_256--
        if not userInfo[msg.sender].field_512:
            revert with 0, 49
        mem[0] = sha3(msg.sender, 8) + 2
        stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = 0
        userInfo[msg.sender].field_512--
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    userInfo[msg.sender].field_768 = 0
    userInfo[msg.sender].field_1024 = 0
    emit EmergencyWithdraw(0, msg.sender);
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
    if userInfo[msg.sender].field_768:
        if userInfo[msg.sender].field_768 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_768:
            revert with 0, 17
        if userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_1024:
            revert with 0, 17
        if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024:
            if not sub_c2a0fb04:
                require ext_code.size(zapperAddress)
                call zapperAddress.zapInToken(address arg1, uint256 arg2, address arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(stor2), (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024, address(poolInfo.field_1280), msg.sender
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
                        args address(rewardTokenAddress), (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024, address(poolInfo.field_1280), msg.sender
                else:
                    if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 and sub_c2a0fb04 > -1 / (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024:
                        revert with 0, 17
                    if not stor13:
                        revert with 0, 18
                    if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 > !((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13):
                        revert with 0, 17
                    require ext_code.size(zapperAddress)
                    call zapperAddress.zapInToken(address arg1, uint256 arg2, address arg3, address arg4) with:
                         gas gas_remaining wei
                        args address(rewardTokenAddress), (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 + ((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13), address(poolInfo.field_1280), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if userInfo[msg.sender].field_768 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_768:
                revert with 0, 17
            userInfo[msg.sender].field_1024 = userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12
    emit Compound(0, msg.sender);
    stor1 = 1
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= uint256(poolInfo.field_0):
        if userInfo[address(arg1)].field_768 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_768:
            revert with 0, 17
        if userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12 < userInfo[address(arg1)].field_1024:
            revert with 0, 17
        if (userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024 <= 0:
            return ((userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024)
        if sub_c2a0fb04 <= 0:
            return ((userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024)
        require ext_code.size(sub_3c86abfcAddress)
        staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return ((userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024)
        if (userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024 and sub_c2a0fb04 > -1 / (userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024:
            revert with 0, 17
        if not stor13:
            revert with 0, 18
        if (userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024 > !((userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_1024 * sub_c2a0fb04) / stor13):
            revert with 0, 17
        return ((userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024 + ((userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_1024 * sub_c2a0fb04) / stor13))
    if not uint256(poolInfo.field_256):
        if userInfo[address(arg1)].field_768 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_768:
            revert with 0, 17
        if userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12 < userInfo[address(arg1)].field_1024:
            revert with 0, 17
        if (userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024 <= 0:
            return ((userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024)
        if sub_c2a0fb04 <= 0:
            return ((userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024)
        require ext_code.size(sub_3c86abfcAddress)
        staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return ((userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024)
        if (userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024 and sub_c2a0fb04 > -1 / (userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024:
            revert with 0, 17
        if not stor13:
            revert with 0, 18
        if (userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024 > !((userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_1024 * sub_c2a0fb04) / stor13):
            revert with 0, 17
        return ((userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_1024 + ((userInfo[address(arg1)].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_1024 * sub_c2a0fb04) / stor13))
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
        if userInfo[address(arg1)].field_768 and uint256(poolInfo.field_768) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)) > -1 / userInfo[address(arg1)].field_768:
            revert with 0, 17
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12 < userInfo[address(arg1)].field_1024:
            revert with 0, 17
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024 <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024)
        if sub_c2a0fb04 <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024)
        require ext_code.size(sub_3c86abfcAddress)
        staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024)
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024 and sub_c2a0fb04 > -1 / ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024:
            revert with 0, 17
        if not stor13:
            revert with 0, 18
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024 > !(((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_1024 * sub_c2a0fb04) / stor13):
            revert with 0, 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024 + (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * block.timestamp * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_1024 * sub_c2a0fb04) / stor13))
    if uint256(poolInfo.field_0) >= endTime:
        if False and rewardPerSecond > 0:
            revert with 0, 17
        if not uint256(poolInfo.field_256):
            revert with 0, 18
        if uint256(poolInfo.field_768) > !(0 / uint256(poolInfo.field_256)):
            revert with 0, 17
        if userInfo[address(arg1)].field_768 and uint256(poolInfo.field_768) + (0 / uint256(poolInfo.field_256)) > -1 / userInfo[address(arg1)].field_768:
            revert with 0, 17
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12 < userInfo[address(arg1)].field_1024:
            revert with 0, 17
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024 <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024)
        if sub_c2a0fb04 <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024)
        require ext_code.size(sub_3c86abfcAddress)
        staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024)
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024 and sub_c2a0fb04 > -1 / ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024:
            revert with 0, 17
        if not stor13:
            revert with 0, 18
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024 > !(((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_1024 * sub_c2a0fb04) / stor13):
            revert with 0, 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024 + (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + (0 / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_1024 * sub_c2a0fb04) / stor13))
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
    if userInfo[address(arg1)].field_768 and uint256(poolInfo.field_768) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256)) > -1 / userInfo[address(arg1)].field_768:
        revert with 0, 17
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12 < userInfo[address(arg1)].field_1024:
        revert with 0, 17
    if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024 <= 0:
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024)
    if sub_c2a0fb04 <= 0:
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024)
    require ext_code.size(sub_3c86abfcAddress)
    staticcall sub_3c86abfcAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024)
    if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024 and sub_c2a0fb04 > -1 / ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024:
        revert with 0, 17
    if not stor13:
        revert with 0, 18
    if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024 > !(((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_1024 * sub_c2a0fb04) / stor13):
        revert with 0, 17
    return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12) - userInfo[address(arg1)].field_1024 + (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_768) + ((10^12 * endTime * rewardPerSecond) - (10^12 * uint256(poolInfo.field_0) * rewardPerSecond) / uint256(poolInfo.field_256) * userInfo[address(arg1)].field_768) / 10^12 * sub_c2a0fb04) - (userInfo[address(arg1)].field_1024 * sub_c2a0fb04) / stor13))
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0 >= poolInfo.length:
        revert with 0, 50
    if arg1 > userInfo[msg.sender].field_768:
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
    if userInfo[msg.sender].field_768 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_768:
        revert with 0, 17
    if userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_1024:
        revert with 0, 17
    if not (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024:
        if arg1:
            if userInfo[msg.sender].field_768 < arg1:
                revert with 0, 17
            idx = userInfo[msg.sender].field_768
            while idx > userInfo[msg.sender].field_768 - arg1:
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
                require ext_code.size(address(poolInfo.field_1792))
                call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, userInfo[msg.sender][idx + 1].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= userInfo[msg.sender].field_512:
                    revert with 0, 50
                mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[100] = this.address
                mem[132] = msg.sender
                mem[164] = userInfo[msg.sender][idx + 2].field_0
                require ext_code.size(address(poolInfo.field_2048))
                call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, userInfo[msg.sender][idx + 2].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not userInfo[msg.sender].field_0:
                    revert with 0, 49
                userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = 0
                userInfo[msg.sender].field_0--
                if not userInfo[msg.sender].field_256:
                    revert with 0, 49
                stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = 0
                userInfo[msg.sender].field_256--
                if not userInfo[msg.sender].field_512:
                    revert with 0, 49
                mem[0] = sha3(msg.sender, 8) + 2
                stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = 0
                userInfo[msg.sender].field_512--
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                continue 
            if userInfo[msg.sender].field_768 < arg1:
                revert with 0, 17
            userInfo[msg.sender].field_768 -= arg1
            if uint256(poolInfo.field_256) < arg1:
                revert with 0, 17
            uint256(poolInfo.field_256) -= arg1
    else:
        if not sub_c2a0fb04:
            require ext_code.size(address(rewardTokenAddress))
            call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1:
                if userInfo[msg.sender].field_768 < arg1:
                    revert with 0, 17
                idx = userInfo[msg.sender].field_768
                while idx > userInfo[msg.sender].field_768 - arg1:
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
                    require ext_code.size(address(poolInfo.field_1792))
                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, userInfo[msg.sender][idx + 1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= userInfo[msg.sender].field_512:
                        revert with 0, 50
                    mem[ceil32(return_data.size) + 96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = this.address
                    mem[ceil32(return_data.size) + 132] = msg.sender
                    mem[ceil32(return_data.size) + 164] = userInfo[msg.sender][idx + 2].field_0
                    require ext_code.size(address(poolInfo.field_2048))
                    call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, userInfo[msg.sender][idx + 2].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not userInfo[msg.sender].field_0:
                        revert with 0, 49
                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = 0
                    userInfo[msg.sender].field_0--
                    if not userInfo[msg.sender].field_256:
                        revert with 0, 49
                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = 0
                    userInfo[msg.sender].field_256--
                    if not userInfo[msg.sender].field_512:
                        revert with 0, 49
                    mem[0] = sha3(msg.sender, 8) + 2
                    stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = 0
                    userInfo[msg.sender].field_512--
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                if userInfo[msg.sender].field_768 < arg1:
                    revert with 0, 17
                userInfo[msg.sender].field_768 -= arg1
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
                    args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
            else:
                if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 and sub_c2a0fb04 > -1 / (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024:
                    revert with 0, 17
                if not stor13:
                    revert with 0, 18
                if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 > !((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13):
                    revert with 0, 17
                require ext_code.size(address(rewardTokenAddress))
                call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 + ((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1:
                if userInfo[msg.sender].field_768 < arg1:
                    revert with 0, 17
                idx = userInfo[msg.sender].field_768
                while idx > userInfo[msg.sender].field_768 - arg1:
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
                    require ext_code.size(address(poolInfo.field_1792))
                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, userInfo[msg.sender][idx + 1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= userInfo[msg.sender].field_512:
                        revert with 0, 50
                    mem[(2 * ceil32(return_data.size)) + 96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 164] = userInfo[msg.sender][idx + 2].field_0
                    require ext_code.size(address(poolInfo.field_2048))
                    call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, userInfo[msg.sender][idx + 2].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not userInfo[msg.sender].field_0:
                        revert with 0, 49
                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = 0
                    userInfo[msg.sender].field_0--
                    if not userInfo[msg.sender].field_256:
                        revert with 0, 49
                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = 0
                    userInfo[msg.sender].field_256--
                    if not userInfo[msg.sender].field_512:
                        revert with 0, 49
                    mem[0] = sha3(msg.sender, 8) + 2
                    stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = 0
                    userInfo[msg.sender].field_512--
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                if userInfo[msg.sender].field_768 < arg1:
                    revert with 0, 17
                userInfo[msg.sender].field_768 -= arg1
                if uint256(poolInfo.field_256) < arg1:
                    revert with 0, 17
                uint256(poolInfo.field_256) -= arg1
    if userInfo[msg.sender].field_768 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_768:
        revert with 0, 17
    userInfo[msg.sender].field_1024 = userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12
    emit Withdraw(arg1, msg.sender);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0 >= poolInfo.length:
        revert with 0, 50
    mem[32] = 8
    mem[0] = 7
    if block.timestamp <= uint256(poolInfo.field_0):
        if not userInfo[msg.sender].field_768:
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
                _1554 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1579 = mem[_1554]
                require mem[_1554] <= test266151307()
                require _1554 + mem[_1554] + 31 < _1554 + return_data.size
                _1604 = mem[_1554 + mem[_1554]]
                if mem[_1554 + mem[_1554]] > test266151307():
                    revert with 0, 65
                if _1554 + ceil32(return_data.size) + (32 * mem[_1554 + mem[_1554]]) + 32 > test266151307() or (32 * mem[_1554 + mem[_1554]]) + 32 < 0:
                    revert with 0, 65
                mem[64] = _1554 + ceil32(return_data.size) + (32 * mem[_1554 + mem[_1554]]) + 32
                mem[_1554 + ceil32(return_data.size)] = _1604
                require return_data.size >= _1579 + (32 * _1604) + 32
                mem[_1554 + ceil32(return_data.size) + 32 len 32 * _1604] = mem[_1554 + _1579 + 32 len 32 * _1604]
                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                mem[mem[64] + 36] = msg.sender
                require ext_code.size(address(poolInfo.field_2048))
                staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args uint256(poolInfo.field_1024), msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2729 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2754 = mem[_2729]
                require mem[_2729] <= test266151307()
                require _2729 + mem[_2729] + 31 < _2729 + return_data.size
                _2779 = mem[_2729 + mem[_2729]]
                if mem[_2729 + mem[_2729]] > test266151307():
                    revert with 0, 65
                if _2729 + ceil32(return_data.size) + (32 * mem[_2729 + mem[_2729]]) + 32 > test266151307() or (32 * mem[_2729 + mem[_2729]]) + 32 < 0:
                    revert with 0, 65
                mem[64] = _2729 + ceil32(return_data.size) + (32 * mem[_2729 + mem[_2729]]) + 32
                mem[_2729 + ceil32(return_data.size)] = _2779
                require return_data.size >= _2754 + (32 * _2779) + 32
                mem[_2729 + ceil32(return_data.size) + 32 len 32 * _2779] = mem[_2729 + _2754 + 32 len 32 * _2779]
                if _12 < arg1:
                    revert with 0, 'deposit: Not enough NFTs'
                if _1604 < arg1:
                    revert with 0, 'deposit: Not enough NFTs'
                if _2779 < arg1:
                    revert with 0, 'deposit: Not enough NFTs'
                idx = 0
                while idx < arg1:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    _4524 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _4524
                    require ext_code.size(address(poolInfo.field_1536))
                    call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _4524
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_1554 + ceil32(return_data.size)]:
                        revert with 0, 50
                    _4624 = mem[(32 * idx) + _1554 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _4624
                    require ext_code.size(address(poolInfo.field_1792))
                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _4624
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_2729 + ceil32(return_data.size)]:
                        revert with 0, 50
                    _4724 = mem[(32 * idx) + _2729 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _4724
                    require ext_code.size(address(poolInfo.field_2048))
                    call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _4724
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    userInfo[msg.sender].field_0++
                    mem[0] = sha3(msg.sender, 8)
                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    if idx >= mem[_1554 + ceil32(return_data.size)]:
                        revert with 0, 50
                    userInfo[msg.sender].field_256++
                    mem[0] = sha3(msg.sender, 8) + 1
                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1554 + ceil32(return_data.size) + 32]
                    if idx >= mem[_2729 + ceil32(return_data.size)]:
                        revert with 0, 50
                    userInfo[msg.sender].field_512++
                    mem[0] = sha3(msg.sender, 8) + 2
                    stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2729 + ceil32(return_data.size) + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if userInfo[msg.sender].field_768 > !arg1:
                    revert with 0, 17
                userInfo[msg.sender].field_768 += arg1
                if uint256(poolInfo.field_256) > !arg1:
                    revert with 0, 17
                uint256(poolInfo.field_256) += arg1
        else:
            if userInfo[msg.sender].field_768 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_768:
                revert with 0, 17
            if userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_1024:
                revert with 0, 17
            if not (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024:
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
                    _1555 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1580 = mem[_1555]
                    require mem[_1555] <= test266151307()
                    require _1555 + mem[_1555] + 31 < _1555 + return_data.size
                    _1605 = mem[_1555 + mem[_1555]]
                    if mem[_1555 + mem[_1555]] > test266151307():
                        revert with 0, 65
                    if _1555 + ceil32(return_data.size) + (32 * mem[_1555 + mem[_1555]]) + 32 > test266151307() or (32 * mem[_1555 + mem[_1555]]) + 32 < 0:
                        revert with 0, 65
                    mem[64] = _1555 + ceil32(return_data.size) + (32 * mem[_1555 + mem[_1555]]) + 32
                    mem[_1555 + ceil32(return_data.size)] = _1605
                    require return_data.size >= _1580 + (32 * _1605) + 32
                    mem[_1555 + ceil32(return_data.size) + 32 len 32 * _1605] = mem[_1555 + _1580 + 32 len 32 * _1605]
                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(address(poolInfo.field_2048))
                    staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args uint256(poolInfo.field_1024), msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2730 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2755 = mem[_2730]
                    require mem[_2730] <= test266151307()
                    require _2730 + mem[_2730] + 31 < _2730 + return_data.size
                    _2780 = mem[_2730 + mem[_2730]]
                    if mem[_2730 + mem[_2730]] > test266151307():
                        revert with 0, 65
                    if _2730 + ceil32(return_data.size) + (32 * mem[_2730 + mem[_2730]]) + 32 > test266151307() or (32 * mem[_2730 + mem[_2730]]) + 32 < 0:
                        revert with 0, 65
                    mem[64] = _2730 + ceil32(return_data.size) + (32 * mem[_2730 + mem[_2730]]) + 32
                    mem[_2730 + ceil32(return_data.size)] = _2780
                    require return_data.size >= _2755 + (32 * _2780) + 32
                    mem[_2730 + ceil32(return_data.size) + 32 len 32 * _2780] = mem[_2730 + _2755 + 32 len 32 * _2780]
                    if _61 < arg1:
                        revert with 0, 'deposit: Not enough NFTs'
                    if _1605 < arg1:
                        revert with 0, 'deposit: Not enough NFTs'
                    if _2780 < arg1:
                        revert with 0, 'deposit: Not enough NFTs'
                    idx = 0
                    while idx < arg1:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _4526 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _4526
                        require ext_code.size(address(poolInfo.field_1536))
                        call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _4526
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_1555 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _4626 = mem[(32 * idx) + _1555 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _4626
                        require ext_code.size(address(poolInfo.field_1792))
                        call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _4626
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_2730 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _4726 = mem[(32 * idx) + _2730 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _4726
                        require ext_code.size(address(poolInfo.field_2048))
                        call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _4726
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        userInfo[msg.sender].field_0++
                        mem[0] = sha3(msg.sender, 8)
                        userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        if idx >= mem[_1555 + ceil32(return_data.size)]:
                            revert with 0, 50
                        userInfo[msg.sender].field_256++
                        mem[0] = sha3(msg.sender, 8) + 1
                        stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1555 + ceil32(return_data.size) + 32]
                        if idx >= mem[_2730 + ceil32(return_data.size)]:
                            revert with 0, 50
                        userInfo[msg.sender].field_512++
                        mem[0] = sha3(msg.sender, 8) + 2
                        stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2730 + ceil32(return_data.size) + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if userInfo[msg.sender].field_768 > !arg1:
                        revert with 0, 17
                    userInfo[msg.sender].field_768 += arg1
                    if uint256(poolInfo.field_256) > !arg1:
                        revert with 0, 17
                    uint256(poolInfo.field_256) += arg1
            else:
                mem[100] = msg.sender
                if not sub_c2a0fb04:
                    mem[132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
                    require ext_code.size(address(rewardTokenAddress))
                    call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
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
                        _103 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < ceil32(return_data.size) + return_data.size + 96
                        _113 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                        require return_data.size >= _103 + (32 * _113) + 32
                        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _113] = mem[ceil32(return_data.size) + _103 + 128 len 32 * _113]
                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(address(poolInfo.field_1792))
                        staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                gas gas_remaining wei
                               args uint256(poolInfo.field_1024), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1556 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1581 = mem[_1556]
                        require mem[_1556] <= test266151307()
                        require _1556 + mem[_1556] + 31 < _1556 + return_data.size
                        _1606 = mem[_1556 + mem[_1556]]
                        if mem[_1556 + mem[_1556]] > test266151307():
                            revert with 0, 65
                        if _1556 + ceil32(return_data.size) + (32 * mem[_1556 + mem[_1556]]) + 32 > test266151307() or (32 * mem[_1556 + mem[_1556]]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = _1556 + ceil32(return_data.size) + (32 * mem[_1556 + mem[_1556]]) + 32
                        mem[_1556 + ceil32(return_data.size)] = _1606
                        require return_data.size >= _1581 + (32 * _1606) + 32
                        mem[_1556 + ceil32(return_data.size) + 32 len 32 * _1606] = mem[_1556 + _1581 + 32 len 32 * _1606]
                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(address(poolInfo.field_2048))
                        staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                gas gas_remaining wei
                               args uint256(poolInfo.field_1024), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2731 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2756 = mem[_2731]
                        require mem[_2731] <= test266151307()
                        require _2731 + mem[_2731] + 31 < _2731 + return_data.size
                        _2781 = mem[_2731 + mem[_2731]]
                        if mem[_2731 + mem[_2731]] > test266151307():
                            revert with 0, 65
                        if _2731 + ceil32(return_data.size) + (32 * mem[_2731 + mem[_2731]]) + 32 > test266151307() or (32 * mem[_2731 + mem[_2731]]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = _2731 + ceil32(return_data.size) + (32 * mem[_2731 + mem[_2731]]) + 32
                        mem[_2731 + ceil32(return_data.size)] = _2781
                        require return_data.size >= _2756 + (32 * _2781) + 32
                        mem[_2731 + ceil32(return_data.size) + 32 len 32 * _2781] = mem[_2731 + _2756 + 32 len 32 * _2781]
                        if mem[(2 * ceil32(return_data.size)) + 96] < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        if _1606 < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        if _2781 < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        idx = 0
                        while idx < arg1:
                            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            _4528 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _4528
                            require ext_code.size(address(poolInfo.field_1536))
                            call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _4528
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_1556 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _4628 = mem[(32 * idx) + _1556 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _4628
                            require ext_code.size(address(poolInfo.field_1792))
                            call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _4628
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_2731 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _4728 = mem[(32 * idx) + _2731 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _4728
                            require ext_code.size(address(poolInfo.field_2048))
                            call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _4728
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                revert with 0, 50
                            userInfo[msg.sender].field_0++
                            mem[0] = sha3(msg.sender, 8)
                            userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                            if idx >= mem[_1556 + ceil32(return_data.size)]:
                                revert with 0, 50
                            userInfo[msg.sender].field_256++
                            mem[0] = sha3(msg.sender, 8) + 1
                            stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1556 + ceil32(return_data.size) + 32]
                            if idx >= mem[_2731 + ceil32(return_data.size)]:
                                revert with 0, 50
                            userInfo[msg.sender].field_512++
                            mem[0] = sha3(msg.sender, 8) + 2
                            stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2731 + ceil32(return_data.size) + 32]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if userInfo[msg.sender].field_768 > !arg1:
                            revert with 0, 17
                        userInfo[msg.sender].field_768 += arg1
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
                        mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
                        require ext_code.size(address(rewardTokenAddress))
                        call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
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
                            _158 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                            _176 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            require return_data.size >= _158 + (32 * _176) + 32
                            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _176] = mem[(2 * ceil32(return_data.size)) + _158 + 128 len 32 * _176]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_1792))
                            staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1557 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1582 = mem[_1557]
                            require mem[_1557] <= test266151307()
                            require _1557 + mem[_1557] + 31 < _1557 + return_data.size
                            _1607 = mem[_1557 + mem[_1557]]
                            if mem[_1557 + mem[_1557]] > test266151307():
                                revert with 0, 65
                            if _1557 + ceil32(return_data.size) + (32 * mem[_1557 + mem[_1557]]) + 32 > test266151307() or (32 * mem[_1557 + mem[_1557]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _1557 + ceil32(return_data.size) + (32 * mem[_1557 + mem[_1557]]) + 32
                            mem[_1557 + ceil32(return_data.size)] = _1607
                            require return_data.size >= _1582 + (32 * _1607) + 32
                            mem[_1557 + ceil32(return_data.size) + 32 len 32 * _1607] = mem[_1557 + _1582 + 32 len 32 * _1607]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_2048))
                            staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2732 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2757 = mem[_2732]
                            require mem[_2732] <= test266151307()
                            require _2732 + mem[_2732] + 31 < _2732 + return_data.size
                            _2782 = mem[_2732 + mem[_2732]]
                            if mem[_2732 + mem[_2732]] > test266151307():
                                revert with 0, 65
                            if _2732 + ceil32(return_data.size) + (32 * mem[_2732 + mem[_2732]]) + 32 > test266151307() or (32 * mem[_2732 + mem[_2732]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _2732 + ceil32(return_data.size) + (32 * mem[_2732 + mem[_2732]]) + 32
                            mem[_2732 + ceil32(return_data.size)] = _2782
                            require return_data.size >= _2757 + (32 * _2782) + 32
                            mem[_2732 + ceil32(return_data.size) + 32 len 32 * _2782] = mem[_2732 + _2757 + 32 len 32 * _2782]
                            if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _1607 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _2782 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            idx = 0
                            while idx < arg1:
                                if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _4530 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4530
                                require ext_code.size(address(poolInfo.field_1536))
                                call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4530
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_1557 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _4630 = mem[(32 * idx) + _1557 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4630
                                require ext_code.size(address(poolInfo.field_1792))
                                call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4630
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_2732 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _4730 = mem[(32 * idx) + _2732 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4730
                                require ext_code.size(address(poolInfo.field_2048))
                                call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4730
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_0++
                                mem[0] = sha3(msg.sender, 8)
                                userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                if idx >= mem[_1557 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_256++
                                mem[0] = sha3(msg.sender, 8) + 1
                                stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1557 + ceil32(return_data.size) + 32]
                                if idx >= mem[_2732 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_512++
                                mem[0] = sha3(msg.sender, 8) + 2
                                stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2732 + ceil32(return_data.size) + 32]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if userInfo[msg.sender].field_768 > !arg1:
                                revert with 0, 17
                            userInfo[msg.sender].field_768 += arg1
                            if uint256(poolInfo.field_256) > !arg1:
                                revert with 0, 17
                            uint256(poolInfo.field_256) += arg1
                    else:
                        if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 and sub_c2a0fb04 > -1 / (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024:
                            revert with 0, 17
                        if not stor13:
                            revert with 0, 18
                        if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 > !((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13):
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 100] = msg.sender
                        mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 + ((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13)
                        require ext_code.size(address(rewardTokenAddress))
                        call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 + ((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13)
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
                            _341 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                            _365 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                revert with 0, 65
                            if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            require return_data.size >= _341 + (32 * _365) + 32
                            mem[(4 * ceil32(return_data.size)) + 128 len 32 * _365] = mem[(2 * ceil32(return_data.size)) + _341 + 128 len 32 * _365]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_1792))
                            staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1558 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1583 = mem[_1558]
                            require mem[_1558] <= test266151307()
                            require _1558 + mem[_1558] + 31 < _1558 + return_data.size
                            _1608 = mem[_1558 + mem[_1558]]
                            if mem[_1558 + mem[_1558]] > test266151307():
                                revert with 0, 65
                            if _1558 + ceil32(return_data.size) + (32 * mem[_1558 + mem[_1558]]) + 32 > test266151307() or (32 * mem[_1558 + mem[_1558]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _1558 + ceil32(return_data.size) + (32 * mem[_1558 + mem[_1558]]) + 32
                            mem[_1558 + ceil32(return_data.size)] = _1608
                            require return_data.size >= _1583 + (32 * _1608) + 32
                            mem[_1558 + ceil32(return_data.size) + 32 len 32 * _1608] = mem[_1558 + _1583 + 32 len 32 * _1608]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_2048))
                            staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2733 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2758 = mem[_2733]
                            require mem[_2733] <= test266151307()
                            require _2733 + mem[_2733] + 31 < _2733 + return_data.size
                            _2783 = mem[_2733 + mem[_2733]]
                            if mem[_2733 + mem[_2733]] > test266151307():
                                revert with 0, 65
                            if _2733 + ceil32(return_data.size) + (32 * mem[_2733 + mem[_2733]]) + 32 > test266151307() or (32 * mem[_2733 + mem[_2733]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _2733 + ceil32(return_data.size) + (32 * mem[_2733 + mem[_2733]]) + 32
                            mem[_2733 + ceil32(return_data.size)] = _2783
                            require return_data.size >= _2758 + (32 * _2783) + 32
                            mem[_2733 + ceil32(return_data.size) + 32 len 32 * _2783] = mem[_2733 + _2758 + 32 len 32 * _2783]
                            if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _1608 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _2783 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            idx = 0
                            while idx < arg1:
                                if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _4532 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4532
                                require ext_code.size(address(poolInfo.field_1536))
                                call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4532
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_1558 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _4632 = mem[(32 * idx) + _1558 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4632
                                require ext_code.size(address(poolInfo.field_1792))
                                call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4632
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_2733 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _4732 = mem[(32 * idx) + _2733 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4732
                                require ext_code.size(address(poolInfo.field_2048))
                                call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4732
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_0++
                                mem[0] = sha3(msg.sender, 8)
                                userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                if idx >= mem[_1558 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_256++
                                mem[0] = sha3(msg.sender, 8) + 1
                                stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1558 + ceil32(return_data.size) + 32]
                                if idx >= mem[_2733 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_512++
                                mem[0] = sha3(msg.sender, 8) + 2
                                stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2733 + ceil32(return_data.size) + 32]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if userInfo[msg.sender].field_768 > !arg1:
                                revert with 0, 17
                            userInfo[msg.sender].field_768 += arg1
                            if uint256(poolInfo.field_256) > !arg1:
                                revert with 0, 17
                            uint256(poolInfo.field_256) += arg1
    else:
        if not uint256(poolInfo.field_256):
            uint256(poolInfo.field_0) = block.timestamp
            if not userInfo[msg.sender].field_768:
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
                    _1549 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1574 = mem[_1549]
                    require mem[_1549] <= test266151307()
                    require _1549 + mem[_1549] + 31 < _1549 + return_data.size
                    _1599 = mem[_1549 + mem[_1549]]
                    if mem[_1549 + mem[_1549]] > test266151307():
                        revert with 0, 65
                    if _1549 + ceil32(return_data.size) + (32 * mem[_1549 + mem[_1549]]) + 32 > test266151307() or (32 * mem[_1549 + mem[_1549]]) + 32 < 0:
                        revert with 0, 65
                    mem[64] = _1549 + ceil32(return_data.size) + (32 * mem[_1549 + mem[_1549]]) + 32
                    mem[_1549 + ceil32(return_data.size)] = _1599
                    require return_data.size >= _1574 + (32 * _1599) + 32
                    mem[_1549 + ceil32(return_data.size) + 32 len 32 * _1599] = mem[_1549 + _1574 + 32 len 32 * _1599]
                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(address(poolInfo.field_2048))
                    staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args uint256(poolInfo.field_1024), msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2724 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2749 = mem[_2724]
                    require mem[_2724] <= test266151307()
                    require _2724 + mem[_2724] + 31 < _2724 + return_data.size
                    _2774 = mem[_2724 + mem[_2724]]
                    if mem[_2724 + mem[_2724]] > test266151307():
                        revert with 0, 65
                    if _2724 + ceil32(return_data.size) + (32 * mem[_2724 + mem[_2724]]) + 32 > test266151307() or (32 * mem[_2724 + mem[_2724]]) + 32 < 0:
                        revert with 0, 65
                    mem[64] = _2724 + ceil32(return_data.size) + (32 * mem[_2724 + mem[_2724]]) + 32
                    mem[_2724 + ceil32(return_data.size)] = _2774
                    require return_data.size >= _2749 + (32 * _2774) + 32
                    mem[_2724 + ceil32(return_data.size) + 32 len 32 * _2774] = mem[_2724 + _2749 + 32 len 32 * _2774]
                    if _13 < arg1:
                        revert with 0, 'deposit: Not enough NFTs'
                    if _1599 < arg1:
                        revert with 0, 'deposit: Not enough NFTs'
                    if _2774 < arg1:
                        revert with 0, 'deposit: Not enough NFTs'
                    idx = 0
                    while idx < arg1:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _4514 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _4514
                        require ext_code.size(address(poolInfo.field_1536))
                        call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _4514
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_1549 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _4614 = mem[(32 * idx) + _1549 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _4614
                        require ext_code.size(address(poolInfo.field_1792))
                        call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _4614
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_2724 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _4714 = mem[(32 * idx) + _2724 + ceil32(return_data.size) + 32]
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _4714
                        require ext_code.size(address(poolInfo.field_2048))
                        call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _4714
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        userInfo[msg.sender].field_0++
                        mem[0] = sha3(msg.sender, 8)
                        userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        if idx >= mem[_1549 + ceil32(return_data.size)]:
                            revert with 0, 50
                        userInfo[msg.sender].field_256++
                        mem[0] = sha3(msg.sender, 8) + 1
                        stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1549 + ceil32(return_data.size) + 32]
                        if idx >= mem[_2724 + ceil32(return_data.size)]:
                            revert with 0, 50
                        userInfo[msg.sender].field_512++
                        mem[0] = sha3(msg.sender, 8) + 2
                        stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2724 + ceil32(return_data.size) + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if userInfo[msg.sender].field_768 > !arg1:
                        revert with 0, 17
                    userInfo[msg.sender].field_768 += arg1
                    if uint256(poolInfo.field_256) > !arg1:
                        revert with 0, 17
                    uint256(poolInfo.field_256) += arg1
            else:
                if userInfo[msg.sender].field_768 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_768:
                    revert with 0, 17
                if userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_1024:
                    revert with 0, 17
                if not (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024:
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
                        _1550 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1575 = mem[_1550]
                        require mem[_1550] <= test266151307()
                        require _1550 + mem[_1550] + 31 < _1550 + return_data.size
                        _1600 = mem[_1550 + mem[_1550]]
                        if mem[_1550 + mem[_1550]] > test266151307():
                            revert with 0, 65
                        if _1550 + ceil32(return_data.size) + (32 * mem[_1550 + mem[_1550]]) + 32 > test266151307() or (32 * mem[_1550 + mem[_1550]]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = _1550 + ceil32(return_data.size) + (32 * mem[_1550 + mem[_1550]]) + 32
                        mem[_1550 + ceil32(return_data.size)] = _1600
                        require return_data.size >= _1575 + (32 * _1600) + 32
                        mem[_1550 + ceil32(return_data.size) + 32 len 32 * _1600] = mem[_1550 + _1575 + 32 len 32 * _1600]
                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(address(poolInfo.field_2048))
                        staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                gas gas_remaining wei
                               args uint256(poolInfo.field_1024), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2725 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2750 = mem[_2725]
                        require mem[_2725] <= test266151307()
                        require _2725 + mem[_2725] + 31 < _2725 + return_data.size
                        _2775 = mem[_2725 + mem[_2725]]
                        if mem[_2725 + mem[_2725]] > test266151307():
                            revert with 0, 65
                        if _2725 + ceil32(return_data.size) + (32 * mem[_2725 + mem[_2725]]) + 32 > test266151307() or (32 * mem[_2725 + mem[_2725]]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = _2725 + ceil32(return_data.size) + (32 * mem[_2725 + mem[_2725]]) + 32
                        mem[_2725 + ceil32(return_data.size)] = _2775
                        require return_data.size >= _2750 + (32 * _2775) + 32
                        mem[_2725 + ceil32(return_data.size) + 32 len 32 * _2775] = mem[_2725 + _2750 + 32 len 32 * _2775]
                        if _62 < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        if _1600 < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        if _2775 < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        idx = 0
                        while idx < arg1:
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _4516 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _4516
                            require ext_code.size(address(poolInfo.field_1536))
                            call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _4516
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_1550 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _4616 = mem[(32 * idx) + _1550 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _4616
                            require ext_code.size(address(poolInfo.field_1792))
                            call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _4616
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_2725 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _4716 = mem[(32 * idx) + _2725 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _4716
                            require ext_code.size(address(poolInfo.field_2048))
                            call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _4716
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            userInfo[msg.sender].field_0++
                            mem[0] = sha3(msg.sender, 8)
                            userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            if idx >= mem[_1550 + ceil32(return_data.size)]:
                                revert with 0, 50
                            userInfo[msg.sender].field_256++
                            mem[0] = sha3(msg.sender, 8) + 1
                            stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1550 + ceil32(return_data.size) + 32]
                            if idx >= mem[_2725 + ceil32(return_data.size)]:
                                revert with 0, 50
                            userInfo[msg.sender].field_512++
                            mem[0] = sha3(msg.sender, 8) + 2
                            stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2725 + ceil32(return_data.size) + 32]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if userInfo[msg.sender].field_768 > !arg1:
                            revert with 0, 17
                        userInfo[msg.sender].field_768 += arg1
                        if uint256(poolInfo.field_256) > !arg1:
                            revert with 0, 17
                        uint256(poolInfo.field_256) += arg1
                else:
                    mem[100] = msg.sender
                    if not sub_c2a0fb04:
                        mem[132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
                        require ext_code.size(address(rewardTokenAddress))
                        call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
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
                            _107 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < ceil32(return_data.size) + return_data.size + 96
                            _117 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            require return_data.size >= _107 + (32 * _117) + 32
                            mem[(2 * ceil32(return_data.size)) + 128 len 32 * _117] = mem[ceil32(return_data.size) + _107 + 128 len 32 * _117]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_1792))
                            staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1551 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1576 = mem[_1551]
                            require mem[_1551] <= test266151307()
                            require _1551 + mem[_1551] + 31 < _1551 + return_data.size
                            _1601 = mem[_1551 + mem[_1551]]
                            if mem[_1551 + mem[_1551]] > test266151307():
                                revert with 0, 65
                            if _1551 + ceil32(return_data.size) + (32 * mem[_1551 + mem[_1551]]) + 32 > test266151307() or (32 * mem[_1551 + mem[_1551]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _1551 + ceil32(return_data.size) + (32 * mem[_1551 + mem[_1551]]) + 32
                            mem[_1551 + ceil32(return_data.size)] = _1601
                            require return_data.size >= _1576 + (32 * _1601) + 32
                            mem[_1551 + ceil32(return_data.size) + 32 len 32 * _1601] = mem[_1551 + _1576 + 32 len 32 * _1601]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_2048))
                            staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2726 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2751 = mem[_2726]
                            require mem[_2726] <= test266151307()
                            require _2726 + mem[_2726] + 31 < _2726 + return_data.size
                            _2776 = mem[_2726 + mem[_2726]]
                            if mem[_2726 + mem[_2726]] > test266151307():
                                revert with 0, 65
                            if _2726 + ceil32(return_data.size) + (32 * mem[_2726 + mem[_2726]]) + 32 > test266151307() or (32 * mem[_2726 + mem[_2726]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _2726 + ceil32(return_data.size) + (32 * mem[_2726 + mem[_2726]]) + 32
                            mem[_2726 + ceil32(return_data.size)] = _2776
                            require return_data.size >= _2751 + (32 * _2776) + 32
                            mem[_2726 + ceil32(return_data.size) + 32 len 32 * _2776] = mem[_2726 + _2751 + 32 len 32 * _2776]
                            if mem[(2 * ceil32(return_data.size)) + 96] < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _1601 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _2776 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            idx = 0
                            while idx < arg1:
                                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                _4518 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4518
                                require ext_code.size(address(poolInfo.field_1536))
                                call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4518
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_1551 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _4618 = mem[(32 * idx) + _1551 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4618
                                require ext_code.size(address(poolInfo.field_1792))
                                call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4618
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_2726 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _4718 = mem[(32 * idx) + _2726 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4718
                                require ext_code.size(address(poolInfo.field_2048))
                                call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4718
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_0++
                                mem[0] = sha3(msg.sender, 8)
                                userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                if idx >= mem[_1551 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_256++
                                mem[0] = sha3(msg.sender, 8) + 1
                                stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1551 + ceil32(return_data.size) + 32]
                                if idx >= mem[_2726 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_512++
                                mem[0] = sha3(msg.sender, 8) + 2
                                stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2726 + ceil32(return_data.size) + 32]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if userInfo[msg.sender].field_768 > !arg1:
                                revert with 0, 17
                            userInfo[msg.sender].field_768 += arg1
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
                            mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
                            require ext_code.size(address(rewardTokenAddress))
                            call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
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
                                _164 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                _181 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                require return_data.size >= _164 + (32 * _181) + 32
                                mem[(4 * ceil32(return_data.size)) + 128 len 32 * _181] = mem[(2 * ceil32(return_data.size)) + _164 + 128 len 32 * _181]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_1792))
                                staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1552 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1577 = mem[_1552]
                                require mem[_1552] <= test266151307()
                                require _1552 + mem[_1552] + 31 < _1552 + return_data.size
                                _1602 = mem[_1552 + mem[_1552]]
                                if mem[_1552 + mem[_1552]] > test266151307():
                                    revert with 0, 65
                                if _1552 + ceil32(return_data.size) + (32 * mem[_1552 + mem[_1552]]) + 32 > test266151307() or (32 * mem[_1552 + mem[_1552]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _1552 + ceil32(return_data.size) + (32 * mem[_1552 + mem[_1552]]) + 32
                                mem[_1552 + ceil32(return_data.size)] = _1602
                                require return_data.size >= _1577 + (32 * _1602) + 32
                                mem[_1552 + ceil32(return_data.size) + 32 len 32 * _1602] = mem[_1552 + _1577 + 32 len 32 * _1602]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_2048))
                                staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2727 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2752 = mem[_2727]
                                require mem[_2727] <= test266151307()
                                require _2727 + mem[_2727] + 31 < _2727 + return_data.size
                                _2777 = mem[_2727 + mem[_2727]]
                                if mem[_2727 + mem[_2727]] > test266151307():
                                    revert with 0, 65
                                if _2727 + ceil32(return_data.size) + (32 * mem[_2727 + mem[_2727]]) + 32 > test266151307() or (32 * mem[_2727 + mem[_2727]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _2727 + ceil32(return_data.size) + (32 * mem[_2727 + mem[_2727]]) + 32
                                mem[_2727 + ceil32(return_data.size)] = _2777
                                require return_data.size >= _2752 + (32 * _2777) + 32
                                mem[_2727 + ceil32(return_data.size) + 32 len 32 * _2777] = mem[_2727 + _2752 + 32 len 32 * _2777]
                                if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _1602 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _2777 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                idx = 0
                                while idx < arg1:
                                    if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    _4520 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4520
                                    require ext_code.size(address(poolInfo.field_1536))
                                    call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4520
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_1552 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _4620 = mem[(32 * idx) + _1552 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4620
                                    require ext_code.size(address(poolInfo.field_1792))
                                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4620
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_2727 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _4720 = mem[(32 * idx) + _2727 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4720
                                    require ext_code.size(address(poolInfo.field_2048))
                                    call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4720
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_0++
                                    mem[0] = sha3(msg.sender, 8)
                                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                    if idx >= mem[_1552 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_256++
                                    mem[0] = sha3(msg.sender, 8) + 1
                                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1552 + ceil32(return_data.size) + 32]
                                    if idx >= mem[_2727 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_512++
                                    mem[0] = sha3(msg.sender, 8) + 2
                                    stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2727 + ceil32(return_data.size) + 32]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if userInfo[msg.sender].field_768 > !arg1:
                                    revert with 0, 17
                                userInfo[msg.sender].field_768 += arg1
                                if uint256(poolInfo.field_256) > !arg1:
                                    revert with 0, 17
                                uint256(poolInfo.field_256) += arg1
                        else:
                            if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 and sub_c2a0fb04 > -1 / (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024:
                                revert with 0, 17
                            if not stor13:
                                revert with 0, 18
                            if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 > !((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13):
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 100] = msg.sender
                            mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 + ((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13)
                            require ext_code.size(address(rewardTokenAddress))
                            call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 + ((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13)
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
                                _351 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                _377 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                    revert with 0, 65
                                if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                require return_data.size >= _351 + (32 * _377) + 32
                                mem[(4 * ceil32(return_data.size)) + 128 len 32 * _377] = mem[(2 * ceil32(return_data.size)) + _351 + 128 len 32 * _377]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_1792))
                                staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1553 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1578 = mem[_1553]
                                require mem[_1553] <= test266151307()
                                require _1553 + mem[_1553] + 31 < _1553 + return_data.size
                                _1603 = mem[_1553 + mem[_1553]]
                                if mem[_1553 + mem[_1553]] > test266151307():
                                    revert with 0, 65
                                if _1553 + ceil32(return_data.size) + (32 * mem[_1553 + mem[_1553]]) + 32 > test266151307() or (32 * mem[_1553 + mem[_1553]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _1553 + ceil32(return_data.size) + (32 * mem[_1553 + mem[_1553]]) + 32
                                mem[_1553 + ceil32(return_data.size)] = _1603
                                require return_data.size >= _1578 + (32 * _1603) + 32
                                mem[_1553 + ceil32(return_data.size) + 32 len 32 * _1603] = mem[_1553 + _1578 + 32 len 32 * _1603]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_2048))
                                staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2728 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2753 = mem[_2728]
                                require mem[_2728] <= test266151307()
                                require _2728 + mem[_2728] + 31 < _2728 + return_data.size
                                _2778 = mem[_2728 + mem[_2728]]
                                if mem[_2728 + mem[_2728]] > test266151307():
                                    revert with 0, 65
                                if _2728 + ceil32(return_data.size) + (32 * mem[_2728 + mem[_2728]]) + 32 > test266151307() or (32 * mem[_2728 + mem[_2728]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _2728 + ceil32(return_data.size) + (32 * mem[_2728 + mem[_2728]]) + 32
                                mem[_2728 + ceil32(return_data.size)] = _2778
                                require return_data.size >= _2753 + (32 * _2778) + 32
                                mem[_2728 + ceil32(return_data.size) + 32 len 32 * _2778] = mem[_2728 + _2753 + 32 len 32 * _2778]
                                if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _1603 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _2778 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                idx = 0
                                while idx < arg1:
                                    if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    _4522 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4522
                                    require ext_code.size(address(poolInfo.field_1536))
                                    call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4522
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_1553 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _4622 = mem[(32 * idx) + _1553 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4622
                                    require ext_code.size(address(poolInfo.field_1792))
                                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4622
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_2728 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _4722 = mem[(32 * idx) + _2728 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4722
                                    require ext_code.size(address(poolInfo.field_2048))
                                    call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4722
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_0++
                                    mem[0] = sha3(msg.sender, 8)
                                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                    if idx >= mem[_1553 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_256++
                                    mem[0] = sha3(msg.sender, 8) + 1
                                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1553 + ceil32(return_data.size) + 32]
                                    if idx >= mem[_2728 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_512++
                                    mem[0] = sha3(msg.sender, 8) + 2
                                    stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2728 + ceil32(return_data.size) + 32]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if userInfo[msg.sender].field_768 > !arg1:
                                    revert with 0, 17
                                userInfo[msg.sender].field_768 += arg1
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
                if not userInfo[msg.sender].field_768:
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
                        _110 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                        require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                        require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                        _122 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                        if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                        mem[ceil32(return_data.size) + 96] = _122
                        require return_data.size >= _110 + (32 * _122) + 32
                        mem[ceil32(return_data.size) + 128 len 32 * _122] = mem[_110 + 128 len 32 * _122]
                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(address(poolInfo.field_1792))
                        staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                gas gas_remaining wei
                               args uint256(poolInfo.field_1024), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1544 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1569 = mem[_1544]
                        require mem[_1544] <= test266151307()
                        require _1544 + mem[_1544] + 31 < _1544 + return_data.size
                        _1594 = mem[_1544 + mem[_1544]]
                        if mem[_1544 + mem[_1544]] > test266151307():
                            revert with 0, 65
                        if _1544 + ceil32(return_data.size) + (32 * mem[_1544 + mem[_1544]]) + 32 > test266151307() or (32 * mem[_1544 + mem[_1544]]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = _1544 + ceil32(return_data.size) + (32 * mem[_1544 + mem[_1544]]) + 32
                        mem[_1544 + ceil32(return_data.size)] = _1594
                        require return_data.size >= _1569 + (32 * _1594) + 32
                        mem[_1544 + ceil32(return_data.size) + 32 len 32 * _1594] = mem[_1544 + _1569 + 32 len 32 * _1594]
                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(address(poolInfo.field_2048))
                        staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                gas gas_remaining wei
                               args uint256(poolInfo.field_1024), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2719 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2744 = mem[_2719]
                        require mem[_2719] <= test266151307()
                        require _2719 + mem[_2719] + 31 < _2719 + return_data.size
                        _2769 = mem[_2719 + mem[_2719]]
                        if mem[_2719 + mem[_2719]] > test266151307():
                            revert with 0, 65
                        if _2719 + ceil32(return_data.size) + (32 * mem[_2719 + mem[_2719]]) + 32 > test266151307() or (32 * mem[_2719 + mem[_2719]]) + 32 < 0:
                            revert with 0, 65
                        mem[64] = _2719 + ceil32(return_data.size) + (32 * mem[_2719 + mem[_2719]]) + 32
                        mem[_2719 + ceil32(return_data.size)] = _2769
                        require return_data.size >= _2744 + (32 * _2769) + 32
                        mem[_2719 + ceil32(return_data.size) + 32 len 32 * _2769] = mem[_2719 + _2744 + 32 len 32 * _2769]
                        if _122 < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        if _1594 < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        if _2769 < arg1:
                            revert with 0, 'deposit: Not enough NFTs'
                        idx = 0
                        while idx < arg1:
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _4504 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _4504
                            require ext_code.size(address(poolInfo.field_1536))
                            call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _4504
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_1544 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _4604 = mem[(32 * idx) + _1544 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _4604
                            require ext_code.size(address(poolInfo.field_1792))
                            call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _4604
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_2719 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _4704 = mem[(32 * idx) + _2719 + ceil32(return_data.size) + 32]
                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = _4704
                            require ext_code.size(address(poolInfo.field_2048))
                            call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), _4704
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            userInfo[msg.sender].field_0++
                            mem[0] = sha3(msg.sender, 8)
                            userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            if idx >= mem[_1544 + ceil32(return_data.size)]:
                                revert with 0, 50
                            userInfo[msg.sender].field_256++
                            mem[0] = sha3(msg.sender, 8) + 1
                            stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1544 + ceil32(return_data.size) + 32]
                            if idx >= mem[_2719 + ceil32(return_data.size)]:
                                revert with 0, 50
                            userInfo[msg.sender].field_512++
                            mem[0] = sha3(msg.sender, 8) + 2
                            stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2719 + ceil32(return_data.size) + 32]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if userInfo[msg.sender].field_768 > !arg1:
                            revert with 0, 17
                        userInfo[msg.sender].field_768 += arg1
                        if uint256(poolInfo.field_256) > !arg1:
                            revert with 0, 17
                        uint256(poolInfo.field_256) += arg1
                else:
                    if userInfo[msg.sender].field_768 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_768:
                        revert with 0, 17
                    if userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_1024:
                        revert with 0, 17
                    if not (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024:
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
                            _282 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                            require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                            require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                            _299 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                revert with 0, 65
                            if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                            mem[ceil32(return_data.size) + 96] = _299
                            require return_data.size >= _282 + (32 * _299) + 32
                            mem[ceil32(return_data.size) + 128 len 32 * _299] = mem[_282 + 128 len 32 * _299]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_1792))
                            staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1545 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1570 = mem[_1545]
                            require mem[_1545] <= test266151307()
                            require _1545 + mem[_1545] + 31 < _1545 + return_data.size
                            _1595 = mem[_1545 + mem[_1545]]
                            if mem[_1545 + mem[_1545]] > test266151307():
                                revert with 0, 65
                            if _1545 + ceil32(return_data.size) + (32 * mem[_1545 + mem[_1545]]) + 32 > test266151307() or (32 * mem[_1545 + mem[_1545]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _1545 + ceil32(return_data.size) + (32 * mem[_1545 + mem[_1545]]) + 32
                            mem[_1545 + ceil32(return_data.size)] = _1595
                            require return_data.size >= _1570 + (32 * _1595) + 32
                            mem[_1545 + ceil32(return_data.size) + 32 len 32 * _1595] = mem[_1545 + _1570 + 32 len 32 * _1595]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_2048))
                            staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2720 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2745 = mem[_2720]
                            require mem[_2720] <= test266151307()
                            require _2720 + mem[_2720] + 31 < _2720 + return_data.size
                            _2770 = mem[_2720 + mem[_2720]]
                            if mem[_2720 + mem[_2720]] > test266151307():
                                revert with 0, 65
                            if _2720 + ceil32(return_data.size) + (32 * mem[_2720 + mem[_2720]]) + 32 > test266151307() or (32 * mem[_2720 + mem[_2720]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _2720 + ceil32(return_data.size) + (32 * mem[_2720 + mem[_2720]]) + 32
                            mem[_2720 + ceil32(return_data.size)] = _2770
                            require return_data.size >= _2745 + (32 * _2770) + 32
                            mem[_2720 + ceil32(return_data.size) + 32 len 32 * _2770] = mem[_2720 + _2745 + 32 len 32 * _2770]
                            if _299 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _1595 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _2770 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            idx = 0
                            while idx < arg1:
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _4506 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4506
                                require ext_code.size(address(poolInfo.field_1536))
                                call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4506
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_1545 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _4606 = mem[(32 * idx) + _1545 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4606
                                require ext_code.size(address(poolInfo.field_1792))
                                call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4606
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_2720 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _4706 = mem[(32 * idx) + _2720 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4706
                                require ext_code.size(address(poolInfo.field_2048))
                                call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4706
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_0++
                                mem[0] = sha3(msg.sender, 8)
                                userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                if idx >= mem[_1545 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_256++
                                mem[0] = sha3(msg.sender, 8) + 1
                                stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1545 + ceil32(return_data.size) + 32]
                                if idx >= mem[_2720 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_512++
                                mem[0] = sha3(msg.sender, 8) + 2
                                stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2720 + ceil32(return_data.size) + 32]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if userInfo[msg.sender].field_768 > !arg1:
                                revert with 0, 17
                            userInfo[msg.sender].field_768 += arg1
                            if uint256(poolInfo.field_256) > !arg1:
                                revert with 0, 17
                            uint256(poolInfo.field_256) += arg1
                    else:
                        mem[100] = msg.sender
                        if not sub_c2a0fb04:
                            mem[132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
                            require ext_code.size(address(rewardTokenAddress))
                            call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
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
                                _399 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < ceil32(return_data.size) + return_data.size + 96
                                _422 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                require return_data.size >= _399 + (32 * _422) + 32
                                mem[(2 * ceil32(return_data.size)) + 128 len 32 * _422] = mem[ceil32(return_data.size) + _399 + 128 len 32 * _422]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_1792))
                                staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1546 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1571 = mem[_1546]
                                require mem[_1546] <= test266151307()
                                require _1546 + mem[_1546] + 31 < _1546 + return_data.size
                                _1596 = mem[_1546 + mem[_1546]]
                                if mem[_1546 + mem[_1546]] > test266151307():
                                    revert with 0, 65
                                if _1546 + ceil32(return_data.size) + (32 * mem[_1546 + mem[_1546]]) + 32 > test266151307() or (32 * mem[_1546 + mem[_1546]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _1546 + ceil32(return_data.size) + (32 * mem[_1546 + mem[_1546]]) + 32
                                mem[_1546 + ceil32(return_data.size)] = _1596
                                require return_data.size >= _1571 + (32 * _1596) + 32
                                mem[_1546 + ceil32(return_data.size) + 32 len 32 * _1596] = mem[_1546 + _1571 + 32 len 32 * _1596]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_2048))
                                staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2721 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2746 = mem[_2721]
                                require mem[_2721] <= test266151307()
                                require _2721 + mem[_2721] + 31 < _2721 + return_data.size
                                _2771 = mem[_2721 + mem[_2721]]
                                if mem[_2721 + mem[_2721]] > test266151307():
                                    revert with 0, 65
                                if _2721 + ceil32(return_data.size) + (32 * mem[_2721 + mem[_2721]]) + 32 > test266151307() or (32 * mem[_2721 + mem[_2721]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _2721 + ceil32(return_data.size) + (32 * mem[_2721 + mem[_2721]]) + 32
                                mem[_2721 + ceil32(return_data.size)] = _2771
                                require return_data.size >= _2746 + (32 * _2771) + 32
                                mem[_2721 + ceil32(return_data.size) + 32 len 32 * _2771] = mem[_2721 + _2746 + 32 len 32 * _2771]
                                if mem[(2 * ceil32(return_data.size)) + 96] < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _1596 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _2771 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                idx = 0
                                while idx < arg1:
                                    if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    _4508 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4508
                                    require ext_code.size(address(poolInfo.field_1536))
                                    call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4508
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_1546 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _4608 = mem[(32 * idx) + _1546 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4608
                                    require ext_code.size(address(poolInfo.field_1792))
                                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4608
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_2721 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _4708 = mem[(32 * idx) + _2721 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4708
                                    require ext_code.size(address(poolInfo.field_2048))
                                    call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4708
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_0++
                                    mem[0] = sha3(msg.sender, 8)
                                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                    if idx >= mem[_1546 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_256++
                                    mem[0] = sha3(msg.sender, 8) + 1
                                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1546 + ceil32(return_data.size) + 32]
                                    if idx >= mem[_2721 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_512++
                                    mem[0] = sha3(msg.sender, 8) + 2
                                    stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2721 + ceil32(return_data.size) + 32]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if userInfo[msg.sender].field_768 > !arg1:
                                    revert with 0, 17
                                userInfo[msg.sender].field_768 += arg1
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
                                mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
                                require ext_code.size(address(rewardTokenAddress))
                                call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
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
                                    _530 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                    _556 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    require return_data.size >= _530 + (32 * _556) + 32
                                    mem[(4 * ceil32(return_data.size)) + 128 len 32 * _556] = mem[(2 * ceil32(return_data.size)) + _530 + 128 len 32 * _556]
                                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(poolInfo.field_1792))
                                    staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1547 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1572 = mem[_1547]
                                    require mem[_1547] <= test266151307()
                                    require _1547 + mem[_1547] + 31 < _1547 + return_data.size
                                    _1597 = mem[_1547 + mem[_1547]]
                                    if mem[_1547 + mem[_1547]] > test266151307():
                                        revert with 0, 65
                                    if _1547 + ceil32(return_data.size) + (32 * mem[_1547 + mem[_1547]]) + 32 > test266151307() or (32 * mem[_1547 + mem[_1547]]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = _1547 + ceil32(return_data.size) + (32 * mem[_1547 + mem[_1547]]) + 32
                                    mem[_1547 + ceil32(return_data.size)] = _1597
                                    require return_data.size >= _1572 + (32 * _1597) + 32
                                    mem[_1547 + ceil32(return_data.size) + 32 len 32 * _1597] = mem[_1547 + _1572 + 32 len 32 * _1597]
                                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(poolInfo.field_2048))
                                    staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2722 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2747 = mem[_2722]
                                    require mem[_2722] <= test266151307()
                                    require _2722 + mem[_2722] + 31 < _2722 + return_data.size
                                    _2772 = mem[_2722 + mem[_2722]]
                                    if mem[_2722 + mem[_2722]] > test266151307():
                                        revert with 0, 65
                                    if _2722 + ceil32(return_data.size) + (32 * mem[_2722 + mem[_2722]]) + 32 > test266151307() or (32 * mem[_2722 + mem[_2722]]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = _2722 + ceil32(return_data.size) + (32 * mem[_2722 + mem[_2722]]) + 32
                                    mem[_2722 + ceil32(return_data.size)] = _2772
                                    require return_data.size >= _2747 + (32 * _2772) + 32
                                    mem[_2722 + ceil32(return_data.size) + 32 len 32 * _2772] = mem[_2722 + _2747 + 32 len 32 * _2772]
                                    if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    if _1597 < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    if _2772 < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    idx = 0
                                    while idx < arg1:
                                        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        _4510 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _4510
                                        require ext_code.size(address(poolInfo.field_1536))
                                        call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _4510
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_1547 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _4610 = mem[(32 * idx) + _1547 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _4610
                                        require ext_code.size(address(poolInfo.field_1792))
                                        call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _4610
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_2722 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _4710 = mem[(32 * idx) + _2722 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _4710
                                        require ext_code.size(address(poolInfo.field_2048))
                                        call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _4710
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_0++
                                        mem[0] = sha3(msg.sender, 8)
                                        userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                        if idx >= mem[_1547 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_256++
                                        mem[0] = sha3(msg.sender, 8) + 1
                                        stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1547 + ceil32(return_data.size) + 32]
                                        if idx >= mem[_2722 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_512++
                                        mem[0] = sha3(msg.sender, 8) + 2
                                        stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2722 + ceil32(return_data.size) + 32]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if userInfo[msg.sender].field_768 > !arg1:
                                        revert with 0, 17
                                    userInfo[msg.sender].field_768 += arg1
                                    if uint256(poolInfo.field_256) > !arg1:
                                        revert with 0, 17
                                    uint256(poolInfo.field_256) += arg1
                            else:
                                if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 and sub_c2a0fb04 > -1 / (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024:
                                    revert with 0, 17
                                if not stor13:
                                    revert with 0, 18
                                if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 > !((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13):
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 100] = msg.sender
                                mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 + ((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13)
                                require ext_code.size(address(rewardTokenAddress))
                                call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 + ((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13)
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
                                    _791 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                    _821 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                        revert with 0, 65
                                    if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    require return_data.size >= _791 + (32 * _821) + 32
                                    mem[(4 * ceil32(return_data.size)) + 128 len 32 * _821] = mem[(2 * ceil32(return_data.size)) + _791 + 128 len 32 * _821]
                                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(poolInfo.field_1792))
                                    staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1548 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1573 = mem[_1548]
                                    require mem[_1548] <= test266151307()
                                    require _1548 + mem[_1548] + 31 < _1548 + return_data.size
                                    _1598 = mem[_1548 + mem[_1548]]
                                    if mem[_1548 + mem[_1548]] > test266151307():
                                        revert with 0, 65
                                    if _1548 + ceil32(return_data.size) + (32 * mem[_1548 + mem[_1548]]) + 32 > test266151307() or (32 * mem[_1548 + mem[_1548]]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = _1548 + ceil32(return_data.size) + (32 * mem[_1548 + mem[_1548]]) + 32
                                    mem[_1548 + ceil32(return_data.size)] = _1598
                                    require return_data.size >= _1573 + (32 * _1598) + 32
                                    mem[_1548 + ceil32(return_data.size) + 32 len 32 * _1598] = mem[_1548 + _1573 + 32 len 32 * _1598]
                                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(poolInfo.field_2048))
                                    staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2723 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2748 = mem[_2723]
                                    require mem[_2723] <= test266151307()
                                    require _2723 + mem[_2723] + 31 < _2723 + return_data.size
                                    _2773 = mem[_2723 + mem[_2723]]
                                    if mem[_2723 + mem[_2723]] > test266151307():
                                        revert with 0, 65
                                    if _2723 + ceil32(return_data.size) + (32 * mem[_2723 + mem[_2723]]) + 32 > test266151307() or (32 * mem[_2723 + mem[_2723]]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = _2723 + ceil32(return_data.size) + (32 * mem[_2723 + mem[_2723]]) + 32
                                    mem[_2723 + ceil32(return_data.size)] = _2773
                                    require return_data.size >= _2748 + (32 * _2773) + 32
                                    mem[_2723 + ceil32(return_data.size) + 32 len 32 * _2773] = mem[_2723 + _2748 + 32 len 32 * _2773]
                                    if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    if _1598 < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    if _2773 < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    idx = 0
                                    while idx < arg1:
                                        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        _4512 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _4512
                                        require ext_code.size(address(poolInfo.field_1536))
                                        call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _4512
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_1548 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _4612 = mem[(32 * idx) + _1548 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _4612
                                        require ext_code.size(address(poolInfo.field_1792))
                                        call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _4612
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_2723 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _4712 = mem[(32 * idx) + _2723 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _4712
                                        require ext_code.size(address(poolInfo.field_2048))
                                        call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _4712
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_0++
                                        mem[0] = sha3(msg.sender, 8)
                                        userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                        if idx >= mem[_1548 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_256++
                                        mem[0] = sha3(msg.sender, 8) + 1
                                        stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1548 + ceil32(return_data.size) + 32]
                                        if idx >= mem[_2723 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_512++
                                        mem[0] = sha3(msg.sender, 8) + 2
                                        stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2723 + ceil32(return_data.size) + 32]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if userInfo[msg.sender].field_768 > !arg1:
                                        revert with 0, 17
                                    userInfo[msg.sender].field_768 += arg1
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
                    if not userInfo[msg.sender].field_768:
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
                            _88 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                            require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                            require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                            _99 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                revert with 0, 65
                            if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                            mem[ceil32(return_data.size) + 96] = _99
                            require return_data.size >= _88 + (32 * _99) + 32
                            mem[ceil32(return_data.size) + 128 len 32 * _99] = mem[_88 + 128 len 32 * _99]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_1792))
                            staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1539 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1564 = mem[_1539]
                            require mem[_1539] <= test266151307()
                            require _1539 + mem[_1539] + 31 < _1539 + return_data.size
                            _1589 = mem[_1539 + mem[_1539]]
                            if mem[_1539 + mem[_1539]] > test266151307():
                                revert with 0, 65
                            if _1539 + ceil32(return_data.size) + (32 * mem[_1539 + mem[_1539]]) + 32 > test266151307() or (32 * mem[_1539 + mem[_1539]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _1539 + ceil32(return_data.size) + (32 * mem[_1539 + mem[_1539]]) + 32
                            mem[_1539 + ceil32(return_data.size)] = _1589
                            require return_data.size >= _1564 + (32 * _1589) + 32
                            mem[_1539 + ceil32(return_data.size) + 32 len 32 * _1589] = mem[_1539 + _1564 + 32 len 32 * _1589]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_2048))
                            staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2714 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2739 = mem[_2714]
                            require mem[_2714] <= test266151307()
                            require _2714 + mem[_2714] + 31 < _2714 + return_data.size
                            _2764 = mem[_2714 + mem[_2714]]
                            if mem[_2714 + mem[_2714]] > test266151307():
                                revert with 0, 65
                            if _2714 + ceil32(return_data.size) + (32 * mem[_2714 + mem[_2714]]) + 32 > test266151307() or (32 * mem[_2714 + mem[_2714]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _2714 + ceil32(return_data.size) + (32 * mem[_2714 + mem[_2714]]) + 32
                            mem[_2714 + ceil32(return_data.size)] = _2764
                            require return_data.size >= _2739 + (32 * _2764) + 32
                            mem[_2714 + ceil32(return_data.size) + 32 len 32 * _2764] = mem[_2714 + _2739 + 32 len 32 * _2764]
                            if _99 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _1589 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _2764 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            idx = 0
                            while idx < arg1:
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _4494 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4494
                                require ext_code.size(address(poolInfo.field_1536))
                                call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4494
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_1539 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _4594 = mem[(32 * idx) + _1539 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4594
                                require ext_code.size(address(poolInfo.field_1792))
                                call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4594
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_2714 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _4694 = mem[(32 * idx) + _2714 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4694
                                require ext_code.size(address(poolInfo.field_2048))
                                call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4694
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_0++
                                mem[0] = sha3(msg.sender, 8)
                                userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                if idx >= mem[_1539 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_256++
                                mem[0] = sha3(msg.sender, 8) + 1
                                stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1539 + ceil32(return_data.size) + 32]
                                if idx >= mem[_2714 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_512++
                                mem[0] = sha3(msg.sender, 8) + 2
                                stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2714 + ceil32(return_data.size) + 32]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if userInfo[msg.sender].field_768 > !arg1:
                                revert with 0, 17
                            userInfo[msg.sender].field_768 += arg1
                            if uint256(poolInfo.field_256) > !arg1:
                                revert with 0, 17
                            uint256(poolInfo.field_256) += arg1
                    else:
                        if userInfo[msg.sender].field_768 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_768:
                            revert with 0, 17
                        if userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_1024:
                            revert with 0, 17
                        if not (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024:
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
                                _229 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                                require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                                _253 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                    revert with 0, 65
                                if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                mem[ceil32(return_data.size) + 96] = _253
                                require return_data.size >= _229 + (32 * _253) + 32
                                mem[ceil32(return_data.size) + 128 len 32 * _253] = mem[_229 + 128 len 32 * _253]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_1792))
                                staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1540 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1565 = mem[_1540]
                                require mem[_1540] <= test266151307()
                                require _1540 + mem[_1540] + 31 < _1540 + return_data.size
                                _1590 = mem[_1540 + mem[_1540]]
                                if mem[_1540 + mem[_1540]] > test266151307():
                                    revert with 0, 65
                                if _1540 + ceil32(return_data.size) + (32 * mem[_1540 + mem[_1540]]) + 32 > test266151307() or (32 * mem[_1540 + mem[_1540]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _1540 + ceil32(return_data.size) + (32 * mem[_1540 + mem[_1540]]) + 32
                                mem[_1540 + ceil32(return_data.size)] = _1590
                                require return_data.size >= _1565 + (32 * _1590) + 32
                                mem[_1540 + ceil32(return_data.size) + 32 len 32 * _1590] = mem[_1540 + _1565 + 32 len 32 * _1590]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_2048))
                                staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2715 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2740 = mem[_2715]
                                require mem[_2715] <= test266151307()
                                require _2715 + mem[_2715] + 31 < _2715 + return_data.size
                                _2765 = mem[_2715 + mem[_2715]]
                                if mem[_2715 + mem[_2715]] > test266151307():
                                    revert with 0, 65
                                if _2715 + ceil32(return_data.size) + (32 * mem[_2715 + mem[_2715]]) + 32 > test266151307() or (32 * mem[_2715 + mem[_2715]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _2715 + ceil32(return_data.size) + (32 * mem[_2715 + mem[_2715]]) + 32
                                mem[_2715 + ceil32(return_data.size)] = _2765
                                require return_data.size >= _2740 + (32 * _2765) + 32
                                mem[_2715 + ceil32(return_data.size) + 32 len 32 * _2765] = mem[_2715 + _2740 + 32 len 32 * _2765]
                                if _253 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _1590 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _2765 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                idx = 0
                                while idx < arg1:
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _4496 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4496
                                    require ext_code.size(address(poolInfo.field_1536))
                                    call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4496
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_1540 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _4596 = mem[(32 * idx) + _1540 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4596
                                    require ext_code.size(address(poolInfo.field_1792))
                                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4596
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_2715 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _4696 = mem[(32 * idx) + _2715 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4696
                                    require ext_code.size(address(poolInfo.field_2048))
                                    call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4696
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_0++
                                    mem[0] = sha3(msg.sender, 8)
                                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    if idx >= mem[_1540 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_256++
                                    mem[0] = sha3(msg.sender, 8) + 1
                                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1540 + ceil32(return_data.size) + 32]
                                    if idx >= mem[_2715 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_512++
                                    mem[0] = sha3(msg.sender, 8) + 2
                                    stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2715 + ceil32(return_data.size) + 32]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if userInfo[msg.sender].field_768 > !arg1:
                                    revert with 0, 17
                                userInfo[msg.sender].field_768 += arg1
                                if uint256(poolInfo.field_256) > !arg1:
                                    revert with 0, 17
                                uint256(poolInfo.field_256) += arg1
                        else:
                            mem[100] = msg.sender
                            if not sub_c2a0fb04:
                                mem[132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
                                require ext_code.size(address(rewardTokenAddress))
                                call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
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
                                    _345 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < ceil32(return_data.size) + return_data.size + 96
                                    _370 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    require return_data.size >= _345 + (32 * _370) + 32
                                    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _370] = mem[ceil32(return_data.size) + _345 + 128 len 32 * _370]
                                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(poolInfo.field_1792))
                                    staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1541 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1566 = mem[_1541]
                                    require mem[_1541] <= test266151307()
                                    require _1541 + mem[_1541] + 31 < _1541 + return_data.size
                                    _1591 = mem[_1541 + mem[_1541]]
                                    if mem[_1541 + mem[_1541]] > test266151307():
                                        revert with 0, 65
                                    if _1541 + ceil32(return_data.size) + (32 * mem[_1541 + mem[_1541]]) + 32 > test266151307() or (32 * mem[_1541 + mem[_1541]]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = _1541 + ceil32(return_data.size) + (32 * mem[_1541 + mem[_1541]]) + 32
                                    mem[_1541 + ceil32(return_data.size)] = _1591
                                    require return_data.size >= _1566 + (32 * _1591) + 32
                                    mem[_1541 + ceil32(return_data.size) + 32 len 32 * _1591] = mem[_1541 + _1566 + 32 len 32 * _1591]
                                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(poolInfo.field_2048))
                                    staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2716 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2741 = mem[_2716]
                                    require mem[_2716] <= test266151307()
                                    require _2716 + mem[_2716] + 31 < _2716 + return_data.size
                                    _2766 = mem[_2716 + mem[_2716]]
                                    if mem[_2716 + mem[_2716]] > test266151307():
                                        revert with 0, 65
                                    if _2716 + ceil32(return_data.size) + (32 * mem[_2716 + mem[_2716]]) + 32 > test266151307() or (32 * mem[_2716 + mem[_2716]]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = _2716 + ceil32(return_data.size) + (32 * mem[_2716 + mem[_2716]]) + 32
                                    mem[_2716 + ceil32(return_data.size)] = _2766
                                    require return_data.size >= _2741 + (32 * _2766) + 32
                                    mem[_2716 + ceil32(return_data.size) + 32 len 32 * _2766] = mem[_2716 + _2741 + 32 len 32 * _2766]
                                    if mem[(2 * ceil32(return_data.size)) + 96] < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    if _1591 < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    if _2766 < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    idx = 0
                                    while idx < arg1:
                                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        _4498 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _4498
                                        require ext_code.size(address(poolInfo.field_1536))
                                        call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _4498
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_1541 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _4598 = mem[(32 * idx) + _1541 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _4598
                                        require ext_code.size(address(poolInfo.field_1792))
                                        call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _4598
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_2716 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _4698 = mem[(32 * idx) + _2716 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _4698
                                        require ext_code.size(address(poolInfo.field_2048))
                                        call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _4698
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_0++
                                        mem[0] = sha3(msg.sender, 8)
                                        userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                        if idx >= mem[_1541 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_256++
                                        mem[0] = sha3(msg.sender, 8) + 1
                                        stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1541 + ceil32(return_data.size) + 32]
                                        if idx >= mem[_2716 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_512++
                                        mem[0] = sha3(msg.sender, 8) + 2
                                        stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2716 + ceil32(return_data.size) + 32]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if userInfo[msg.sender].field_768 > !arg1:
                                        revert with 0, 17
                                    userInfo[msg.sender].field_768 += arg1
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
                                    mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
                                    require ext_code.size(address(rewardTokenAddress))
                                    call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
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
                                        _456 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                        _493 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                            revert with 0, 65
                                        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        require return_data.size >= _456 + (32 * _493) + 32
                                        mem[(4 * ceil32(return_data.size)) + 128 len 32 * _493] = mem[(2 * ceil32(return_data.size)) + _456 + 128 len 32 * _493]
                                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(poolInfo.field_1792))
                                        staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1542 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1567 = mem[_1542]
                                        require mem[_1542] <= test266151307()
                                        require _1542 + mem[_1542] + 31 < _1542 + return_data.size
                                        _1592 = mem[_1542 + mem[_1542]]
                                        if mem[_1542 + mem[_1542]] > test266151307():
                                            revert with 0, 65
                                        if _1542 + ceil32(return_data.size) + (32 * mem[_1542 + mem[_1542]]) + 32 > test266151307() or (32 * mem[_1542 + mem[_1542]]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = _1542 + ceil32(return_data.size) + (32 * mem[_1542 + mem[_1542]]) + 32
                                        mem[_1542 + ceil32(return_data.size)] = _1592
                                        require return_data.size >= _1567 + (32 * _1592) + 32
                                        mem[_1542 + ceil32(return_data.size) + 32 len 32 * _1592] = mem[_1542 + _1567 + 32 len 32 * _1592]
                                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(poolInfo.field_2048))
                                        staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2717 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2742 = mem[_2717]
                                        require mem[_2717] <= test266151307()
                                        require _2717 + mem[_2717] + 31 < _2717 + return_data.size
                                        _2767 = mem[_2717 + mem[_2717]]
                                        if mem[_2717 + mem[_2717]] > test266151307():
                                            revert with 0, 65
                                        if _2717 + ceil32(return_data.size) + (32 * mem[_2717 + mem[_2717]]) + 32 > test266151307() or (32 * mem[_2717 + mem[_2717]]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = _2717 + ceil32(return_data.size) + (32 * mem[_2717 + mem[_2717]]) + 32
                                        mem[_2717 + ceil32(return_data.size)] = _2767
                                        require return_data.size >= _2742 + (32 * _2767) + 32
                                        mem[_2717 + ceil32(return_data.size) + 32 len 32 * _2767] = mem[_2717 + _2742 + 32 len 32 * _2767]
                                        if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        if _1592 < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        if _2767 < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        idx = 0
                                        while idx < arg1:
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            _4500 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _4500
                                            require ext_code.size(address(poolInfo.field_1536))
                                            call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _4500
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_1542 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _4600 = mem[(32 * idx) + _1542 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _4600
                                            require ext_code.size(address(poolInfo.field_1792))
                                            call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _4600
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_2717 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _4700 = mem[(32 * idx) + _2717 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _4700
                                            require ext_code.size(address(poolInfo.field_2048))
                                            call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _4700
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_0++
                                            mem[0] = sha3(msg.sender, 8)
                                            userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            if idx >= mem[_1542 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_256++
                                            mem[0] = sha3(msg.sender, 8) + 1
                                            stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1542 + ceil32(return_data.size) + 32]
                                            if idx >= mem[_2717 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_512++
                                            mem[0] = sha3(msg.sender, 8) + 2
                                            stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2717 + ceil32(return_data.size) + 32]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if userInfo[msg.sender].field_768 > !arg1:
                                            revert with 0, 17
                                        userInfo[msg.sender].field_768 += arg1
                                        if uint256(poolInfo.field_256) > !arg1:
                                            revert with 0, 17
                                        uint256(poolInfo.field_256) += arg1
                                else:
                                    if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 and sub_c2a0fb04 > -1 / (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024:
                                        revert with 0, 17
                                    if not stor13:
                                        revert with 0, 18
                                    if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 > !((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13):
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 100] = msg.sender
                                    mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 + ((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13)
                                    require ext_code.size(address(rewardTokenAddress))
                                    call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 + ((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13)
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
                                        _709 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                        _751 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                            revert with 0, 65
                                        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        require return_data.size >= _709 + (32 * _751) + 32
                                        mem[(4 * ceil32(return_data.size)) + 128 len 32 * _751] = mem[(2 * ceil32(return_data.size)) + _709 + 128 len 32 * _751]
                                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(poolInfo.field_1792))
                                        staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1543 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1568 = mem[_1543]
                                        require mem[_1543] <= test266151307()
                                        require _1543 + mem[_1543] + 31 < _1543 + return_data.size
                                        _1593 = mem[_1543 + mem[_1543]]
                                        if mem[_1543 + mem[_1543]] > test266151307():
                                            revert with 0, 65
                                        if _1543 + ceil32(return_data.size) + (32 * mem[_1543 + mem[_1543]]) + 32 > test266151307() or (32 * mem[_1543 + mem[_1543]]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = _1543 + ceil32(return_data.size) + (32 * mem[_1543 + mem[_1543]]) + 32
                                        mem[_1543 + ceil32(return_data.size)] = _1593
                                        require return_data.size >= _1568 + (32 * _1593) + 32
                                        mem[_1543 + ceil32(return_data.size) + 32 len 32 * _1593] = mem[_1543 + _1568 + 32 len 32 * _1593]
                                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(poolInfo.field_2048))
                                        staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2718 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2743 = mem[_2718]
                                        require mem[_2718] <= test266151307()
                                        require _2718 + mem[_2718] + 31 < _2718 + return_data.size
                                        _2768 = mem[_2718 + mem[_2718]]
                                        if mem[_2718 + mem[_2718]] > test266151307():
                                            revert with 0, 65
                                        if _2718 + ceil32(return_data.size) + (32 * mem[_2718 + mem[_2718]]) + 32 > test266151307() or (32 * mem[_2718 + mem[_2718]]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = _2718 + ceil32(return_data.size) + (32 * mem[_2718 + mem[_2718]]) + 32
                                        mem[_2718 + ceil32(return_data.size)] = _2768
                                        require return_data.size >= _2743 + (32 * _2768) + 32
                                        mem[_2718 + ceil32(return_data.size) + 32 len 32 * _2768] = mem[_2718 + _2743 + 32 len 32 * _2768]
                                        if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        if _1593 < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        if _2768 < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        idx = 0
                                        while idx < arg1:
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            _4502 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _4502
                                            require ext_code.size(address(poolInfo.field_1536))
                                            call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _4502
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_1543 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _4602 = mem[(32 * idx) + _1543 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _4602
                                            require ext_code.size(address(poolInfo.field_1792))
                                            call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _4602
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_2718 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _4702 = mem[(32 * idx) + _2718 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _4702
                                            require ext_code.size(address(poolInfo.field_2048))
                                            call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _4702
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_0++
                                            mem[0] = sha3(msg.sender, 8)
                                            userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            if idx >= mem[_1543 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_256++
                                            mem[0] = sha3(msg.sender, 8) + 1
                                            stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1543 + ceil32(return_data.size) + 32]
                                            if idx >= mem[_2718 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_512++
                                            mem[0] = sha3(msg.sender, 8) + 2
                                            stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2718 + ceil32(return_data.size) + 32]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if userInfo[msg.sender].field_768 > !arg1:
                                            revert with 0, 17
                                        userInfo[msg.sender].field_768 += arg1
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
                    if not userInfo[msg.sender].field_768:
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
                            _115 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                            require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                            require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                            _129 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                            if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                revert with 0, 65
                            if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                            mem[ceil32(return_data.size) + 96] = _129
                            require return_data.size >= _115 + (32 * _129) + 32
                            mem[ceil32(return_data.size) + 128 len 32 * _129] = mem[_115 + 128 len 32 * _129]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_1792))
                            staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1534 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1559 = mem[_1534]
                            require mem[_1534] <= test266151307()
                            require _1534 + mem[_1534] + 31 < _1534 + return_data.size
                            _1584 = mem[_1534 + mem[_1534]]
                            if mem[_1534 + mem[_1534]] > test266151307():
                                revert with 0, 65
                            if _1534 + ceil32(return_data.size) + (32 * mem[_1534 + mem[_1534]]) + 32 > test266151307() or (32 * mem[_1534 + mem[_1534]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _1534 + ceil32(return_data.size) + (32 * mem[_1534 + mem[_1534]]) + 32
                            mem[_1534 + ceil32(return_data.size)] = _1584
                            require return_data.size >= _1559 + (32 * _1584) + 32
                            mem[_1534 + ceil32(return_data.size) + 32 len 32 * _1584] = mem[_1534 + _1559 + 32 len 32 * _1584]
                            mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                            mem[mem[64] + 36] = msg.sender
                            require ext_code.size(address(poolInfo.field_2048))
                            staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args uint256(poolInfo.field_1024), msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2709 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2734 = mem[_2709]
                            require mem[_2709] <= test266151307()
                            require _2709 + mem[_2709] + 31 < _2709 + return_data.size
                            _2759 = mem[_2709 + mem[_2709]]
                            if mem[_2709 + mem[_2709]] > test266151307():
                                revert with 0, 65
                            if _2709 + ceil32(return_data.size) + (32 * mem[_2709 + mem[_2709]]) + 32 > test266151307() or (32 * mem[_2709 + mem[_2709]]) + 32 < 0:
                                revert with 0, 65
                            mem[64] = _2709 + ceil32(return_data.size) + (32 * mem[_2709 + mem[_2709]]) + 32
                            mem[_2709 + ceil32(return_data.size)] = _2759
                            require return_data.size >= _2734 + (32 * _2759) + 32
                            mem[_2709 + ceil32(return_data.size) + 32 len 32 * _2759] = mem[_2709 + _2734 + 32 len 32 * _2759]
                            if _129 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _1584 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            if _2759 < arg1:
                                revert with 0, 'deposit: Not enough NFTs'
                            idx = 0
                            while idx < arg1:
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _4484 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4484
                                require ext_code.size(address(poolInfo.field_1536))
                                call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4484
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_1534 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _4584 = mem[(32 * idx) + _1534 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4584
                                require ext_code.size(address(poolInfo.field_1792))
                                call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4584
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_2709 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _4684 = mem[(32 * idx) + _2709 + ceil32(return_data.size) + 32]
                                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = this.address
                                mem[mem[64] + 68] = _4684
                                require ext_code.size(address(poolInfo.field_2048))
                                call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), _4684
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_0++
                                mem[0] = sha3(msg.sender, 8)
                                userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                if idx >= mem[_1534 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_256++
                                mem[0] = sha3(msg.sender, 8) + 1
                                stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1534 + ceil32(return_data.size) + 32]
                                if idx >= mem[_2709 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                userInfo[msg.sender].field_512++
                                mem[0] = sha3(msg.sender, 8) + 2
                                stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2709 + ceil32(return_data.size) + 32]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if userInfo[msg.sender].field_768 > !arg1:
                                revert with 0, 17
                            userInfo[msg.sender].field_768 += arg1
                            if uint256(poolInfo.field_256) > !arg1:
                                revert with 0, 17
                            uint256(poolInfo.field_256) += arg1
                    else:
                        if userInfo[msg.sender].field_768 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_768:
                            revert with 0, 17
                        if userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_1024:
                            revert with 0, 17
                        if not (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024:
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
                                _288 = mem[96 len 4], Mask(224, 0, poolInfo.field_1056)
                                require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                require mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < return_data.size + 96
                                _306 = mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                if mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                    revert with 0, 65
                                if ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                mem[ceil32(return_data.size) + 96] = _306
                                require return_data.size >= _288 + (32 * _306) + 32
                                mem[ceil32(return_data.size) + 128 len 32 * _306] = mem[_288 + 128 len 32 * _306]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_1792))
                                staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1535 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1560 = mem[_1535]
                                require mem[_1535] <= test266151307()
                                require _1535 + mem[_1535] + 31 < _1535 + return_data.size
                                _1585 = mem[_1535 + mem[_1535]]
                                if mem[_1535 + mem[_1535]] > test266151307():
                                    revert with 0, 65
                                if _1535 + ceil32(return_data.size) + (32 * mem[_1535 + mem[_1535]]) + 32 > test266151307() or (32 * mem[_1535 + mem[_1535]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _1535 + ceil32(return_data.size) + (32 * mem[_1535 + mem[_1535]]) + 32
                                mem[_1535 + ceil32(return_data.size)] = _1585
                                require return_data.size >= _1560 + (32 * _1585) + 32
                                mem[_1535 + ceil32(return_data.size) + 32 len 32 * _1585] = mem[_1535 + _1560 + 32 len 32 * _1585]
                                mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                mem[mem[64] + 36] = msg.sender
                                require ext_code.size(address(poolInfo.field_2048))
                                staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args uint256(poolInfo.field_1024), msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2710 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2735 = mem[_2710]
                                require mem[_2710] <= test266151307()
                                require _2710 + mem[_2710] + 31 < _2710 + return_data.size
                                _2760 = mem[_2710 + mem[_2710]]
                                if mem[_2710 + mem[_2710]] > test266151307():
                                    revert with 0, 65
                                if _2710 + ceil32(return_data.size) + (32 * mem[_2710 + mem[_2710]]) + 32 > test266151307() or (32 * mem[_2710 + mem[_2710]]) + 32 < 0:
                                    revert with 0, 65
                                mem[64] = _2710 + ceil32(return_data.size) + (32 * mem[_2710 + mem[_2710]]) + 32
                                mem[_2710 + ceil32(return_data.size)] = _2760
                                require return_data.size >= _2735 + (32 * _2760) + 32
                                mem[_2710 + ceil32(return_data.size) + 32 len 32 * _2760] = mem[_2710 + _2735 + 32 len 32 * _2760]
                                if _306 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _1585 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                if _2760 < arg1:
                                    revert with 0, 'deposit: Not enough NFTs'
                                idx = 0
                                while idx < arg1:
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _4486 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4486
                                    require ext_code.size(address(poolInfo.field_1536))
                                    call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4486
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_1535 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _4586 = mem[(32 * idx) + _1535 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4586
                                    require ext_code.size(address(poolInfo.field_1792))
                                    call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4586
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_2710 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    _4686 = mem[(32 * idx) + _2710 + ceil32(return_data.size) + 32]
                                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = _4686
                                    require ext_code.size(address(poolInfo.field_2048))
                                    call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), _4686
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_0++
                                    mem[0] = sha3(msg.sender, 8)
                                    userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    if idx >= mem[_1535 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_256++
                                    mem[0] = sha3(msg.sender, 8) + 1
                                    stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1535 + ceil32(return_data.size) + 32]
                                    if idx >= mem[_2710 + ceil32(return_data.size)]:
                                        revert with 0, 50
                                    userInfo[msg.sender].field_512++
                                    mem[0] = sha3(msg.sender, 8) + 2
                                    stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2710 + ceil32(return_data.size) + 32]
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                if userInfo[msg.sender].field_768 > !arg1:
                                    revert with 0, 17
                                userInfo[msg.sender].field_768 += arg1
                                if uint256(poolInfo.field_256) > !arg1:
                                    revert with 0, 17
                                uint256(poolInfo.field_256) += arg1
                        else:
                            mem[100] = msg.sender
                            if not sub_c2a0fb04:
                                mem[132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
                                require ext_code.size(address(rewardTokenAddress))
                                call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
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
                                    _407 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < ceil32(return_data.size) + return_data.size + 96
                                    _434 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                    require return_data.size >= _407 + (32 * _434) + 32
                                    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _434] = mem[ceil32(return_data.size) + _407 + 128 len 32 * _434]
                                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(poolInfo.field_1792))
                                    staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1536 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1561 = mem[_1536]
                                    require mem[_1536] <= test266151307()
                                    require _1536 + mem[_1536] + 31 < _1536 + return_data.size
                                    _1586 = mem[_1536 + mem[_1536]]
                                    if mem[_1536 + mem[_1536]] > test266151307():
                                        revert with 0, 65
                                    if _1536 + ceil32(return_data.size) + (32 * mem[_1536 + mem[_1536]]) + 32 > test266151307() or (32 * mem[_1536 + mem[_1536]]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = _1536 + ceil32(return_data.size) + (32 * mem[_1536 + mem[_1536]]) + 32
                                    mem[_1536 + ceil32(return_data.size)] = _1586
                                    require return_data.size >= _1561 + (32 * _1586) + 32
                                    mem[_1536 + ceil32(return_data.size) + 32 len 32 * _1586] = mem[_1536 + _1561 + 32 len 32 * _1586]
                                    mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                    mem[mem[64] + 36] = msg.sender
                                    require ext_code.size(address(poolInfo.field_2048))
                                    staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args uint256(poolInfo.field_1024), msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2711 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2736 = mem[_2711]
                                    require mem[_2711] <= test266151307()
                                    require _2711 + mem[_2711] + 31 < _2711 + return_data.size
                                    _2761 = mem[_2711 + mem[_2711]]
                                    if mem[_2711 + mem[_2711]] > test266151307():
                                        revert with 0, 65
                                    if _2711 + ceil32(return_data.size) + (32 * mem[_2711 + mem[_2711]]) + 32 > test266151307() or (32 * mem[_2711 + mem[_2711]]) + 32 < 0:
                                        revert with 0, 65
                                    mem[64] = _2711 + ceil32(return_data.size) + (32 * mem[_2711 + mem[_2711]]) + 32
                                    mem[_2711 + ceil32(return_data.size)] = _2761
                                    require return_data.size >= _2736 + (32 * _2761) + 32
                                    mem[_2711 + ceil32(return_data.size) + 32 len 32 * _2761] = mem[_2711 + _2736 + 32 len 32 * _2761]
                                    if mem[(2 * ceil32(return_data.size)) + 96] < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    if _1586 < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    if _2761 < arg1:
                                        revert with 0, 'deposit: Not enough NFTs'
                                    idx = 0
                                    while idx < arg1:
                                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        _4488 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _4488
                                        require ext_code.size(address(poolInfo.field_1536))
                                        call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _4488
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_1536 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _4588 = mem[(32 * idx) + _1536 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _4588
                                        require ext_code.size(address(poolInfo.field_1792))
                                        call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _4588
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_2711 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _4688 = mem[(32 * idx) + _2711 + ceil32(return_data.size) + 32]
                                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = msg.sender
                                        mem[mem[64] + 36] = this.address
                                        mem[mem[64] + 68] = _4688
                                        require ext_code.size(address(poolInfo.field_2048))
                                        call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), _4688
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_0++
                                        mem[0] = sha3(msg.sender, 8)
                                        userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
                                        if idx >= mem[_1536 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_256++
                                        mem[0] = sha3(msg.sender, 8) + 1
                                        stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1536 + ceil32(return_data.size) + 32]
                                        if idx >= mem[_2711 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        userInfo[msg.sender].field_512++
                                        mem[0] = sha3(msg.sender, 8) + 2
                                        stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2711 + ceil32(return_data.size) + 32]
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    if userInfo[msg.sender].field_768 > !arg1:
                                        revert with 0, 17
                                    userInfo[msg.sender].field_768 += arg1
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
                                    mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
                                    require ext_code.size(address(rewardTokenAddress))
                                    call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024
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
                                        _538 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                        _567 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                            revert with 0, 65
                                        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        require return_data.size >= _538 + (32 * _567) + 32
                                        mem[(4 * ceil32(return_data.size)) + 128 len 32 * _567] = mem[(2 * ceil32(return_data.size)) + _538 + 128 len 32 * _567]
                                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(poolInfo.field_1792))
                                        staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1537 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1562 = mem[_1537]
                                        require mem[_1537] <= test266151307()
                                        require _1537 + mem[_1537] + 31 < _1537 + return_data.size
                                        _1587 = mem[_1537 + mem[_1537]]
                                        if mem[_1537 + mem[_1537]] > test266151307():
                                            revert with 0, 65
                                        if _1537 + ceil32(return_data.size) + (32 * mem[_1537 + mem[_1537]]) + 32 > test266151307() or (32 * mem[_1537 + mem[_1537]]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = _1537 + ceil32(return_data.size) + (32 * mem[_1537 + mem[_1537]]) + 32
                                        mem[_1537 + ceil32(return_data.size)] = _1587
                                        require return_data.size >= _1562 + (32 * _1587) + 32
                                        mem[_1537 + ceil32(return_data.size) + 32 len 32 * _1587] = mem[_1537 + _1562 + 32 len 32 * _1587]
                                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(poolInfo.field_2048))
                                        staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2712 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2737 = mem[_2712]
                                        require mem[_2712] <= test266151307()
                                        require _2712 + mem[_2712] + 31 < _2712 + return_data.size
                                        _2762 = mem[_2712 + mem[_2712]]
                                        if mem[_2712 + mem[_2712]] > test266151307():
                                            revert with 0, 65
                                        if _2712 + ceil32(return_data.size) + (32 * mem[_2712 + mem[_2712]]) + 32 > test266151307() or (32 * mem[_2712 + mem[_2712]]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = _2712 + ceil32(return_data.size) + (32 * mem[_2712 + mem[_2712]]) + 32
                                        mem[_2712 + ceil32(return_data.size)] = _2762
                                        require return_data.size >= _2737 + (32 * _2762) + 32
                                        mem[_2712 + ceil32(return_data.size) + 32 len 32 * _2762] = mem[_2712 + _2737 + 32 len 32 * _2762]
                                        if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        if _1587 < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        if _2762 < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        idx = 0
                                        while idx < arg1:
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            _4490 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _4490
                                            require ext_code.size(address(poolInfo.field_1536))
                                            call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _4490
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_1537 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _4590 = mem[(32 * idx) + _1537 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _4590
                                            require ext_code.size(address(poolInfo.field_1792))
                                            call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _4590
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_2712 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _4690 = mem[(32 * idx) + _2712 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _4690
                                            require ext_code.size(address(poolInfo.field_2048))
                                            call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _4690
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_0++
                                            mem[0] = sha3(msg.sender, 8)
                                            userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            if idx >= mem[_1537 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_256++
                                            mem[0] = sha3(msg.sender, 8) + 1
                                            stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1537 + ceil32(return_data.size) + 32]
                                            if idx >= mem[_2712 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_512++
                                            mem[0] = sha3(msg.sender, 8) + 2
                                            stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2712 + ceil32(return_data.size) + 32]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if userInfo[msg.sender].field_768 > !arg1:
                                            revert with 0, 17
                                        userInfo[msg.sender].field_768 += arg1
                                        if uint256(poolInfo.field_256) > !arg1:
                                            revert with 0, 17
                                        uint256(poolInfo.field_256) += arg1
                                else:
                                    if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 and sub_c2a0fb04 > -1 / (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024:
                                        revert with 0, 17
                                    if not stor13:
                                        revert with 0, 18
                                    if (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 > !((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13):
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 100] = msg.sender
                                    mem[ceil32(return_data.size) + 132] = (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 + ((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13)
                                    require ext_code.size(address(rewardTokenAddress))
                                    call address(rewardTokenAddress).transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_1024 + ((userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12 * sub_c2a0fb04) - (userInfo[msg.sender].field_1024 * sub_c2a0fb04) / stor13)
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
                                        _800 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056)
                                        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) <= test266151307()
                                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
                                        _830 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96] > test266151307():
                                            revert with 0, 65
                                        if (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128 > test266151307() or (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]) + 128
                                        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, poolInfo.field_1056) + 96]
                                        require return_data.size >= _800 + (32 * _830) + 32
                                        mem[(4 * ceil32(return_data.size)) + 128 len 32 * _830] = mem[(2 * ceil32(return_data.size)) + _800 + 128 len 32 * _830]
                                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(poolInfo.field_1792))
                                        staticcall address(poolInfo.field_1792).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1538 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1563 = mem[_1538]
                                        require mem[_1538] <= test266151307()
                                        require _1538 + mem[_1538] + 31 < _1538 + return_data.size
                                        _1588 = mem[_1538 + mem[_1538]]
                                        if mem[_1538 + mem[_1538]] > test266151307():
                                            revert with 0, 65
                                        if _1538 + ceil32(return_data.size) + (32 * mem[_1538 + mem[_1538]]) + 32 > test266151307() or (32 * mem[_1538 + mem[_1538]]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = _1538 + ceil32(return_data.size) + (32 * mem[_1538 + mem[_1538]]) + 32
                                        mem[_1538 + ceil32(return_data.size)] = _1588
                                        require return_data.size >= _1563 + (32 * _1588) + 32
                                        mem[_1538 + ceil32(return_data.size) + 32 len 32 * _1588] = mem[_1538 + _1563 + 32 len 32 * _1588]
                                        mem[mem[64]] = 0x6514938400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(poolInfo.field_1024)
                                        mem[mem[64] + 36] = msg.sender
                                        require ext_code.size(address(poolInfo.field_2048))
                                        staticcall address(poolInfo.field_2048).getUserNftTokensForRarity(uint256 arg1, address arg2) with:
                                                gas gas_remaining wei
                                               args uint256(poolInfo.field_1024), msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2713 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2738 = mem[_2713]
                                        require mem[_2713] <= test266151307()
                                        require _2713 + mem[_2713] + 31 < _2713 + return_data.size
                                        _2763 = mem[_2713 + mem[_2713]]
                                        if mem[_2713 + mem[_2713]] > test266151307():
                                            revert with 0, 65
                                        if _2713 + ceil32(return_data.size) + (32 * mem[_2713 + mem[_2713]]) + 32 > test266151307() or (32 * mem[_2713 + mem[_2713]]) + 32 < 0:
                                            revert with 0, 65
                                        mem[64] = _2713 + ceil32(return_data.size) + (32 * mem[_2713 + mem[_2713]]) + 32
                                        mem[_2713 + ceil32(return_data.size)] = _2763
                                        require return_data.size >= _2738 + (32 * _2763) + 32
                                        mem[_2713 + ceil32(return_data.size) + 32 len 32 * _2763] = mem[_2713 + _2738 + 32 len 32 * _2763]
                                        if mem[(4 * ceil32(return_data.size)) + 96] < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        if _1588 < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        if _2763 < arg1:
                                            revert with 0, 'deposit: Not enough NFTs'
                                        idx = 0
                                        while idx < arg1:
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            _4492 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _4492
                                            require ext_code.size(address(poolInfo.field_1536))
                                            call address(poolInfo.field_1536).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _4492
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_1538 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _4592 = mem[(32 * idx) + _1538 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _4592
                                            require ext_code.size(address(poolInfo.field_1792))
                                            call address(poolInfo.field_1792).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _4592
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_2713 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            _4692 = mem[(32 * idx) + _2713 + ceil32(return_data.size) + 32]
                                            mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = this.address
                                            mem[mem[64] + 68] = _4692
                                            require ext_code.size(address(poolInfo.field_2048))
                                            call address(poolInfo.field_2048).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), _4692
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_0++
                                            mem[0] = sha3(msg.sender, 8)
                                            userInfo[msg.sender][userInfo[msg.sender].field_0].field_0 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
                                            if idx >= mem[_1538 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_256++
                                            mem[0] = sha3(msg.sender, 8) + 1
                                            stor[('array', 1, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_256].field_0 = mem[(32 * idx) + _1538 + ceil32(return_data.size) + 32]
                                            if idx >= mem[_2713 + ceil32(return_data.size)]:
                                                revert with 0, 50
                                            userInfo[msg.sender].field_512++
                                            mem[0] = sha3(msg.sender, 8) + 2
                                            stor[('array', 2, ('map', 'msg.sender', ('name', 'userInfo', 8))) + userInfo[msg.sender].field_512].field_0 = mem[(32 * idx) + _2713 + ceil32(return_data.size) + 32]
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        if userInfo[msg.sender].field_768 > !arg1:
                                            revert with 0, 17
                                        userInfo[msg.sender].field_768 += arg1
                                        if uint256(poolInfo.field_256) > !arg1:
                                            revert with 0, 17
                                        uint256(poolInfo.field_256) += arg1
    if userInfo[msg.sender].field_768 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_768:
        revert with 0, 17
    userInfo[msg.sender].field_1024 = userInfo[msg.sender].field_768 * uint256(poolInfo.field_768) / 10^12
    emit Deposit(arg1, msg.sender);
}



}
