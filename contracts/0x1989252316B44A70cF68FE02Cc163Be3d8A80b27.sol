contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const sub_913f0f08(?) = 4

const sub_ba7365a8(?) = 3

const sub_f4b5152c(?) = 1

const MAX_EMISSION_RATE = 100 * 10^18

const MAXIMUM_REFERRAL_COMMISSION_RATE = 1000

const TOKEN_CAP = 50000000 * 10^18

const MAXIMUM_HARVEST_INTERVAL = (48 * 24 * 3600)


address owner;
uint256 stor1;
address sub_04d59dbfAddress;
address devAddress;
address feeAddress;
uint256 sub_1734ef47;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 totalLockedUpRewards;
uint16 referralCommissionRate; offset 160
address sub_ae499bdbAddress;
address sub_4567da1bAddress;
mapping of uint8 stor13;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986691;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986692;
array of uint16 stor111414077815863400510004064629973595961579173665589224203503662149373724986693;

function sub_04d59dbf(?) payable {
    return sub_04d59dbfAddress
}

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
}

function sub_1734ef47(?) payable {
    return sub_1734ef47
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function devAddress() payable {
    return devAddress
}

function feeAddress() payable {
    return feeAddress
}

function sub_4567da1b(?) payable {
    return sub_4567da1bAddress
}

function totalLockedUpRewards() payable {
    return totalLockedUpRewards
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768,
           userInfo[arg1][arg2].field_1024,
           userInfo[arg1][arg2].field_1280,
           userInfo[arg1][arg2].field_1536,
           userInfo[arg1][arg2].field_1792
}

function sub_ae499bdb(?) payable {
    return sub_ae499bdbAddress
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function referralCommissionRate() payable {
    return referralCommissionRate
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

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setFeeAddress: ZERO'
    feeAddress = arg1
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, 'setDevAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setDevAddress: ZERO'
    devAddress = arg1
}

function sub_5bc6c977(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'pantherReferral: ZERO'
    sub_ae499bdbAddress = address(arg1)
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

function setReferralCommissionRate(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'setReferralCommissionRate: invalid referral commission rate basis points'
    referralCommissionRate = arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function updateStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startBlock <= block.number:
        revert with 0, 'Farm already started'
    if arg1 <= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Start block must be in the future.'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        poolInfo[idx].field_512 = arg1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    startBlock = arg1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number > poolInfo[arg1].field_512:
        if poolInfo[arg1].field_1024:
            if poolInfo[arg1].field_256:
                if block.number < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if block.number - poolInfo[arg1].field_512 and sub_1734ef47 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if (block.number * sub_1734ef47) - (poolInfo[arg1].field_512 * sub_1734ef47) and poolInfo[arg1].field_256 > -1 / (block.number * sub_1734ef47) - (poolInfo[arg1].field_512 * sub_1734ef47):
                    revert with 'NH{q', 17
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                if (block.number * sub_1734ef47 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1734ef47 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 'NH{q', 17
                if not poolInfo[arg1].field_1024:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_1734ef47 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1734ef47 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024):
                    revert with 'NH{q', 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_1734ef47 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1734ef47 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.number > poolInfo[idx].field_512:
            if poolInfo[idx].field_1024:
                if poolInfo[idx].field_256:
                    if block.number < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and sub_1734ef47 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (block.number * sub_1734ef47) - (poolInfo[idx].field_512 * sub_1734ef47) and poolInfo[idx].field_256 > -1 / (block.number * sub_1734ef47) - (poolInfo[idx].field_512 * sub_1734ef47):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.number * sub_1734ef47 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1734ef47 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 'NH{q', 17
                    if not poolInfo[idx].field_1024:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_1734ef47 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1734ef47 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024):
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_1734ef47 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1734ef47 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100 * 10^18:
        revert with 0, 'emissionRate too high'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.number > poolInfo[idx].field_512:
            if poolInfo[idx].field_1024:
                if poolInfo[idx].field_256:
                    if block.number < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and sub_1734ef47 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (block.number * sub_1734ef47) - (poolInfo[idx].field_512 * sub_1734ef47) and poolInfo[idx].field_256 > -1 / (block.number * sub_1734ef47) - (poolInfo[idx].field_512 * sub_1734ef47):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if (block.number * sub_1734ef47 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1734ef47 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 'NH{q', 17
                    if not poolInfo[idx].field_1024:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_1734ef47 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1734ef47 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024):
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_1734ef47 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1734ef47 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    emit EmissionRateUpdated(sub_1734ef47, arg1, msg.sender);
    sub_1734ef47 = arg1
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 == arg3
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'deposit fee can't be more than 4%'
    if arg4 > 48 * 24 * 3600:
        revert with 0, 'set: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.number > poolInfo[idx].field_512:
                if poolInfo[idx].field_1024:
                    if poolInfo[idx].field_256:
                        if block.number < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.number - poolInfo[idx].field_512 and sub_1734ef47 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (block.number * sub_1734ef47) - (poolInfo[idx].field_512 * sub_1734ef47) and poolInfo[idx].field_256 > -1 / (block.number * sub_1734ef47) - (poolInfo[idx].field_512 * sub_1734ef47):
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        if (block.number * sub_1734ef47 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1734ef47 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 'NH{q', 17
                        if not poolInfo[idx].field_1024:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_1734ef47 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1734ef47 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024):
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_1734ef47 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1734ef47 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 'NH{q', 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 'NH{q', 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1536 = arg3
    poolInfo[arg1].field_1280 = arg4
}

function add(uint256 arg1, address arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 == arg2
    require arg3 == arg3
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor13[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'deposit fee can't be more than 4%'
    if arg4 > 48 * 24 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.number > poolInfo[idx].field_512:
                if poolInfo[idx].field_1024:
                    if poolInfo[idx].field_256:
                        if block.number < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.number - poolInfo[idx].field_512 and sub_1734ef47 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (block.number * sub_1734ef47) - (poolInfo[idx].field_512 * sub_1734ef47) and poolInfo[idx].field_256 > -1 / (block.number * sub_1734ef47) - (poolInfo[idx].field_512 * sub_1734ef47):
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        if (block.number * sub_1734ef47 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1734ef47 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 'NH{q', 17
                        if not poolInfo[idx].field_1024:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_1734ef47 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1734ef47 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024):
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_1734ef47 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_1734ef47 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 'NH{q', 17
    totalAllocPoint += arg1
    stor13[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF652[stor6.length] = arg1
    if block.number > startBlock:
        storF652[stor6.length] = block.number
    else:
        storF652[stor6.length] = startBlock
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    storF652[stor6.length] = arg4
    storF652[stor6.length] = arg3
}

function pendingPanther(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_1024 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_1024:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_1024 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        if (userInfo[arg1][address(arg2)].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if not poolInfo[arg1].field_1024:
        if userInfo[arg1][address(arg2)].field_1024 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_1024:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_1024 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        if (userInfo[arg1][address(arg2)].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if block.number < poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if block.number - poolInfo[arg1].field_512 and sub_1734ef47 > -1 / block.number - poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if (block.number * sub_1734ef47) - (poolInfo[arg1].field_512 * sub_1734ef47) and poolInfo[arg1].field_256 > -1 / (block.number * sub_1734ef47) - (poolInfo[arg1].field_512 * sub_1734ef47):
        revert with 'NH{q', 17
    if not totalAllocPoint:
        revert with 'NH{q', 18
    if (block.number * sub_1734ef47 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1734ef47 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 'NH{q', 17
    if not poolInfo[arg1].field_1024:
        revert with 'NH{q', 18
    if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_1734ef47 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1734ef47 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024):
        revert with 'NH{q', 17
    if userInfo[arg1][address(arg2)].field_1024 and poolInfo[arg1].field_768 + (10^12 * (block.number * sub_1734ef47 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1734ef47 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_1024:
        revert with 'NH{q', 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_1024) + (10^12 * (block.number * sub_1734ef47 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1734ef47 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_1024) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 'NH{q', 17
    if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_1024) + (10^12 * (block.number * sub_1734ef47 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1734ef47 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_1024) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
        revert with 'NH{q', 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_1024) + (10^12 * (block.number * sub_1734ef47 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_1734ef47 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_1024) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
}

function depositNFT(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(sub_4567da1bAddress)
    staticcall sub_4567da1bAddress.0xaa723bb7 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(sub_4567da1bAddress)
    staticcall sub_4567da1bAddress.0xaa723bb7 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] != 3:
        if ext_call.return_data[31 len 1] != 4:
            require ext_code.size(sub_4567da1bAddress)
            staticcall sub_4567da1bAddress.0xaa723bb7 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] != 1:
                revert with 0, 'Invalid type of Gem. Only allowed time, power and soul gems'
    require ext_code.size(sub_4567da1bAddress)
    staticcall sub_4567da1bAddress.0x4aa66b28 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_4567da1bAddress)
    call sub_4567da1bAddress.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(ext_call.return_data[0]) != 3:
        if uint8(ext_call.return_data[0]) != 4:
            if ext_call.return_data[0] < 500:
                revert with 0, 'Invalid bonus amount for gem of soul. Contact an admin.'
            if ext_call.return_data[0] > 10000:
                revert with 0, 'Invalid bonus amount for gem of soul. Contact an admin.'
            if ext_call.return_data[0] % 500:
                revert with 0, 'Invalid bonus amount for gem of soul. Contact an admin.'
            userInfo[arg1][msg.sender].field_1280 = arg2
        else:
            if ext_call.return_data[0] < 500:
                revert with 0, 'Invalid bonus amount for gem of power. Contact an admin.'
            if ext_call.return_data[0] > 10000:
                revert with 0, 'Invalid bonus amount for gem of power. Contact an admin.'
            if ext_call.return_data[0] % 500:
                revert with 0, 'Invalid bonus amount for gem of power. Contact an admin.'
            userInfo[arg1][msg.sender].field_1536 = arg2
            if arg1 >= poolInfo.length:
                revert with 'NH{q', 50
            userInfo[arg1][msg.sender].field_1024 = userInfo[arg1][msg.sender].field_0
            if userInfo[arg1][msg.sender].field_1536:
                require ext_code.size(sub_4567da1bAddress)
                staticcall sub_4567da1bAddress.0x4aa66b28 with:
                        gas gas_remaining wei
                       args userInfo[arg1][msg.sender].field_1536
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if userInfo[arg1][msg.sender].field_1024 and ext_call.return_data[0] > -1 / userInfo[arg1][msg.sender].field_1024:
                    revert with 'NH{q', 17
                if userInfo[arg1][msg.sender].field_1024 > !(userInfo[arg1][msg.sender].field_1024 * ext_call.return_data[0] / 10000):
                    revert with 'NH{q', 17
                userInfo[arg1][msg.sender].field_1024 += userInfo[arg1][msg.sender].field_1024 * ext_call.return_data[0] / 10000
            if poolInfo[arg1].field_1024 > !userInfo[arg1][msg.sender].field_1024:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_1024 + userInfo[arg1][msg.sender].field_1024 < userInfo[arg1][msg.sender].field_1024:
                revert with 'NH{q', 17
            if userInfo[arg1][msg.sender].field_1024 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_1024:
                revert with 'NH{q', 17
            userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12
    else:
        if ext_call.return_data[0] < 3600:
            revert with 0, 'Invalid bonus amount for gem of time. Contact an admin.'
        if ext_call.return_data[0] % 3600:
            revert with 0, 'Invalid bonus amount for gem of time. Contact an admin.'
        userInfo[arg1][msg.sender].field_1792 = arg2
        if arg1 >= poolInfo.length:
            revert with 'NH{q', 50
        if not userInfo[arg1][msg.sender].field_1792:
            if not userInfo[arg1][msg.sender].field_768:
                if block.timestamp > !poolInfo[arg1].field_1280:
                    revert with 'NH{q', 17
                userInfo[arg1][msg.sender].field_768 = block.timestamp + poolInfo[arg1].field_1280
            else:
                if poolInfo[arg1].field_1280 > !block.timestamp:
                    revert with 'NH{q', 17
                if userInfo[arg1][msg.sender].field_768 > poolInfo[arg1].field_1280 + block.timestamp:
                    if block.timestamp > !poolInfo[arg1].field_1280:
                        revert with 'NH{q', 17
                    userInfo[arg1][msg.sender].field_768 = block.timestamp + poolInfo[arg1].field_1280
            if userInfo[arg1][msg.sender].field_1024 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_1024:
                revert with 'NH{q', 17
            if userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
                revert with 'NH{q', 17
            if block.timestamp < userInfo[arg1][msg.sender].field_768:
                if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    if userInfo[arg1][msg.sender].field_512 > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256):
                        revert with 'NH{q', 17
                    userInfo[arg1][msg.sender].field_512 = userInfo[arg1][msg.sender].field_512 + (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if totalLockedUpRewards > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256):
                        revert with 'NH{q', 17
                    totalLockedUpRewards = totalLockedUpRewards + (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
                    emit RewardLockedUp(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
            else:
                if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 > 0:
                    if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                        revert with 'NH{q', 17
                    if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                        revert with 'NH{q', 17
                    totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                    userInfo[arg1][msg.sender].field_512 = 0
                    if block.timestamp > !poolInfo[arg1].field_1280:
                        revert with 'NH{q', 17
                    userInfo[arg1][msg.sender].field_768 = block.timestamp + poolInfo[arg1].field_1280
                    require ext_code.size(sub_04d59dbfAddress)
                    staticcall sub_04d59dbfAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] + ((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10) <= 50000000 * 10^18:
                        require ext_code.size(sub_04d59dbfAddress)
                        call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10
                    else:
                        if 50000000 * 10^18 < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        require ext_code.size(sub_04d59dbfAddress)
                        call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devAddress, -ext_call.return_data[0] + 50000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_04d59dbfAddress)
                    staticcall sub_04d59dbfAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] + (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= 50000000 * 10^18:
                        require ext_code.size(sub_04d59dbfAddress)
                        call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                    else:
                        if 50000000 * 10^18 < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        require ext_code.size(sub_04d59dbfAddress)
                        call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, -ext_call.return_data[0] + 50000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if referralCommissionRate:
                        require ext_code.size(sub_ae499bdbAddress)
                        staticcall sub_ae499bdbAddress.0x4a9fefc7 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 and referralCommissionRate > -1 / (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512:
                            revert with 'NH{q', 17
                        if ext_call.return_data[12 len 20]:
                            if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000 > 0:
                                require ext_code.size(sub_04d59dbfAddress)
                                staticcall sub_04d59dbfAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] + ((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000) <= 50000000 * 10^18:
                                    require ext_code.size(sub_04d59dbfAddress)
                                    call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000
                                else:
                                    if 50000000 * 10^18 < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    require ext_code.size(sub_04d59dbfAddress)
                                    call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), -ext_call.return_data[0] + 50000000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_ae499bdbAddress)
                                call sub_ae499bdbAddress.0xdc1694b8 with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit ReferralCommissionPaid(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000), msg.sender, address(ext_call.return_data[0]));
                    emit Harvest(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512), msg.sender);
                else:
                    if userInfo[arg1][msg.sender].field_512 > 0:
                        if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                            revert with 'NH{q', 17
                        if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                            revert with 'NH{q', 17
                        totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                        userInfo[arg1][msg.sender].field_512 = 0
                        if block.timestamp > !poolInfo[arg1].field_1280:
                            revert with 'NH{q', 17
                        userInfo[arg1][msg.sender].field_768 = block.timestamp + poolInfo[arg1].field_1280
                        require ext_code.size(sub_04d59dbfAddress)
                        staticcall sub_04d59dbfAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] + ((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10) <= 50000000 * 10^18:
                            require ext_code.size(sub_04d59dbfAddress)
                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devAddress, (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10
                        else:
                            if 50000000 * 10^18 < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            require ext_code.size(sub_04d59dbfAddress)
                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devAddress, -ext_call.return_data[0] + 50000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_04d59dbfAddress)
                        staticcall sub_04d59dbfAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] + (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= 50000000 * 10^18:
                            require ext_code.size(sub_04d59dbfAddress)
                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                        else:
                            if 50000000 * 10^18 < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            require ext_code.size(sub_04d59dbfAddress)
                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -ext_call.return_data[0] + 50000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if referralCommissionRate:
                            require ext_code.size(sub_ae499bdbAddress)
                            staticcall sub_ae499bdbAddress.0x4a9fefc7 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 and referralCommissionRate > -1 / (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512:
                                revert with 'NH{q', 17
                            if ext_call.return_data[12 len 20]:
                                if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000 > 0:
                                    require ext_code.size(sub_04d59dbfAddress)
                                    staticcall sub_04d59dbfAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000):
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] + ((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000) <= 50000000 * 10^18:
                                        require ext_code.size(sub_04d59dbfAddress)
                                        call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000
                                    else:
                                        if 50000000 * 10^18 < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        require ext_code.size(sub_04d59dbfAddress)
                                        call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), -ext_call.return_data[0] + 50000000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_ae499bdbAddress)
                                    call sub_ae499bdbAddress.0xdc1694b8 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit ReferralCommissionPaid(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000), msg.sender, address(ext_call.return_data[0]));
                        emit Harvest(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512), msg.sender);
        else:
            require ext_code.size(sub_4567da1bAddress)
            staticcall sub_4567da1bAddress.0x4aa66b28 with:
                    gas gas_remaining wei
                   args userInfo[arg1][msg.sender].field_1792
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if poolInfo[arg1].field_1280 <= ext_call.return_data[30 len 2]:
                if not userInfo[arg1][msg.sender].field_768:
                    if block.timestamp > -1:
                        revert with 'NH{q', 17
                    userInfo[arg1][msg.sender].field_768 = block.timestamp
                else:
                    if 0 > !block.timestamp:
                        revert with 'NH{q', 17
                    if userInfo[arg1][msg.sender].field_768 > block.timestamp:
                        if block.timestamp > -1:
                            revert with 'NH{q', 17
                        userInfo[arg1][msg.sender].field_768 = block.timestamp
                if userInfo[arg1][msg.sender].field_1024 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_1024:
                    revert with 'NH{q', 17
                if userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
                    revert with 'NH{q', 17
                if block.timestamp < userInfo[arg1][msg.sender].field_768:
                    if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256:
                        if userInfo[arg1][msg.sender].field_512 > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256):
                            revert with 'NH{q', 17
                        userInfo[arg1][msg.sender].field_512 = userInfo[arg1][msg.sender].field_512 + (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
                        if totalLockedUpRewards > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256):
                            revert with 'NH{q', 17
                        totalLockedUpRewards = totalLockedUpRewards + (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
                        emit RewardLockedUp(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
                else:
                    if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 > 0:
                        if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                            revert with 'NH{q', 17
                        if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                            revert with 'NH{q', 17
                        totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                        userInfo[arg1][msg.sender].field_512 = 0
                        if block.timestamp > -1:
                            revert with 'NH{q', 17
                        userInfo[arg1][msg.sender].field_768 = block.timestamp
                        require ext_code.size(sub_04d59dbfAddress)
                        staticcall sub_04d59dbfAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] + ((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10) <= 50000000 * 10^18:
                            require ext_code.size(sub_04d59dbfAddress)
                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devAddress, (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10
                        else:
                            if 50000000 * 10^18 < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            require ext_code.size(sub_04d59dbfAddress)
                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devAddress, -ext_call.return_data[0] + 50000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_04d59dbfAddress)
                        staticcall sub_04d59dbfAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] + (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= 50000000 * 10^18:
                            require ext_code.size(sub_04d59dbfAddress)
                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                        else:
                            if 50000000 * 10^18 < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            require ext_code.size(sub_04d59dbfAddress)
                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -ext_call.return_data[0] + 50000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if referralCommissionRate:
                            require ext_code.size(sub_ae499bdbAddress)
                            staticcall sub_ae499bdbAddress.0x4a9fefc7 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 and referralCommissionRate > -1 / (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512:
                                revert with 'NH{q', 17
                            if ext_call.return_data[12 len 20]:
                                if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000 > 0:
                                    require ext_code.size(sub_04d59dbfAddress)
                                    staticcall sub_04d59dbfAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000):
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] + ((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000) <= 50000000 * 10^18:
                                        require ext_code.size(sub_04d59dbfAddress)
                                        call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000
                                    else:
                                        if 50000000 * 10^18 < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        require ext_code.size(sub_04d59dbfAddress)
                                        call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), -ext_call.return_data[0] + 50000000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_ae499bdbAddress)
                                    call sub_ae499bdbAddress.0xdc1694b8 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit ReferralCommissionPaid(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000), msg.sender, address(ext_call.return_data[0]));
                        emit Harvest(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512), msg.sender);
                    else:
                        if userInfo[arg1][msg.sender].field_512 > 0:
                            if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                                revert with 'NH{q', 17
                            if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                                revert with 'NH{q', 17
                            totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                            userInfo[arg1][msg.sender].field_512 = 0
                            if block.timestamp > -1:
                                revert with 'NH{q', 17
                            userInfo[arg1][msg.sender].field_768 = block.timestamp
                            require ext_code.size(sub_04d59dbfAddress)
                            staticcall sub_04d59dbfAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10):
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] + ((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10) <= 50000000 * 10^18:
                                require ext_code.size(sub_04d59dbfAddress)
                                call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devAddress, (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10
                            else:
                                if 50000000 * 10^18 < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                require ext_code.size(sub_04d59dbfAddress)
                                call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devAddress, -ext_call.return_data[0] + 50000000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_04d59dbfAddress)
                            staticcall sub_04d59dbfAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512):
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] + (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= 50000000 * 10^18:
                                require ext_code.size(sub_04d59dbfAddress)
                                call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                            else:
                                if 50000000 * 10^18 < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                require ext_code.size(sub_04d59dbfAddress)
                                call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -ext_call.return_data[0] + 50000000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if referralCommissionRate:
                                require ext_code.size(sub_ae499bdbAddress)
                                staticcall sub_ae499bdbAddress.0x4a9fefc7 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 and referralCommissionRate > -1 / (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[12 len 20]:
                                    if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000 > 0:
                                        require ext_code.size(sub_04d59dbfAddress)
                                        staticcall sub_04d59dbfAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000):
                                            revert with 'NH{q', 17
                                        if ext_call.return_data[0] + ((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000) <= 50000000 * 10^18:
                                            require ext_code.size(sub_04d59dbfAddress)
                                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000
                                        else:
                                            if 50000000 * 10^18 < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            require ext_code.size(sub_04d59dbfAddress)
                                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), -ext_call.return_data[0] + 50000000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_ae499bdbAddress)
                                        call sub_ae499bdbAddress.0xdc1694b8 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit ReferralCommissionPaid(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000), msg.sender, address(ext_call.return_data[0]));
                            emit Harvest(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512), msg.sender);
            else:
                if poolInfo[arg1].field_1280 < ext_call.return_data[30 len 2]:
                    revert with 'NH{q', 17
                if not userInfo[arg1][msg.sender].field_768:
                    if block.timestamp > !(poolInfo[arg1].field_1280 - ext_call.return_data[30 len 2]):
                        revert with 'NH{q', 17
                    userInfo[arg1][msg.sender].field_768 = block.timestamp + poolInfo[arg1].field_1280 - ext_call.return_data[30 len 2]
                else:
                    if poolInfo[arg1].field_1280 - ext_call.return_data[30 len 2] > !block.timestamp:
                        revert with 'NH{q', 17
                    if userInfo[arg1][msg.sender].field_768 > poolInfo[arg1].field_1280 - ext_call.return_data[30 len 2] + block.timestamp:
                        if block.timestamp > !(poolInfo[arg1].field_1280 - ext_call.return_data[30 len 2]):
                            revert with 'NH{q', 17
                        userInfo[arg1][msg.sender].field_768 = block.timestamp + poolInfo[arg1].field_1280 - ext_call.return_data[30 len 2]
                if userInfo[arg1][msg.sender].field_1024 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_1024:
                    revert with 'NH{q', 17
                if userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
                    revert with 'NH{q', 17
                if block.timestamp < userInfo[arg1][msg.sender].field_768:
                    if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256:
                        if userInfo[arg1][msg.sender].field_512 > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256):
                            revert with 'NH{q', 17
                        userInfo[arg1][msg.sender].field_512 = userInfo[arg1][msg.sender].field_512 + (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
                        if totalLockedUpRewards > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256):
                            revert with 'NH{q', 17
                        totalLockedUpRewards = totalLockedUpRewards + (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
                        emit RewardLockedUp(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
                else:
                    if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 > 0:
                        if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                            revert with 'NH{q', 17
                        if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                            revert with 'NH{q', 17
                        totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                        userInfo[arg1][msg.sender].field_512 = 0
                        if block.timestamp > !(poolInfo[arg1].field_1280 - ext_call.return_data[30 len 2]):
                            revert with 'NH{q', 17
                        userInfo[arg1][msg.sender].field_768 = block.timestamp + poolInfo[arg1].field_1280 - ext_call.return_data[30 len 2]
                        require ext_code.size(sub_04d59dbfAddress)
                        staticcall sub_04d59dbfAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] + ((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10) <= 50000000 * 10^18:
                            require ext_code.size(sub_04d59dbfAddress)
                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devAddress, (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10
                        else:
                            if 50000000 * 10^18 < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            require ext_code.size(sub_04d59dbfAddress)
                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devAddress, -ext_call.return_data[0] + 50000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_04d59dbfAddress)
                        staticcall sub_04d59dbfAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] + (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= 50000000 * 10^18:
                            require ext_code.size(sub_04d59dbfAddress)
                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                        else:
                            if 50000000 * 10^18 < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            require ext_code.size(sub_04d59dbfAddress)
                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -ext_call.return_data[0] + 50000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if referralCommissionRate:
                            require ext_code.size(sub_ae499bdbAddress)
                            staticcall sub_ae499bdbAddress.0x4a9fefc7 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 and referralCommissionRate > -1 / (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512:
                                revert with 'NH{q', 17
                            if ext_call.return_data[12 len 20]:
                                if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000 > 0:
                                    require ext_code.size(sub_04d59dbfAddress)
                                    staticcall sub_04d59dbfAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000):
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] + ((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000) <= 50000000 * 10^18:
                                        require ext_code.size(sub_04d59dbfAddress)
                                        call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000
                                    else:
                                        if 50000000 * 10^18 < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        require ext_code.size(sub_04d59dbfAddress)
                                        call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), -ext_call.return_data[0] + 50000000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_ae499bdbAddress)
                                    call sub_ae499bdbAddress.0xdc1694b8 with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit ReferralCommissionPaid(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000), msg.sender, address(ext_call.return_data[0]));
                        emit Harvest(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512), msg.sender);
                    else:
                        if userInfo[arg1][msg.sender].field_512 > 0:
                            if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                                revert with 'NH{q', 17
                            if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                                revert with 'NH{q', 17
                            totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                            userInfo[arg1][msg.sender].field_512 = 0
                            if block.timestamp > !(poolInfo[arg1].field_1280 - ext_call.return_data[30 len 2]):
                                revert with 'NH{q', 17
                            userInfo[arg1][msg.sender].field_768 = block.timestamp + poolInfo[arg1].field_1280 - ext_call.return_data[30 len 2]
                            require ext_code.size(sub_04d59dbfAddress)
                            staticcall sub_04d59dbfAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10):
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] + ((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10) <= 50000000 * 10^18:
                                require ext_code.size(sub_04d59dbfAddress)
                                call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devAddress, (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 / 10
                            else:
                                if 50000000 * 10^18 < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                require ext_code.size(sub_04d59dbfAddress)
                                call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args devAddress, -ext_call.return_data[0] + 50000000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_04d59dbfAddress)
                            staticcall sub_04d59dbfAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512):
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] + (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= 50000000 * 10^18:
                                require ext_code.size(sub_04d59dbfAddress)
                                call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                            else:
                                if 50000000 * 10^18 < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                require ext_code.size(sub_04d59dbfAddress)
                                call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -ext_call.return_data[0] + 50000000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if referralCommissionRate:
                                require ext_code.size(sub_ae499bdbAddress)
                                staticcall sub_ae499bdbAddress.0x4a9fefc7 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 and referralCommissionRate > -1 / (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[12 len 20]:
                                    if (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000 > 0:
                                        require ext_code.size(sub_04d59dbfAddress)
                                        staticcall sub_04d59dbfAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > !((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000):
                                            revert with 'NH{q', 17
                                        if ext_call.return_data[0] + ((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000) <= 50000000 * 10^18:
                                            require ext_code.size(sub_04d59dbfAddress)
                                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000
                                        else:
                                            if 50000000 * 10^18 < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            require ext_code.size(sub_04d59dbfAddress)
                                            call sub_04d59dbfAddress.mint(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), -ext_call.return_data[0] + 50000000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_ae499bdbAddress)
                                        call sub_ae499bdbAddress.0xdc1694b8 with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), (userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit ReferralCommissionPaid(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12 * referralCommissionRate) - (userInfo[arg1][msg.sender].field_256 * referralCommissionRate) + (userInfo[arg1][msg.sender].field_512 * referralCommissionRate) / 10000), msg.sender, address(ext_call.return_data[0]));
                            emit Harvest(((userInfo[arg1][msg.sender].field_1024 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512), msg.sender);
    stor1 = 1
}



}
