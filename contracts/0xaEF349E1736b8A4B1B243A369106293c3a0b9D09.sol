contract main {




// =====================  Runtime code  =====================


#
#  - add(uint256 arg1, address arg2, bool arg3)
#  - getTotalRewardInfo(uint256 arg1, uint256 arg2)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - updatePool(uint256 arg1)
#  - massUpdatePools()
#  - set(uint256 arg1, uint256 arg2, bool arg3)
#  - pendingWaka(uint256 arg1, address arg2)
#  - getTotalRewardInfoInSameCommonDifference(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint256 sub_cd2f2ac9;
uint256 totalAllocPoint;
uint256 startTime;
uint256 bonusEndTime;
uint256 sub_17265ce5;
uint256 sub_db62a2ef;
uint256 sub_5c37566f;
uint256 sub_6c59e2fd;
uint256 bonusBeforeCommonDifference;
uint256 bonusEndCommonDifference;
uint256 sub_1d8dce81;
address sub_dccd4d69Address;
address maintenanceAddress;
array of struct poolInfo;
mapping of struct userInfo;

function poolLength() payable {
    return poolInfo.length
}

function bonusEndCommonDifference() payable {
    return bonusEndCommonDifference
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function sub_17265ce5(?) payable {
    return sub_17265ce5
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_1d8dce81(?) payable {
    return sub_1d8dce81
}

function sub_5c37566f(?) payable {
    return sub_5c37566f
}

function maintenance() payable {
    return maintenanceAddress
}

function sub_6c59e2fd(?) payable {
    return sub_6c59e2fd
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function bonusBeforeCommonDifference() payable {
    return bonusBeforeCommonDifference
}

function sub_cd2f2ac9(?) payable {
    return sub_cd2f2ac9
}

function sub_db62a2ef(?) payable {
    return sub_db62a2ef
}

function sub_dccd4d69(?) payable {
    return sub_dccd4d69Address
}

function bonusEndTime() payable {
    return bonusEndTime
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeMaintenanceAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if maintenanceAddress != msg.sender:
        revert with 0, 'nope'
    maintenanceAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
}



}
