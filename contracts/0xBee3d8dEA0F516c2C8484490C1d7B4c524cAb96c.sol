contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const MAXIMUM_DEPOSIT_FEE_BP = 1000

const MAXIMUM_HARVEST_INTERVAL = (168 * 24 * 3600)


address owner;
address stor1;
uint256 stor2;
address sub_58759157Address;
address devAddr;
address sub_ace45ba9Address;
uint256 sub_418f2e25;
address feeAddress;
address sub_ce8990ecAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 totalLockedUpRewards;
mapping of address referrers;
mapping of uint256 referredCount;
mapping of uint8 stor16;
mapping of uint256 poolIdForLpToken;

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
           poolInfo[arg1].field_1280
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function getPoolIdForLpToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor16[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73676574506f6f6c4964466f724c70546f6b656e3a20646f206e6f742065786973,
                    mem[197 len 31]
    return poolIdForLpToken[address(arg1)]
}

function referredCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return referredCount[arg1]
}

function feeAddress() payable {
    return feeAddress
}

function sub_418f2e25(?) payable {
    return sub_418f2e25
}

function totalLockedUpRewards() payable {
    return totalLockedUpRewards
}

function startBlock() payable {
    return startBlock
}

function referrers(address arg1) payable {
    require calldata.size - 4 >= 32
    return referrers[arg1]
}

function sub_58759157(?) payable {
    return sub_58759157Address
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768
}

function poolIdForLpAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    return poolIdForLpToken[arg1]
}

function sub_ace45ba9(?) payable {
    return sub_ace45ba9Address
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor16[arg1])
}

function sub_ce8990ec(?) payable {
    return sub_ce8990ecAddress
}

function devAddr() payable {
    return devAddr
}

function _fallback() payable {
    revert
}

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return block.timestamp >= userInfo[arg1][address(arg2)].field_768
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'dev: invalid address'
    if devAddr != msg.sender:
        revert with 0, 'dev: wut?'
    devAddr = arg1
    emit SetDev2Address(msg.sender, arg1);
}

