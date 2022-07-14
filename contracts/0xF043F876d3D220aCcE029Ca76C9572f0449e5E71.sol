contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address sub_6134a88bAddress;
address rewardTokenAddress;
address zapperAddress;
uint256 rewardPerSecond;
uint256 stor6;
uint16 depositFeeToBurn; offset 160
address burnAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 stor10;
uint256 startTime;
uint256 endTime;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function endTime() payable {
    return endTime
}

function sub_6134a88b(?) payable {
    return sub_6134a88bAddress
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

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    endTime = block.timestamp
}

function sub_5e00c9e6(?) payable {
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

function sub_15bf0bc1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= poolInfo.length:
        revert with 0, 50
    address(poolInfo.field_1040) = address(arg1)
    uint256(poolInfo.field_1280) = arg2
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

function sub_dd203a70(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setPoolLP: do not set to address zero'
    if 0 >= poolInfo.length:
        revert with 0, 50
    address(poolInfo.field_0) = address(arg1)
}

function updateDepositFeeBP(uint256 arg1, uint16 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'updateDepositFeeBP: invalid deposit fee basis points'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_1024 = arg2
    depositFeeToBurn = arg2
}

function emergencyWithdraw() payable {
    if 0 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(address(poolInfo.field_0))
    call address(poolInfo.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, userInfo[msg.sender].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    userInfo[msg.sender].field_0 = 0
    userInfo[msg.sender].field_256 = 0
    emit EmergencyWithdraw(0, msg.sender);
}

function setZapper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'setZapTimeLock: not address 0'
    zapperAddress = arg1
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.approve(address arg1, uint256 arg2) with:
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
    if 0 >= poolInfo.length:
        revert with 0, 50
    if address(poolInfo.field_0) == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sweep: cannot sweep staking token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.timestamp <= endTime:
                if block.timestamp < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[arg1].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
                    revert with 0, 17
                if not stor10:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor10 and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor10:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor10 / ext_call.return_data[0]):
                    revert with 0, 17
                poolInfo[arg1].field_768 += 10^12 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor10 / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= endTime:
                    if False and rewardPerSecond > 0:
                        revert with 0, 17
                    if False and poolInfo[arg1].field_256 > 0:
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if 0 / stor10 and 10^12 > -1 / 0 / stor10:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * 0 / stor10 / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * 0 / stor10 / ext_call.return_data[0]
                else:
                    if endTime < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if endTime - poolInfo[arg1].field_512 and rewardPerSecond > -1 / endTime - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (endTime * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) and poolInfo[arg1].field_256 > -1 / (endTime * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if (endTime * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor10 and 10^12 > -1 / (endTime * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor10:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (endTime * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor10 / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (endTime * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / stor10 / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function sub_ce29882a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerSecond = arg1
    if 0 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > uint256(poolInfo.field_512):
        require ext_code.size(address(poolInfo.field_0))
        staticcall address(poolInfo.field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.timestamp <= endTime:
                if block.timestamp < uint256(poolInfo.field_512):
                    revert with 0, 17
                if block.timestamp - uint256(poolInfo.field_512) and rewardPerSecond > -1 / block.timestamp - uint256(poolInfo.field_512):
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond) and uint256(poolInfo.field_256) > -1 / (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond):
                    revert with 0, 17
                if not stor10:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 and 10^12 > -1 / (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if uint256(poolInfo.field_768) > !(10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]):
                    revert with 0, 17
                uint256(poolInfo.field_768) += 10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]
            else:
                if uint256(poolInfo.field_512) >= endTime:
                    if False and rewardPerSecond > 0:
                        revert with 0, 17
                    if False and uint256(poolInfo.field_256) > 0:
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if 0 / stor10 and 10^12 > -1 / 0 / stor10:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * 0 / stor10 / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * 0 / stor10 / ext_call.return_data[0]
                else:
                    if endTime < uint256(poolInfo.field_512):
                        revert with 0, 17
                    if endTime - uint256(poolInfo.field_512) and rewardPerSecond > -1 / endTime - uint256(poolInfo.field_512):
                        revert with 0, 17
                    if (endTime * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond) and uint256(poolInfo.field_256) > -1 / (endTime * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond):
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 and 10^12 > -1 / (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]
        uint256(poolInfo.field_512) = block.timestamp
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_9]:
                if block.timestamp <= endTime:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and rewardPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor10 and 10^12 > -1 / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor10:
                        revert with 0, 17
                    if not mem[_9]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor10 / mem[_9]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor10 / mem[_9]
                else:
                    if poolInfo[idx].field_512 >= endTime:
                        if False and rewardPerSecond > 0:
                            revert with 0, 17
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 0, 17
                        if not stor10:
                            revert with 0, 18
                        if 0 / stor10 and 10^12 > -1 / 0 / stor10:
                            revert with 0, 17
                        if not mem[_9]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * 0 / stor10 / mem[_9]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * 0 / stor10 / mem[_9]
                    else:
                        if endTime < poolInfo[idx].field_512:
                            revert with 0, 17
                        if endTime - poolInfo[idx].field_512 and rewardPerSecond > -1 / endTime - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (endTime * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) and poolInfo[idx].field_256 > -1 / (endTime * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                            revert with 0, 17
                        if not stor10:
                            revert with 0, 18
                        if (endTime * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor10 and 10^12 > -1 / (endTime * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor10:
                            revert with 0, 17
                        if not mem[_9]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (endTime * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor10 / mem[_9]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (endTime * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / stor10 / mem[_9]
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0 >= poolInfo.length:
        revert with 0, 50
    if arg1 > userInfo[msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    if 0 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > uint256(poolInfo.field_512):
        require ext_code.size(address(poolInfo.field_0))
        staticcall address(poolInfo.field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.timestamp <= endTime:
                if block.timestamp < uint256(poolInfo.field_512):
                    revert with 0, 17
                if block.timestamp - uint256(poolInfo.field_512) and rewardPerSecond > -1 / block.timestamp - uint256(poolInfo.field_512):
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond) and uint256(poolInfo.field_256) > -1 / (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond):
                    revert with 0, 17
                if not stor10:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 and 10^12 > -1 / (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if uint256(poolInfo.field_768) > !(10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]):
                    revert with 0, 17
                uint256(poolInfo.field_768) += 10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]
            else:
                if uint256(poolInfo.field_512) >= endTime:
                    if False and rewardPerSecond > 0:
                        revert with 0, 17
                    if False and uint256(poolInfo.field_256) > 0:
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if 0 / stor10 and 10^12 > -1 / 0 / stor10:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * 0 / stor10 / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * 0 / stor10 / ext_call.return_data[0]
                else:
                    if endTime < uint256(poolInfo.field_512):
                        revert with 0, 17
                    if endTime - uint256(poolInfo.field_512) and rewardPerSecond > -1 / endTime - uint256(poolInfo.field_512):
                        revert with 0, 17
                    if (endTime * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond) and uint256(poolInfo.field_256) > -1 / (endTime * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond):
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 and 10^12 > -1 / (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]
        uint256(poolInfo.field_512) = block.timestamp
    if userInfo[msg.sender].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_0:
        revert with 0, 17
    if userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_256:
        revert with 0, 17
    if (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256:
        require ext_code.size(address(poolInfo.field_1040))
        staticcall address(poolInfo.field_1040).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256
        else:
            if (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 and uint256(poolInfo.field_1280) > -1 / (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12 * uint256(poolInfo.field_1280)) - (userInfo[msg.sender].field_256 * uint256(poolInfo.field_1280)) / stor6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1:
        if userInfo[msg.sender].field_0 < arg1:
            revert with 0, 17
        userInfo[msg.sender].field_0 -= arg1
        require ext_code.size(address(poolInfo.field_0))
        call address(poolInfo.field_0).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if userInfo[msg.sender].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_0:
        revert with 0, 17
    userInfo[msg.sender].field_256 = userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12
    emit Withdraw(arg1, msg.sender);
}

function compound() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if 0 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > uint256(poolInfo.field_512):
        require ext_code.size(address(poolInfo.field_0))
        staticcall address(poolInfo.field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.timestamp <= endTime:
                if block.timestamp < uint256(poolInfo.field_512):
                    revert with 0, 17
                if block.timestamp - uint256(poolInfo.field_512) and rewardPerSecond > -1 / block.timestamp - uint256(poolInfo.field_512):
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond) and uint256(poolInfo.field_256) > -1 / (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond):
                    revert with 0, 17
                if not stor10:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 and 10^12 > -1 / (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if uint256(poolInfo.field_768) > !(10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]):
                    revert with 0, 17
                uint256(poolInfo.field_768) += 10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]
            else:
                if uint256(poolInfo.field_512) >= endTime:
                    if False and rewardPerSecond > 0:
                        revert with 0, 17
                    if False and uint256(poolInfo.field_256) > 0:
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if 0 / stor10 and 10^12 > -1 / 0 / stor10:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * 0 / stor10 / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * 0 / stor10 / ext_call.return_data[0]
                else:
                    if endTime < uint256(poolInfo.field_512):
                        revert with 0, 17
                    if endTime - uint256(poolInfo.field_512) and rewardPerSecond > -1 / endTime - uint256(poolInfo.field_512):
                        revert with 0, 17
                    if (endTime * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond) and uint256(poolInfo.field_256) > -1 / (endTime * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond):
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 and 10^12 > -1 / (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]
        uint256(poolInfo.field_512) = block.timestamp
    if not userInfo[msg.sender].field_0:
        emit Compound(0, msg.sender);
    else:
        if userInfo[msg.sender].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_0:
            revert with 0, 17
        if userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_256:
            revert with 0, 17
        if not (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256:
            emit Compound(0, msg.sender);
        else:
            require ext_code.size(address(poolInfo.field_1040))
            staticcall address(poolInfo.field_1040).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(zapperAddress)
                call zapperAddress.0x934ff8ce with:
                     gas gas_remaining wei
                    args rewardTokenAddress, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256, address(poolInfo.field_0), msg.sender
            else:
                if (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 and uint256(poolInfo.field_1280) > -1 / (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256:
                    revert with 0, 17
                if not stor6:
                    revert with 0, 18
                require ext_code.size(zapperAddress)
                call zapperAddress.0x934ff8ce with:
                     gas gas_remaining wei
                    args rewardTokenAddress, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12 * uint256(poolInfo.field_1280)) - (userInfo[msg.sender].field_256 * uint256(poolInfo.field_1280)) / stor6, address(poolInfo.field_0), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(poolInfo.field_0))
            staticcall address(poolInfo.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(poolInfo.field_0))
                call address(poolInfo.field_0).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if userInfo[msg.sender].field_0 > !ext_call.return_data[0]:
                    revert with 0, 17
                userInfo[msg.sender].field_0 += ext_call.return_data[0]
            if userInfo[msg.sender].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_0:
                revert with 0, 17
            userInfo[msg.sender].field_256 = userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12
            emit Compound(ext_call.return_data[0], msg.sender);
    stor1 = 1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > uint256(poolInfo.field_512):
        require ext_code.size(address(poolInfo.field_0))
        staticcall address(poolInfo.field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.timestamp <= endTime:
                if block.timestamp < uint256(poolInfo.field_512):
                    revert with 0, 17
                if block.timestamp - uint256(poolInfo.field_512) and rewardPerSecond > -1 / block.timestamp - uint256(poolInfo.field_512):
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond) and uint256(poolInfo.field_256) > -1 / (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond):
                    revert with 0, 17
                if not stor10:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 and 10^12 > -1 / (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if uint256(poolInfo.field_768) > !(10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]):
                    revert with 0, 17
                uint256(poolInfo.field_768) += 10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]
            else:
                if uint256(poolInfo.field_512) >= endTime:
                    if False and rewardPerSecond > 0:
                        revert with 0, 17
                    if False and uint256(poolInfo.field_256) > 0:
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if 0 / stor10 and 10^12 > -1 / 0 / stor10:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * 0 / stor10 / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * 0 / stor10 / ext_call.return_data[0]
                else:
                    if endTime < uint256(poolInfo.field_512):
                        revert with 0, 17
                    if endTime - uint256(poolInfo.field_512) and rewardPerSecond > -1 / endTime - uint256(poolInfo.field_512):
                        revert with 0, 17
                    if (endTime * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond) and uint256(poolInfo.field_256) > -1 / (endTime * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond):
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 and 10^12 > -1 / (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if uint256(poolInfo.field_768) > !(10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]):
                        revert with 0, 17
                    uint256(poolInfo.field_768) += 10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]
        uint256(poolInfo.field_512) = block.timestamp
    if userInfo[msg.sender].field_0:
        if userInfo[msg.sender].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_0:
            revert with 0, 17
        if userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12 < userInfo[msg.sender].field_256:
            revert with 0, 17
        if (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256:
            require ext_code.size(address(poolInfo.field_1040))
            staticcall address(poolInfo.field_1040).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256
            else:
                if (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256 and uint256(poolInfo.field_1280) > -1 / (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[msg.sender].field_256:
                    revert with 0, 17
                if not stor6:
                    revert with 0, 18
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12 * uint256(poolInfo.field_1280)) - (userInfo[msg.sender].field_256 * uint256(poolInfo.field_1280)) / stor6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1:
        require ext_code.size(address(poolInfo.field_0))
        call address(poolInfo.field_0).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not uint16(poolInfo.field_1024):
            if userInfo[msg.sender].field_0 > !arg1:
                revert with 0, 17
            userInfo[msg.sender].field_0 += arg1
        else:
            if arg1 and uint16(poolInfo.field_1024) > -1 / arg1:
                revert with 0, 17
            require ext_code.size(address(poolInfo.field_0))
            call address(poolInfo.field_0).0xa9059cbb with:
                 gas gas_remaining wei
                args burnAddress, arg1 * uint16(poolInfo.field_1024) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if userInfo[msg.sender].field_0 > !arg1:
                revert with 0, 17
            if userInfo[msg.sender].field_0 + arg1 < arg1 * uint16(poolInfo.field_1024) / 10000:
                revert with 0, 17
            userInfo[msg.sender].field_0 = userInfo[msg.sender].field_0 + arg1 - (arg1 * uint16(poolInfo.field_1024) / 10000)
    if userInfo[msg.sender].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[msg.sender].field_0:
        revert with 0, 17
    userInfo[msg.sender].field_256 = userInfo[msg.sender].field_0 * uint256(poolInfo.field_768) / 10^12
    emit Deposit(arg1, msg.sender);
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(address(poolInfo.field_0))
    staticcall address(poolInfo.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= uint256(poolInfo.field_512):
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256 <= 0:
            return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256)
        require ext_code.size(address(poolInfo.field_1040))
        staticcall address(poolInfo.field_1040).0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256)
        if (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256 and uint256(poolInfo.field_1280) > -1 / (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12 * uint256(poolInfo.field_1280)) - (userInfo[address(arg1)].field_256 * uint256(poolInfo.field_1280)) / stor6)
    if not ext_call.return_data[0]:
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256 <= 0:
            return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256)
        require ext_code.size(address(poolInfo.field_1040))
        staticcall address(poolInfo.field_1040).0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256)
        if (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256 and uint256(poolInfo.field_1280) > -1 / (userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12 * uint256(poolInfo.field_1280)) - (userInfo[address(arg1)].field_256 * uint256(poolInfo.field_1280)) / stor6)
    if block.timestamp <= endTime:
        if block.timestamp < uint256(poolInfo.field_512):
            revert with 0, 17
        if block.timestamp - uint256(poolInfo.field_512) and rewardPerSecond > -1 / block.timestamp - uint256(poolInfo.field_512):
            revert with 0, 17
        if (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond) and uint256(poolInfo.field_256) > -1 / (block.timestamp * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond):
            revert with 0, 17
        if not stor10:
            revert with 0, 18
        if (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 and 10^12 > -1 / (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if uint256(poolInfo.field_768) > !(10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require ext_code.size(address(poolInfo.field_1040))
        staticcall address(poolInfo.field_1040).0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 and uint256(poolInfo.field_1280) > -1 / ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.timestamp * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 * uint256(poolInfo.field_1280)) - (userInfo[address(arg1)].field_256 * uint256(poolInfo.field_1280)) / stor6)
    if uint256(poolInfo.field_512) >= endTime:
        if False and rewardPerSecond > 0:
            revert with 0, 17
        if False and uint256(poolInfo.field_256) > 0:
            revert with 0, 17
        if not stor10:
            revert with 0, 18
        if 0 / stor10 and 10^12 > -1 / 0 / stor10:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if uint256(poolInfo.field_768) > !(10^12 * 0 / stor10 / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (10^12 * 0 / stor10 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require ext_code.size(address(poolInfo.field_1040))
        staticcall address(poolInfo.field_1040).0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 and uint256(poolInfo.field_1280) > -1 / ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 * uint256(poolInfo.field_1280)) - (userInfo[address(arg1)].field_256 * uint256(poolInfo.field_1280)) / stor6)
    if endTime < uint256(poolInfo.field_512):
        revert with 0, 17
    if endTime - uint256(poolInfo.field_512) and rewardPerSecond > -1 / endTime - uint256(poolInfo.field_512):
        revert with 0, 17
    if (endTime * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond) and uint256(poolInfo.field_256) > -1 / (endTime * rewardPerSecond) - (uint256(poolInfo.field_512) * rewardPerSecond):
        revert with 0, 17
    if not stor10:
        revert with 0, 18
    if (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 and 10^12 > -1 / (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if uint256(poolInfo.field_768) > !(10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
        revert with 0, 17
    if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 <= 0:
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require ext_code.size(address(poolInfo.field_1040))
    staticcall address(poolInfo.field_1040).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256 and uint256(poolInfo.field_1280) > -1 / ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (endTime * rewardPerSecond * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerSecond * uint256(poolInfo.field_256)) / stor10 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 * uint256(poolInfo.field_1280)) - (userInfo[address(arg1)].field_256 * uint256(poolInfo.field_1280)) / stor6)
}



}
