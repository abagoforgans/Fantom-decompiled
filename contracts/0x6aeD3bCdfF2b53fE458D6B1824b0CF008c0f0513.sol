contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1, uint256 arg2)
#
const sub_edbd9207(?) = 10^18


address owner;
address fooAddress;
uint256 paidOut;
uint256 sub_7d436540;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 endBlock;

function poolLength() payable {
    return poolInfo.length
}

function endBlock() payable {
    return endBlock
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function startBlock() payable {
    return startBlock
}

function paidOut() payable {
    return paidOut
}

function sub_7d436540(?) payable {
    return sub_7d436540
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function deposited(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][address(arg2)].field_0
}

function foo() payable {
    return fooAddress
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

function totalPending() payable {
    if block.number <= startBlock:
        return 0
    if not sub_7d436540:
        if paidOut > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -paidOut
    require sub_7d436540
    if block.number < endBlock:
        if (block.number * sub_7d436540) - (startBlock * sub_7d436540) / sub_7d436540 != block.number - startBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if paidOut > (block.number * sub_7d436540) - (startBlock * sub_7d436540):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((block.number * sub_7d436540) - (startBlock * sub_7d436540) - paidOut)
    if (endBlock * sub_7d436540) - (startBlock * sub_7d436540) / sub_7d436540 != endBlock - startBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if paidOut > (endBlock * sub_7d436540) - (startBlock * sub_7d436540):
        revert with 0, 'SafeMath: subtraction overflow'
    return ((endBlock * sub_7d436540) - (startBlock * sub_7d436540) - paidOut)
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
}

function fund(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number >= endBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7766756e643a20746f6f206c6174652c20746865206661726d20697320636c6f7365,
                    mem[198 len 30]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(fooAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call fooAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if sub_7d436540 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_7d436540
    endBlock += arg1 / sub_7d436540
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number < endBlock:
        if block.number > poolInfo[arg1].field_512:
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
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
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540) / block.number - poolInfo[arg1].field_512 != sub_7d436540:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (block.number * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540)
                        if (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / (block.number * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint
                            if 1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_512 = block.number
    else:
        if endBlock > poolInfo[arg1].field_512:
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[arg1].field_512 = endBlock
            else:
                if poolInfo[arg1].field_512 > endBlock:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not endBlock - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require endBlock - poolInfo[arg1].field_512
                    if (endBlock * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540) / endBlock - poolInfo[arg1].field_512 != sub_7d436540:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (endBlock * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (endBlock * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540)
                        if (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / (endBlock * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint
                            if 1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.number < endBlock:
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _223 = mem[64]
            mem[64] = mem[64] + 64
            mem[_223] = 30
            mem[_223 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _225 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_225 + idx + 68] = mem[_223 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_225 + 68] = mem[_225 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _225 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_243] = 26
                mem[_243 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _250 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_250 + idx + 68] = mem[_243 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_250 + 68] = mem[_250 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _250 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _298 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_298] = 26
                    mem[_298 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _307 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_307 + idx + 68] = mem[_298 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_307 + 68] = mem[_307 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _307 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _306 = mem[64]
                mem[64] = mem[64] + 64
                mem[_306] = 26
                mem[_306 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _324 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_324 + idx + 68] = mem[_306 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_324 + 68] = mem[_324 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _324 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) / block.number - poolInfo[idx].field_512 != sub_7d436540:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540):
                _249 = mem[64]
                mem[64] = mem[64] + 64
                mem[_249] = 26
                mem[_249 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _258 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_258 + idx + 68] = mem[_249 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_258 + 68] = mem[_258 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _258 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _305 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_305] = 26
                    mem[_305 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _321 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_321 + idx + 68] = mem[_305 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_321 + 68] = mem[_321 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _321 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _320 = mem[64]
                mem[64] = mem[64] + 64
                mem[_320] = 26
                mem[_320 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _345 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_345 + idx + 68] = mem[_320 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_345 + 68] = mem[_345 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _345 + -mem[64] + 100
            require (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540)
            if (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _257 = mem[64]
            mem[64] = mem[64] + 64
            mem[_257] = 26
            mem[_257 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _271 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_271 + idx + 68] = mem[_257 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_271 + 68] = mem[_271 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _271 + -mem[64] + 100
            require totalAllocPoint
            if not (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint:
                _319 = mem[64]
                mem[64] = mem[64] + 64
                mem[_319] = 26
                mem[_319 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _342 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_342 + idx + 68] = mem[_319 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_342 + 68] = mem[_342 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _342 + -mem[64] + 100
            require (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint
            if 1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _341 = mem[64]
            mem[64] = mem[64] + 64
            mem[_341] = 26
            mem[_341 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _373 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_373 + idx + 68] = mem[_341 + idx + 32]
                idx = idx + 32
                continue 
            mem[_373 + 68] = mem[_373 + 74 len 26]
            revert with memory
              from mem[64]
               len _373 + -mem[64] + 100
        if endBlock <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = endBlock
            idx = idx + 1
            continue 
        _224 = mem[64]
        mem[64] = mem[64] + 64
        mem[_224] = 30
        mem[_224 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > endBlock:
            _228 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_228 + idx + 68] = mem[_224 + idx + 32]
                idx = idx + 32
                continue 
            mem[_228 + 68] = mem[_228 + 70 len 30]
            revert with memory
              from mem[64]
               len _228 + -mem[64] + 100
        if not endBlock - poolInfo[idx].field_512:
            _244 = mem[64]
            mem[64] = mem[64] + 64
            mem[_244] = 26
            mem[_244 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _254 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_254 + idx + 68] = mem[_244 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_254 + 68] = mem[_254 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _254 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _300 = mem[64]
                mem[64] = mem[64] + 64
                mem[_300] = 26
                mem[_300 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _312 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_312 + idx + 68] = mem[_300 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_312 + 68] = mem[_312 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _312 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _311 = mem[64]
            mem[64] = mem[64] + 64
            mem[_311] = 26
            mem[_311 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _333 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_333 + idx + 68] = mem[_311 + idx + 32]
                idx = idx + 32
                continue 
            mem[_333 + 68] = mem[_333 + 74 len 26]
            revert with memory
              from mem[64]
               len _333 + -mem[64] + 100
        require endBlock - poolInfo[idx].field_512
        if (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) / endBlock - poolInfo[idx].field_512 != sub_7d436540:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540):
            _253 = mem[64]
            mem[64] = mem[64] + 64
            mem[_253] = 26
            mem[_253 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _263 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_263 + idx + 68] = mem[_253 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_263 + 68] = mem[_263 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _263 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _310 = mem[64]
                mem[64] = mem[64] + 64
                mem[_310] = 26
                mem[_310 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _330 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_330 + idx + 68] = mem[_310 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_330 + 68] = mem[_330 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _330 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _329 = mem[64]
            mem[64] = mem[64] + 64
            mem[_329] = 26
            mem[_329 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _355 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_355 + idx + 68] = mem[_329 + idx + 32]
                idx = idx + 32
                continue 
            mem[_355 + 68] = mem[_355 + 74 len 26]
            revert with memory
              from mem[64]
               len _355 + -mem[64] + 100
        require (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540)
        if (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _262 = mem[64]
        mem[64] = mem[64] + 64
        mem[_262] = 26
        mem[_262 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _276 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_276 + idx + 68] = mem[_262 + idx + 32]
                idx = idx + 32
                continue 
            mem[_276 + 68] = mem[_276 + 74 len 26]
            revert with memory
              from mem[64]
               len _276 + -mem[64] + 100
        require totalAllocPoint
        if not (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint:
            _328 = mem[64]
            mem[64] = mem[64] + 64
            mem[_328] = 26
            mem[_328 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _352 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_352 + idx + 68] = mem[_328 + idx + 32]
                idx = idx + 32
                continue 
            mem[_352 + 68] = mem[_352 + 74 len 26]
            revert with memory
              from mem[64]
               len _352 + -mem[64] + 100
        require (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint
        if 1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _351 = mem[64]
        mem[64] = mem[64] + 64
        mem[_351] = 26
        mem[_351 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _380 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_380 + idx + 68] = mem[_351 + idx + 32]
            idx = idx + 32
            continue 
        mem[_380 + 68] = mem[_380 + 74 len 26]
        revert with memory
          from mem[64]
           len _380 + -mem[64] + 100
}

function sub_09990cc9(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10^18:
        revert with 0, 'setFooPerSecond: too many foos!'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.number < endBlock:
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _227 = mem[64]
            mem[64] = mem[64] + 64
            mem[_227] = 30
            mem[_227 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _229 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_229 + idx + 68] = mem[_227 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_229 + 68] = mem[_229 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _229 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _247 = mem[64]
                mem[64] = mem[64] + 64
                mem[_247] = 26
                mem[_247 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _254 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_254 + idx + 68] = mem[_247 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_254 + 68] = mem[_254 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _254 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _302 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_302] = 26
                    mem[_302 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _311 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_311 + idx + 68] = mem[_302 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_311 + 68] = mem[_311 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _311 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _310 = mem[64]
                mem[64] = mem[64] + 64
                mem[_310] = 26
                mem[_310 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _328 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_328 + idx + 68] = mem[_310 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_328 + 68] = mem[_328 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _328 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) / block.number - poolInfo[idx].field_512 != sub_7d436540:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540):
                _253 = mem[64]
                mem[64] = mem[64] + 64
                mem[_253] = 26
                mem[_253 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _262 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_262 + idx + 68] = mem[_253 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_262 + 68] = mem[_262 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _262 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _309 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_309] = 26
                    mem[_309 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _325 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_325 + idx + 68] = mem[_309 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_325 + 68] = mem[_325 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _325 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _324 = mem[64]
                mem[64] = mem[64] + 64
                mem[_324] = 26
                mem[_324 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _349 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_349 + idx + 68] = mem[_324 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_349 + 68] = mem[_349 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _349 + -mem[64] + 100
            require (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540)
            if (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _261 = mem[64]
            mem[64] = mem[64] + 64
            mem[_261] = 26
            mem[_261 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _275 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_275 + idx + 68] = mem[_261 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_275 + 68] = mem[_275 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _275 + -mem[64] + 100
            require totalAllocPoint
            if not (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint:
                _323 = mem[64]
                mem[64] = mem[64] + 64
                mem[_323] = 26
                mem[_323 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _346 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_346 + idx + 68] = mem[_323 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_346 + 68] = mem[_346 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _346 + -mem[64] + 100
            require (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint
            if 1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _345 = mem[64]
            mem[64] = mem[64] + 64
            mem[_345] = 26
            mem[_345 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _377 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_377 + idx + 68] = mem[_345 + idx + 32]
                idx = idx + 32
                continue 
            mem[_377 + 68] = mem[_377 + 74 len 26]
            revert with memory
              from mem[64]
               len _377 + -mem[64] + 100
        if endBlock <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = endBlock
            idx = idx + 1
            continue 
        _228 = mem[64]
        mem[64] = mem[64] + 64
        mem[_228] = 30
        mem[_228 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > endBlock:
            _232 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_232 + idx + 68] = mem[_228 + idx + 32]
                idx = idx + 32
                continue 
            mem[_232 + 68] = mem[_232 + 70 len 30]
            revert with memory
              from mem[64]
               len _232 + -mem[64] + 100
        if not endBlock - poolInfo[idx].field_512:
            _248 = mem[64]
            mem[64] = mem[64] + 64
            mem[_248] = 26
            mem[_248 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _258 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_258 + idx + 68] = mem[_248 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_258 + 68] = mem[_258 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _258 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _304 = mem[64]
                mem[64] = mem[64] + 64
                mem[_304] = 26
                mem[_304 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _316 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_316 + idx + 68] = mem[_304 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_316 + 68] = mem[_316 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _316 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _315 = mem[64]
            mem[64] = mem[64] + 64
            mem[_315] = 26
            mem[_315 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _337 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_337 + idx + 68] = mem[_315 + idx + 32]
                idx = idx + 32
                continue 
            mem[_337 + 68] = mem[_337 + 74 len 26]
            revert with memory
              from mem[64]
               len _337 + -mem[64] + 100
        require endBlock - poolInfo[idx].field_512
        if (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) / endBlock - poolInfo[idx].field_512 != sub_7d436540:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540):
            _257 = mem[64]
            mem[64] = mem[64] + 64
            mem[_257] = 26
            mem[_257 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _267 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_267 + idx + 68] = mem[_257 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_267 + 68] = mem[_267 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _267 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _314 = mem[64]
                mem[64] = mem[64] + 64
                mem[_314] = 26
                mem[_314 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _334 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_334 + idx + 68] = mem[_314 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_334 + 68] = mem[_334 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _334 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _333 = mem[64]
            mem[64] = mem[64] + 64
            mem[_333] = 26
            mem[_333 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _359 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_359 + idx + 68] = mem[_333 + idx + 32]
                idx = idx + 32
                continue 
            mem[_359 + 68] = mem[_359 + 74 len 26]
            revert with memory
              from mem[64]
               len _359 + -mem[64] + 100
        require (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540)
        if (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _266 = mem[64]
        mem[64] = mem[64] + 64
        mem[_266] = 26
        mem[_266 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _280 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_280 + idx + 68] = mem[_266 + idx + 32]
                idx = idx + 32
                continue 
            mem[_280 + 68] = mem[_280 + 74 len 26]
            revert with memory
              from mem[64]
               len _280 + -mem[64] + 100
        require totalAllocPoint
        if not (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint:
            _332 = mem[64]
            mem[64] = mem[64] + 64
            mem[_332] = 26
            mem[_332 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _356 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_356 + idx + 68] = mem[_332 + idx + 32]
                idx = idx + 32
                continue 
            mem[_356 + 68] = mem[_356 + 74 len 26]
            revert with memory
              from mem[64]
               len _356 + -mem[64] + 100
        require (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint
        if 1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _355 = mem[64]
        mem[64] = mem[64] + 64
        mem[_355] = 26
        mem[_355 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _384 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_384 + idx + 68] = mem[_355 + idx + 32]
            idx = idx + 32
            continue 
        mem[_384 + 68] = mem[_384 + 74 len 26]
        revert with memory
          from mem[64]
           len _384 + -mem[64] + 100
    sub_7d436540 = arg1
}

function pending(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
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
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.number < endBlock:
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
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
        require block.number - poolInfo[arg1].field_512
        if (block.number * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540) / block.number - poolInfo[arg1].field_512 != sub_7d436540:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540):
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
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540)
        if (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / (block.number * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint
        if 1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > endBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not endBlock - poolInfo[arg1].field_512:
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
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    require endBlock - poolInfo[arg1].field_512
    if (endBlock * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540) / endBlock - poolInfo[arg1].field_512 != sub_7d436540:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (endBlock * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540):
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
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (endBlock * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540)
    if (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / (endBlock * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint
    if 1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if block.number < endBlock:
                if block.number <= poolInfo[idx].field_512:
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _264 = mem[64]
                mem[64] = mem[64] + 64
                mem[_264] = 30
                mem[_264 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _267 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_267 + idx + 68] = mem[_264 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_267 + 68] = mem[_267 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _267 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _285 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_285] = 26
                    mem[_285 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _292 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_292 + idx + 68] = mem[_285 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_292 + 68] = mem[_292 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _292 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _340 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_340] = 26
                        mem[_340 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _349 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_349 + idx + 68] = mem[_340 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_349 + 68] = mem[_349 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _349 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _348 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_348] = 26
                    mem[_348 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _366 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_366 + idx + 68] = mem[_348 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_366 + 68] = mem[_366 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _366 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) / block.number - poolInfo[idx].field_512 != sub_7d436540:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540):
                    _291 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_291] = 26
                    mem[_291 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _300 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_300 + idx + 68] = mem[_291 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_300 + 68] = mem[_300 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _300 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _347 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_347] = 26
                        mem[_347 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _363 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_363 + idx + 68] = mem[_347 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_363 + 68] = mem[_363 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _363 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _362 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_362] = 26
                    mem[_362 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _387 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_387 + idx + 68] = mem[_362 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_387 + 68] = mem[_387 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _387 + -mem[64] + 100
                require (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540)
                if (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _299 = mem[64]
                mem[64] = mem[64] + 64
                mem[_299] = 26
                mem[_299 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _313 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_313 + idx + 68] = mem[_299 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_313 + 68] = mem[_313 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _313 + -mem[64] + 100
                require totalAllocPoint
                if not (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint:
                    _361 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_361] = 26
                    mem[_361 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _384 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_384 + idx + 68] = mem[_361 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_384 + 68] = mem[_384 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _384 + -mem[64] + 100
                require (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint
                if 1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _383 = mem[64]
                mem[64] = mem[64] + 64
                mem[_383] = 26
                mem[_383 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _415 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_415 + idx + 68] = mem[_383 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_415 + 68] = mem[_415 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _415 + -mem[64] + 100
            if endBlock <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = endBlock
                idx = idx + 1
                continue 
            _265 = mem[64]
            mem[64] = mem[64] + 64
            mem[_265] = 30
            mem[_265 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > endBlock:
                _270 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_270 + idx + 68] = mem[_265 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_270 + 68] = mem[_270 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _270 + -mem[64] + 100
            if not endBlock - poolInfo[idx].field_512:
                _286 = mem[64]
                mem[64] = mem[64] + 64
                mem[_286] = 26
                mem[_286 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _296 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_296 + idx + 68] = mem[_286 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_296 + 68] = mem[_296 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _296 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _342 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_342] = 26
                    mem[_342 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _354 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_354 + idx + 68] = mem[_342 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_354 + 68] = mem[_354 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _354 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _353 = mem[64]
                mem[64] = mem[64] + 64
                mem[_353] = 26
                mem[_353 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _375 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_375 + idx + 68] = mem[_353 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_375 + 68] = mem[_375 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _375 + -mem[64] + 100
            require endBlock - poolInfo[idx].field_512
            if (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) / endBlock - poolInfo[idx].field_512 != sub_7d436540:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540):
                _295 = mem[64]
                mem[64] = mem[64] + 64
                mem[_295] = 26
                mem[_295 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _305 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_305 + idx + 68] = mem[_295 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_305 + 68] = mem[_305 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _305 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _352 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_352] = 26
                    mem[_352 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _372 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_372 + idx + 68] = mem[_352 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_372 + 68] = mem[_372 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _372 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _371 = mem[64]
                mem[64] = mem[64] + 64
                mem[_371] = 26
                mem[_371 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _397 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_397 + idx + 68] = mem[_371 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_397 + 68] = mem[_397 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _397 + -mem[64] + 100
            require (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540)
            if (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _304 = mem[64]
            mem[64] = mem[64] + 64
            mem[_304] = 26
            mem[_304 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _318 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_318 + idx + 68] = mem[_304 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_318 + 68] = mem[_318 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _318 + -mem[64] + 100
            require totalAllocPoint
            if not (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint:
                _370 = mem[64]
                mem[64] = mem[64] + 64
                mem[_370] = 26
                mem[_370 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _394 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_394 + idx + 68] = mem[_370 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_394 + 68] = mem[_394 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _394 + -mem[64] + 100
            require (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint
            if 1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _393 = mem[64]
            mem[64] = mem[64] + 64
            mem[_393] = 26
            mem[_393 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _422 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_422 + idx + 68] = mem[_393 + idx + 32]
                idx = idx + 32
                continue 
            mem[_422 + 68] = mem[_422 + 74 len 26]
            revert with memory
              from mem[64]
               len _422 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if poolInfo[idx].field_0 == arg2:
            revert with 0, 'add: pool already exists!!!!'
        idx = idx + 1
        continue 
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if block.number < endBlock:
                if block.number <= poolInfo[idx].field_512:
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _524 = mem[64]
                mem[64] = mem[64] + 64
                mem[_524] = 30
                mem[_524 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _526 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_526 + idx + 68] = mem[_524 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_526 + 68] = mem[_526 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _526 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _544 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_544] = 26
                    mem[_544 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _551 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_551 + idx + 68] = mem[_544 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_551 + 68] = mem[_551 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _551 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _599 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_599] = 26
                        mem[_599 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _608 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_608 + idx + 68] = mem[_599 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_608 + 68] = mem[_608 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _608 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _607 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_607] = 26
                    mem[_607 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _625 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_625 + idx + 68] = mem[_607 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_625 + 68] = mem[_625 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _625 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) / block.number - poolInfo[idx].field_512 != sub_7d436540:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540):
                    _550 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_550] = 26
                    mem[_550 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _559 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_559 + idx + 68] = mem[_550 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_559 + 68] = mem[_559 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _559 + -mem[64] + 100
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _606 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_606] = 26
                        mem[_606 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _622 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_622 + idx + 68] = mem[_606 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_622 + 68] = mem[_622 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _622 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _621 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_621] = 26
                    mem[_621 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _646 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_646 + idx + 68] = mem[_621 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_646 + 68] = mem[_646 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _646 + -mem[64] + 100
                require (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540)
                if (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / (block.number * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _558 = mem[64]
                mem[64] = mem[64] + 64
                mem[_558] = 26
                mem[_558 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _572 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_572 + idx + 68] = mem[_558 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_572 + 68] = mem[_572 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _572 + -mem[64] + 100
                require totalAllocPoint
                if not (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint:
                    _620 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_620] = 26
                    mem[_620 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _643 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_643 + idx + 68] = mem[_620 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_643 + 68] = mem[_643 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _643 + -mem[64] + 100
                require (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint
                if 1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _642 = mem[64]
                mem[64] = mem[64] + 64
                mem[_642] = 26
                mem[_642 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _674 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_674 + idx + 68] = mem[_642 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_674 + 68] = mem[_674 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _674 + -mem[64] + 100
            if endBlock <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = endBlock
                idx = idx + 1
                continue 
            _525 = mem[64]
            mem[64] = mem[64] + 64
            mem[_525] = 30
            mem[_525 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > endBlock:
                _529 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_529 + idx + 68] = mem[_525 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_529 + 68] = mem[_529 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _529 + -mem[64] + 100
            if not endBlock - poolInfo[idx].field_512:
                _545 = mem[64]
                mem[64] = mem[64] + 64
                mem[_545] = 26
                mem[_545 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _555 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_555 + idx + 68] = mem[_545 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_555 + 68] = mem[_555 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _555 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _601 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_601] = 26
                    mem[_601 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _613 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_613 + idx + 68] = mem[_601 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_613 + 68] = mem[_613 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _613 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _612 = mem[64]
                mem[64] = mem[64] + 64
                mem[_612] = 26
                mem[_612 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _634 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_634 + idx + 68] = mem[_612 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_634 + 68] = mem[_634 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _634 + -mem[64] + 100
            require endBlock - poolInfo[idx].field_512
            if (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) / endBlock - poolInfo[idx].field_512 != sub_7d436540:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540):
                _554 = mem[64]
                mem[64] = mem[64] + 64
                mem[_554] = 26
                mem[_554 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _564 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_564 + idx + 68] = mem[_554 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_564 + 68] = mem[_564 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _564 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _611 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_611] = 26
                    mem[_611 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _631 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_631 + idx + 68] = mem[_611 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_631 + 68] = mem[_631 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _631 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _630 = mem[64]
                mem[64] = mem[64] + 64
                mem[_630] = 26
                mem[_630 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _656 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_656 + idx + 68] = mem[_630 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_656 + 68] = mem[_656 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _656 + -mem[64] + 100
            require (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540)
            if (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / (endBlock * sub_7d436540) - (poolInfo[idx].field_512 * sub_7d436540) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _563 = mem[64]
            mem[64] = mem[64] + 64
            mem[_563] = 26
            mem[_563 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _577 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_577 + idx + 68] = mem[_563 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_577 + 68] = mem[_577 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _577 + -mem[64] + 100
            require totalAllocPoint
            if not (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint:
                _629 = mem[64]
                mem[64] = mem[64] + 64
                mem[_629] = 26
                mem[_629 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _653 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_653 + idx + 68] = mem[_629 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_653 + 68] = mem[_653 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _653 + -mem[64] + 100
            require (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint
            if 1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _652 = mem[64]
            mem[64] = mem[64] + 64
            mem[_652] = 26
            mem[_652 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_7d436540 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _681 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_681 + idx + 68] = mem[_652 + idx + 32]
                idx = idx + 32
                continue 
            mem[_681 + 68] = mem[_681 + 74 len 26]
            revert with memory
              from mem[64]
               len _681 + -mem[64] + 100
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
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if userInfo[arg1][address(msg.sender)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6477697468647261773a2063616e2774207769746864726177206d6f7265207468616e206465706f7369,
                    mem[206 len 22]
    require arg1 < poolInfo.length
    if block.number < endBlock:
        if block.number <= poolInfo[arg1].field_512:
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(fooAddress)
                call fooAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                paidOut -= userInfo[arg1][address(msg.sender)].field_256
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(fooAddress)
                call fooAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[arg1][address(msg.sender)].field_0 -= arg2
            if not userInfo[arg1][address(msg.sender)].field_0:
                userInfo[arg1][address(msg.sender)].field_256 = 0
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[516 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
            mem[580 len 0] = 0
            call poolInfo[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
        else:
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[arg1].field_512 = block.number
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(fooAddress)
                    call fooAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    paidOut -= userInfo[arg1][address(msg.sender)].field_256
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(fooAddress)
                    call fooAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                mem[580 len 0] = 0
                call poolInfo[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
            else:
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
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(fooAddress)
                            call fooAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            paidOut -= userInfo[arg1][address(msg.sender)].field_256
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                mem[772 len 0] = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(fooAddress)
                            call fooAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[772 len 0] = 0
                    else:
                        require 0 / totalAllocPoint
                        if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(fooAddress)
                            call fooAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            paidOut -= userInfo[arg1][address(msg.sender)].field_256
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(fooAddress)
                            call fooAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[772 len 0] = 0
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540) / block.number - poolInfo[arg1].field_512 != sub_7d436540:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                mem[772 len 0] = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                    mem[772 len 0] = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[772 len 0] = 0
                    else:
                        require (block.number * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540)
                        if (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / (block.number * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                mem[772 len 0] = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                    mem[772 len 0] = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                        else:
                            require (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint
                            if 1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * (block.number * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[772 len 0] = 0
                call poolInfo[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[772 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[740]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 819 len 22]
    else:
        if endBlock <= poolInfo[arg1].field_512:
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(fooAddress)
                call fooAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                mem[580 len 0] = 0
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(fooAddress)
                call fooAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[580 len 0] = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
            call poolInfo[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
        else:
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[arg1].field_512 = endBlock
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(fooAddress)
                    call fooAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    paidOut -= userInfo[arg1][address(msg.sender)].field_256
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[580 len 0] = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(fooAddress)
                    call fooAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[580 len 0] = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                call poolInfo[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
            else:
                if poolInfo[arg1].field_512 > endBlock:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not endBlock - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(fooAddress)
                            call fooAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            paidOut -= userInfo[arg1][address(msg.sender)].field_256
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                mem[772 len 0] = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(fooAddress)
                            call fooAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[772 len 0] = 0
                    else:
                        require 0 / totalAllocPoint
                        if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.number
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(fooAddress)
                            call fooAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            paidOut -= userInfo[arg1][address(msg.sender)].field_256
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(fooAddress)
                            call fooAddress.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[772 len 0] = 0
                else:
                    require endBlock - poolInfo[arg1].field_512
                    if (endBlock * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540) / endBlock - poolInfo[arg1].field_512 != sub_7d436540:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (endBlock * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                mem[772 len 0] = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                    mem[772 len 0] = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                mem[772 len 0] = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                    mem[772 len 0] = 0
                    else:
                        require (endBlock * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540)
                        if (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / (endBlock * sub_7d436540) - (poolInfo[arg1].field_512 * sub_7d436540) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[772 len 0] = 0
                        else:
                            require (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint
                            if 1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * (endBlock * sub_7d436540 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_7d436540 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                mem[772 len 0] = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(fooAddress)
                                call fooAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[708 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                                    mem[772 len 0] = 0
                call poolInfo[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[772 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[740]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 819 len 22]
    emit Withdraw(arg2, msg.sender, arg1);
}



}
