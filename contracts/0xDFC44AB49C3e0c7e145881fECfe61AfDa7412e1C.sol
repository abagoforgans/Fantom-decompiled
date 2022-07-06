contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const MAXIMUM_REFERRAL_COMMISSION_RATE = 500

const MAXIMUM_EMISSION_RATE = 3 * 10^18


address owner;
address sub_c8e63cd2Address;
address devAddress;
address feeAddress;
uint256 sub_bf5294c8;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint8 stor10; offset 176
uint16 referralCommissionRate; offset 160
uint128 stor10; offset 160
address referralAddress;
mapping of uint8 stor11;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of uint16 stor111414077815863400510004064629973595961579173665589224203503662149373724986691;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986692;

function poolLength() payable {
    return poolInfo.length
}

function referral() payable {
    return referralAddress
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
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

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_bf5294c8(?) payable {
    return sub_bf5294c8
}

function sub_c8e63cd2(?) payable {
    return sub_c8e63cd2Address
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '!nonzero'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '!nonzero'
    devAddress = arg1
    emit SetDevAddress(msg.sender, arg1);
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
    if arg1 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'setReferralCommissionRate: invalid referral commission rate basis points'
    referralCommissionRate = arg1
    emit 0x59918637: arg1, msg.sender
}

function setReferralAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor10.field_176):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The Referral contract address is changed already'
    referralAddress = arg1
    Mask(96, 0, stor10.field_160) = 0
    emit SetReferralAddress(msg.sender, arg1);
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_c8e63cd2Address)
    staticcall sub_c8e63cd2Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 1250000 * 10^18:
        return 0
    if arg2 < arg1:
        revert with 0, 17
    return (arg2 - arg1)
}

function updateStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startBlock <= block.number:
        revert with 0, 'Farm already started'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        poolInfo[idx].field_512 = arg1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    startBlock = arg1
    emit UpdateStartBlock(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2, uint16 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: invalid deposit fee basis points'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
    emit 0x6b15d9cc: poolInfo[arg1].field_0, arg2, poolInfo[arg1].field_512, arg3, msg.sender
}

