contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#  - depositNFT(uint256 arg1, uint256 arg2)
#
const sub_913f0f08(?) = 4

const sub_ba7365a8(?) = 3

const sub_f4b5152c(?) = 1

const MAX_EMISSION_RATE = 100 * 10^18

const MAXIMUM_REFERRAL_COMMISSION_RATE = 1000

const TOKEN_CAP = 50000000 * 10^18

const MAXIMUM_HARVEST_INTERVAL = (48 * 24 * 3600)


address owner;
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



}
