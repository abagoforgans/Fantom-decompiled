contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint256 stor1;
address shadowAddress;
address devaddr;
uint256 shadowPerBlock;
address stor6;
mapping of uint256 lastStratHarvest;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;

function lastStratHarvest(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastStratHarvest[arg1]
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
           bool(poolInfo[arg1].field_1536),
           poolInfo[arg1].field_1536,
           poolInfo[arg1].field_1792,
           poolInfo[arg1].field_2048,
           poolInfo[arg1].field_2304
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function shadow() payable {
    return shadowAddress
}

function shadowPerBlock() payable {
    return shadowPerBlock
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    stor6 = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStart(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startBlock <= block.number:
        if poolInfo.length:
            revert with 0, 'start block passed'
    startBlock = arg1
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        poolInfo[idx].field_512 = startBlock
        idx = idx + 1
        continue 
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
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
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if userInfo[arg1][address(msg.sender)].field_0 > poolInfo[arg1].field_1280:
        revert with 0, 'SafeMath: subtraction overflow'
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
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
    stor1 = 1
}

function setStrat(uint256 arg1, bool arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_1536:
        require ext_code.size(poolInfo[arg1].field_2048)
        call poolInfo[arg1].field_2048.0x441a3e70 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_1792, poolInfo[arg1].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    poolInfo[arg1].field_1536 = uint8(arg2)
    poolInfo[arg1].field_1544 = arg3
    poolInfo[arg1].field_2048 = arg4
    poolInfo[arg1].field_1792 = arg5
    poolInfo[arg1].field_2304 = arg6
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_1536:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), poolInfo[arg1].field_2048
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < -1:
            require ext_code.size(poolInfo[arg1].field_0)
            call poolInfo[arg1].field_0.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args poolInfo[arg1].field_2048, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_code.size(poolInfo[arg1].field_2048)
        call poolInfo[arg1].field_2048.0xe2bbb158 with:
             gas gas_remaining wei
            args poolInfo[arg1].field_1792, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        if poolInfo[arg1].field_1280:
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(shadowAddress)
                    call shadowAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(shadowAddress)
                    call shadowAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if poolInfo[arg1].field_1280 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1280
                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if poolInfo[arg1].field_1280 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1280
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * shadowPerBlock) - (poolInfo[arg1].field_512 * shadowPerBlock) / block.number - poolInfo[arg1].field_512 != shadowPerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.number * shadowPerBlock) - (poolInfo[arg1].field_512 * shadowPerBlock):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(shadowAddress)
                        call shadowAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(shadowAddress)
                        call shadowAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                    else:
                        require (block.number * shadowPerBlock) - (poolInfo[arg1].field_512 * shadowPerBlock)
                        if (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / (block.number * shadowPerBlock) - (poolInfo[arg1].field_512 * shadowPerBlock) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(shadowAddress)
                        call shadowAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(shadowAddress)
                        call shadowAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                        else:
                            require (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^12 * (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1280
                            if poolInfo[arg1].field_768 + (10^12 * (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.number > poolInfo[idx].field_512:
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(shadowAddress)
                        call shadowAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(shadowAddress)
                        call shadowAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if poolInfo[idx].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if poolInfo[idx].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    else:
                        require block.number - poolInfo[idx].field_512
                        if (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock) / block.number - poolInfo[idx].field_512 != shadowPerBlock:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        else:
                            require (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock)
                            if (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.number > poolInfo[idx].field_512:
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_256:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(shadowAddress)
                        call shadowAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(shadowAddress)
                        call shadowAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if poolInfo[idx].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if poolInfo[idx].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    else:
                        require block.number - poolInfo[idx].field_512
                        if (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock) / block.number - poolInfo[idx].field_512 != shadowPerBlock:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        else:
                            require (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock)
                            if (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
    shadowPerBlock = arg1
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number > poolInfo[idx].field_512:
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        else:
                            require block.number - poolInfo[idx].field_512
                            if (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock) / block.number - poolInfo[idx].field_512 != shadowPerBlock:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(shadowAddress)
                                call shadowAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(shadowAddress)
                                call shadowAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                require (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock)
                                if (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(shadowAddress)
                                call shadowAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(shadowAddress)
                                call shadowAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    require (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
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
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4, address arg5, address arg6, uint256 arg7, uint256 arg8, bool arg9) payable {
    require calldata.size - 4 >= 288
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg9:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number > poolInfo[idx].field_512:
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        else:
                            require block.number - poolInfo[idx].field_512
                            if (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock) / block.number - poolInfo[idx].field_512 != shadowPerBlock:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(shadowAddress)
                                call shadowAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(shadowAddress)
                                call shadowAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                require (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock)
                                if (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(shadowAddress)
                                call shadowAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(shadowAddress)
                                call shadowAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    require (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
    poolInfo[poolInfo.length].field_1280 = 0
    poolInfo[poolInfo.length].field_1536 = uint8(arg4)
    poolInfo[poolInfo.length].field_1544 = arg5
    poolInfo[poolInfo.length].field_1792 = arg7
    poolInfo[poolInfo.length].field_2048 = arg6
    poolInfo[poolInfo.length].field_2304 = arg8
}

function pendingShadow(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1280:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1280
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if (block.number * shadowPerBlock) - (poolInfo[arg1].field_512 * shadowPerBlock) / block.number - poolInfo[arg1].field_512 != shadowPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * shadowPerBlock) - (poolInfo[arg1].field_512 * shadowPerBlock):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1280
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * shadowPerBlock) - (poolInfo[arg1].field_512 * shadowPerBlock)
    if (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / (block.number * shadowPerBlock) - (poolInfo[arg1].field_512 * shadowPerBlock) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if poolInfo[arg1].field_1280 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require poolInfo[arg1].field_1280
    if poolInfo[arg1].field_768 + (10^12 * (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * shadowPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * shadowPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function harvestAll() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = msg.sender
        mem[32] = sha3(idx, 9)
        if userInfo[idx][address(msg.sender)].field_0 > 0:
            if stor1 == 2:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor1 = 2
            require idx < poolInfo.length
            mem[32] = sha3(idx, 9)
            mem[0] = 8
            if block.number > poolInfo[idx].field_512:
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_256:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1280
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        else:
                            require block.number - poolInfo[idx].field_512
                            if (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock) / block.number - poolInfo[idx].field_512 != shadowPerBlock:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(shadowAddress)
                                call shadowAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(shadowAddress)
                                call shadowAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                require (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock)
                                if (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / (block.number * shadowPerBlock) - (poolInfo[idx].field_512 * shadowPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(shadowAddress)
                                call shadowAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[100] = this.address
                                mem[132] = (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(shadowAddress)
                                call shadowAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    require (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1280
                                    if poolInfo[idx].field_768 + (10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * shadowPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * shadowPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
            if userInfo[idx][address(msg.sender)].field_0 > 0:
                if not userInfo[idx][address(msg.sender)].field_0:
                    if userInfo[idx][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[idx][address(msg.sender)].field_256 > 0:
                        require ext_code.size(shadowAddress)
                        staticcall shadowAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if -userInfo[idx][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            mem[100] = msg.sender
                            mem[132] = -userInfo[idx][address(msg.sender)].field_256
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[idx][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > -userInfo[idx][address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[100] = msg.sender
                            mem[132] = -userInfo[idx][address(msg.sender)].field_256 - ext_call.return_data[0]
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[idx][address(msg.sender)].field_256 - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    require userInfo[idx][address(msg.sender)].field_0
                    if userInfo[idx][address(msg.sender)].field_0 * poolInfo[idx].field_768 / userInfo[idx][address(msg.sender)].field_0 != poolInfo[idx].field_768:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if userInfo[idx][address(msg.sender)].field_256 > userInfo[idx][address(msg.sender)].field_0 * poolInfo[idx].field_768 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[idx][address(msg.sender)].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][address(msg.sender)].field_256 > 0:
                        require ext_code.size(shadowAddress)
                        staticcall shadowAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (userInfo[idx][address(msg.sender)].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            mem[100] = msg.sender
                            mem[132] = (userInfo[idx][address(msg.sender)].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][address(msg.sender)].field_256
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[idx][address(msg.sender)].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > (userInfo[idx][address(msg.sender)].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[100] = msg.sender
                            mem[132] = (userInfo[idx][address(msg.sender)].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][address(msg.sender)].field_256 - ext_call.return_data[0]
                            require ext_code.size(shadowAddress)
                            call shadowAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[idx][address(msg.sender)].field_0 * poolInfo[idx].field_768 / 10^12) - userInfo[idx][address(msg.sender)].field_256 - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            if not userInfo[idx][address(msg.sender)].field_0:
                userInfo[idx][address(msg.sender)].field_256 = 0
            else:
                require userInfo[idx][address(msg.sender)].field_0
                if userInfo[idx][address(msg.sender)].field_0 * poolInfo[idx].field_768 / userInfo[idx][address(msg.sender)].field_0 != poolInfo[idx].field_768:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                userInfo[idx][address(msg.sender)].field_256 = userInfo[idx][address(msg.sender)].field_0 * poolInfo[idx].field_768 / 10^12
            mem[96] = 0
            emit Deposit(0, msg.sender, idx);
            stor1 = 1
        idx = idx + 1
        continue 
}



}