function add(uint256 arg1, address arg2, uint16 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor11[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > 500:
        revert with 0, 'add: invalid deposit fee basis points'
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    stor11[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF652[stor6.length] = arg1
    if block.number > startBlock:
        storF652[stor6.length] = block.number
        storF652[stor6.length] = 0
        storF652[stor6.length] = arg3
        storF652[stor6.length] = 0
        emit 0xa2c51573: address(arg2), arg1, block.number, arg3, msg.sender
    else:
        storF652[stor6.length] = startBlock
        storF652[stor6.length] = 0
        storF652[stor6.length] = arg3
        storF652[stor6.length] = 0
        emit 0xa2c51573: address(arg2), arg1, startBlock, arg3, msg.sender
}

function sub_dadbe423(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1280:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if totalAllocPoint <= 0:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require ext_code.size(sub_c8e63cd2Address)
    staticcall sub_c8e63cd2Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 1250000 * 10^18:
        if False and sub_bf5294c8 > 0:
            revert with 0, 17
        if False and poolInfo[arg1].field_256 > 0:
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not poolInfo[arg1].field_1280:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.number < poolInfo[arg1].field_512:
        revert with 0, 17
    if block.number - poolInfo[arg1].field_512 and sub_bf5294c8 > -1 / block.number - poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.number * sub_bf5294c8) - (poolInfo[arg1].field_512 * sub_bf5294c8) and poolInfo[arg1].field_256 > -1 / (block.number * sub_bf5294c8) - (poolInfo[arg1].field_512 * sub_bf5294c8):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not poolInfo[arg1].field_1280:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        if poolInfo[arg1].field_1280:
            if poolInfo[arg1].field_256:
                require ext_code.size(sub_c8e63cd2Address)
                staticcall sub_c8e63cd2Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 1250000 * 10^18:
                    if False and sub_bf5294c8 > 0:
                        revert with 0, 17
                    if False and poolInfo[arg1].field_256 > 0:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if 0 / totalAllocPoint and 105 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    require ext_code.size(sub_c8e63cd2Address)
                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !(105 * 0 / totalAllocPoint / 100):
                        revert with 0, 17
                    require ext_code.size(sub_c8e63cd2Address)
                    if ext_call.return_data[0] + (105 * 0 / totalAllocPoint / 100) <= 1250000 * 10^18:
                        call sub_c8e63cd2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c8e63cd2Address)
                        call sub_c8e63cd2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 1250000 * 10^18:
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1250000 * 10^18 < ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), -ext_call.return_data[0] + 1250000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1280:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                else:
                    if block.number < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[arg1].field_512 and sub_bf5294c8 > -1 / block.number - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (block.number * sub_bf5294c8) - (poolInfo[arg1].field_512 * sub_bf5294c8) and poolInfo[arg1].field_256 > -1 / (block.number * sub_bf5294c8) - (poolInfo[arg1].field_512 * sub_bf5294c8):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint and 105 > -1 / (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 0, 17
                    require ext_code.size(sub_c8e63cd2Address)
                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !(105 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / 100):
                        revert with 0, 17
                    require ext_code.size(sub_c8e63cd2Address)
                    if ext_call.return_data[0] + (105 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / 100) <= 1250000 * 10^18:
                        call sub_c8e63cd2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c8e63cd2Address)
                        call sub_c8e63cd2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 1250000 * 10^18:
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1250000 * 10^18 < ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), -ext_call.return_data[0] + 1250000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1280:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.number > poolInfo[idx].field_512:
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_256:
                    require ext_code.size(sub_c8e63cd2Address)
                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _45 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_45] >= 1250000 * 10^18:
                        if False and sub_bf5294c8 > 0:
                            revert with 0, 17
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if 0 / totalAllocPoint and 105 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        require ext_code.size(sub_c8e63cd2Address)
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _49 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_49] > !(105 * 0 / totalAllocPoint / 100):
                            revert with 0, 17
                        require ext_code.size(sub_c8e63cd2Address)
                        if mem[_49] + (105 * 0 / totalAllocPoint / 100) <= 1250000 * 10^18:
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _57 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_57] < 1250000 * 10^18:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _66 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _70 = mem[_66]
                                if 1250000 * 10^18 < mem[_66]:
                                    revert with 0, 17
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = -_70 + 1250000 * 10^18
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -_70 + 1250000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if not poolInfo[idx].field_1280:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    else:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and sub_bf5294c8 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * sub_bf5294c8) - (poolInfo[idx].field_512 * sub_bf5294c8) and poolInfo[idx].field_256 > -1 / (block.number * sub_bf5294c8) - (poolInfo[idx].field_512 * sub_bf5294c8):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint and 105 > -1 / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        require ext_code.size(sub_c8e63cd2Address)
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _53 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_53] > !(105 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / 100):
                            revert with 0, 17
                        require ext_code.size(sub_c8e63cd2Address)
                        if mem[_53] + (105 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / 100) <= 1250000 * 10^18:
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _65 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_65] < 1250000 * 10^18:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _75 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _78 = mem[_75]
                                if 1250000 * 10^18 < mem[_75]:
                                    revert with 0, 17
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = -_78 + 1250000 * 10^18
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -_78 + 1250000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not poolInfo[idx].field_1280:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 3 * 10^18:
        revert with 0, 'Too High'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.number > poolInfo[idx].field_512:
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_256:
                    require ext_code.size(sub_c8e63cd2Address)
                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _53 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_53] >= 1250000 * 10^18:
                        if False and sub_bf5294c8 > 0:
                            revert with 0, 17
                        if False and poolInfo[idx].field_256 > 0:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if 0 / totalAllocPoint and 105 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        require ext_code.size(sub_c8e63cd2Address)
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _57 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_57] > !(105 * 0 / totalAllocPoint / 100):
                            revert with 0, 17
                        require ext_code.size(sub_c8e63cd2Address)
                        if mem[_57] + (105 * 0 / totalAllocPoint / 100) <= 1250000 * 10^18:
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _65 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_65] < 1250000 * 10^18:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _74 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _78 = mem[_74]
                                if 1250000 * 10^18 < mem[_74]:
                                    revert with 0, 17
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = -_78 + 1250000 * 10^18
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -_78 + 1250000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if not poolInfo[idx].field_1280:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    else:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and sub_bf5294c8 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * sub_bf5294c8) - (poolInfo[idx].field_512 * sub_bf5294c8) and poolInfo[idx].field_256 > -1 / (block.number * sub_bf5294c8) - (poolInfo[idx].field_512 * sub_bf5294c8):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint and 105 > -1 / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        require ext_code.size(sub_c8e63cd2Address)
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _61 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_61] > !(105 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / 100):
                            revert with 0, 17
                        require ext_code.size(sub_c8e63cd2Address)
                        if mem[_61] + (105 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / 100) <= 1250000 * 10^18:
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _73 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_73] < 1250000 * 10^18:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _83 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _86 = mem[_83]
                                if 1250000 * 10^18 < mem[_83]:
                                    revert with 0, 17
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = -_86 + 1250000 * 10^18
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -_86 + 1250000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        if (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not poolInfo[idx].field_1280:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_bf5294c8 = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}



}