function setDev2Address(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'dev2: invalid address'
    if sub_ace45ba9Address != msg.sender:
        revert with 0, 'dev2: wut?'
    sub_ace45ba9Address = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'setFeeAddress: invalid address'
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function setFee2Address(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'setFee2Address: invalid address'
    if sub_ce8990ecAddress != msg.sender:
        revert with 0, 'setFee2Address: FORBIDDEN'
    sub_ce8990ecAddress = arg1
    emit SetFee2Address(msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    require arg1 < poolInfo.length
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    userInfo[arg1][address(msg.sender)].field_512 = 0
    userInfo[arg1][address(msg.sender)].field_768 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    stor2 = 1
}

function updateRewards(address[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner == msg.sender:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _30 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_30))
            call address(_30).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _33 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_33))
            call address(_33).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 9
        if block.number > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 250 * 0 / totalAllocPoint / 0 / totalAllocPoint != 250:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 250 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_ace45ba9Address, 0
                        else:
                            require 0 / totalAllocPoint
                            if 750 * 0 / totalAllocPoint / 0 / totalAllocPoint != 750:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_ace45ba9Address, 750 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(sub_58759157Address)
                        call sub_58759157Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[idx].field_512
                        if (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25) / block.number - poolInfo[idx].field_512 != sub_418f2e25:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 250 * 0 / totalAllocPoint / 0 / totalAllocPoint != 250:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 250 * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_ace45ba9Address, 0
                            else:
                                require 0 / totalAllocPoint
                                if 750 * 0 / totalAllocPoint / 0 / totalAllocPoint != 750:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_ace45ba9Address, 750 * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25)
                            if (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                require (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                if 250 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint != 250:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 250 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_ace45ba9Address, 0
                            else:
                                require (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                if 750 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint != 750:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_ace45ba9Address, 750 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 9
        if block.number > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 250 * 0 / totalAllocPoint / 0 / totalAllocPoint != 250:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 250 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_ace45ba9Address, 0
                        else:
                            require 0 / totalAllocPoint
                            if 750 * 0 / totalAllocPoint / 0 / totalAllocPoint != 750:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_ace45ba9Address, 750 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(sub_58759157Address)
                        call sub_58759157Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[idx].field_512
                        if (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25) / block.number - poolInfo[idx].field_512 != sub_418f2e25:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 250 * 0 / totalAllocPoint / 0 / totalAllocPoint != 250:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 250 * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_ace45ba9Address, 0
                            else:
                                require 0 / totalAllocPoint
                                if 750 * 0 / totalAllocPoint / 0 / totalAllocPoint != 750:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_ace45ba9Address, 750 * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25)
                            if (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                require (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                if 250 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint != 250:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 250 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint:
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_ace45ba9Address, 0
                            else:
                                require (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                if 750 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint != 750:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_ace45ba9Address, 750 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
    sub_418f2e25 = arg1
    emit UpdateEmissionRate(msg.sender, arg1);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_58759157Address)
                        call sub_58759157Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 0
                    else:
                        require 0 / totalAllocPoint
                        if 250 * 0 / totalAllocPoint / 0 / totalAllocPoint != 250:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_58759157Address)
                        call sub_58759157Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddr, 250 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_58759157Address)
                        call sub_58759157Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_ace45ba9Address, 0
                    else:
                        require 0 / totalAllocPoint
                        if 750 * 0 / totalAllocPoint / 0 / totalAllocPoint != 750:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(sub_58759157Address)
                        call sub_58759157Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_ace45ba9Address, 750 * 0 / totalAllocPoint / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_58759157Address)
                    call sub_58759157Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * sub_418f2e25) - (poolInfo[arg1].field_512 * sub_418f2e25) / block.number - poolInfo[arg1].field_512 != sub_418f2e25:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.number * sub_418f2e25) - (poolInfo[arg1].field_512 * sub_418f2e25):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require 0 / totalAllocPoint
                            if 250 * 0 / totalAllocPoint / 0 / totalAllocPoint != 250:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 250 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_ace45ba9Address, 0
                        else:
                            require 0 / totalAllocPoint
                            if 750 * 0 / totalAllocPoint / 0 / totalAllocPoint != 750:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_ace45ba9Address, 750 * 0 / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_58759157Address)
                        call sub_58759157Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (block.number * sub_418f2e25) - (poolInfo[arg1].field_512 * sub_418f2e25)
                        if (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / (block.number * sub_418f2e25) - (poolInfo[arg1].field_512 * sub_418f2e25) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint:
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 0
                        else:
                            require (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint
                            if 250 * (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint != 250:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddr, 250 * (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint:
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_ace45ba9Address, 0
                        else:
                            require (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint
                            if 750 * (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint != 750:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_ace45ba9Address, 750 * (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_58759157Address)
                        call sub_58759157Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^12 * (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function set(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4 > 168 * 24 * 3600:
        revert with 0, 'set: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.number > poolInfo[idx].field_512:
                mem[100] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 250 * 0 / totalAllocPoint / 0 / totalAllocPoint != 250:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 250 * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_ace45ba9Address, 0
                            else:
                                require 0 / totalAllocPoint
                                if 750 * 0 / totalAllocPoint / 0 / totalAllocPoint != 750:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_ace45ba9Address, 750 * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - poolInfo[idx].field_512
                            if (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25) / block.number - poolInfo[idx].field_512 != sub_418f2e25:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 0
                                else:
                                    require 0 / totalAllocPoint
                                    if 250 * 0 / totalAllocPoint / 0 / totalAllocPoint != 250:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 250 * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_ace45ba9Address, 0
                                else:
                                    require 0 / totalAllocPoint
                                    if 750 * 0 / totalAllocPoint / 0 / totalAllocPoint != 750:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_ace45ba9Address, 750 * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25)
                                if (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 0
                                else:
                                    require (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                    if 250 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint != 250:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 250 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_ace45ba9Address, 0
                                else:
                                    require (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                    if 750 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint != 750:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_ace45ba9Address, 750 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
    poolInfo[arg1].field_1280 = arg4
}

function add(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if stor16[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4 > 168 * 24 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.number > poolInfo[idx].field_512:
                mem[100] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 0
                            else:
                                require 0 / totalAllocPoint
                                if 250 * 0 / totalAllocPoint / 0 / totalAllocPoint != 250:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddr, 250 * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_ace45ba9Address, 0
                            else:
                                require 0 / totalAllocPoint
                                if 750 * 0 / totalAllocPoint / 0 / totalAllocPoint != 750:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args sub_ace45ba9Address, 750 * 0 / totalAllocPoint / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(sub_58759157Address)
                            call sub_58759157Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - poolInfo[idx].field_512
                            if (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25) / block.number - poolInfo[idx].field_512 != sub_418f2e25:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 0
                                else:
                                    require 0 / totalAllocPoint
                                    if 250 * 0 / totalAllocPoint / 0 / totalAllocPoint != 250:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 250 * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_ace45ba9Address, 0
                                else:
                                    require 0 / totalAllocPoint
                                    if 750 * 0 / totalAllocPoint / 0 / totalAllocPoint != 750:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_ace45ba9Address, 750 * 0 / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25)
                                if (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / (block.number * sub_418f2e25) - (poolInfo[idx].field_512 * sub_418f2e25) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 0
                                else:
                                    require (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                    if 250 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint != 250:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddr, 250 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint:
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_ace45ba9Address, 0
                                else:
                                    require (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                    if 750 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint != 750:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    require ext_code.size(sub_58759157Address)
                                    call sub_58759157Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_ace45ba9Address, 750 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_58759157Address)
                                call sub_58759157Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_418f2e25 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_418f2e25 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor16[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
    poolInfo[poolInfo.length].field_1280 = arg4
    poolIdForLpToken[address(arg2)] = poolInfo.length - 1
}

function sub_c8792ab9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    require block.number - poolInfo[arg1].field_512
    if (block.number * sub_418f2e25) - (poolInfo[arg1].field_512 * sub_418f2e25) / block.number - poolInfo[arg1].field_512 != sub_418f2e25:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * sub_418f2e25) - (poolInfo[arg1].field_512 * sub_418f2e25):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    require (block.number * sub_418f2e25) - (poolInfo[arg1].field_512 * sub_418f2e25)
    if (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / (block.number * sub_418f2e25) - (poolInfo[arg1].field_512 * sub_418f2e25) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    require (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfo[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_418f2e25 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_418f2e25 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
}



}
