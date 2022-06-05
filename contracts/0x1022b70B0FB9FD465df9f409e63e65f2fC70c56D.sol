contract main {




// =====================  Runtime code  =====================


#
#  - burnRemain(uint256 arg1)
#  - topupLottery(uint256 arg1)
#
const BURN_ADDRESS = 57005


bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
address owner;
array of uint8 allocation;
mapping of uint256 userBuyAmountSum;
array of uint256 userInfo;
uint256 issueIndex;
uint256 totalAddresses;
uint256 totalAmount;
uint256 lastTimestamp;
array of uint8 winningNumbers;
uint8 drawingPhase;
address tokenAddress;
address lotteryNFTAddress;
uint8 maxNumber; offset 160
uint128 stor4; offset 160
address adminAddress;
uint256 minPrice;
array of uint8 stor6;
array of uint256 lotteryInfo;
array of struct historyAmount;
mapping of uint256 sub_6306f656;

function lastTimestamp() payable {
    return lastTimestamp
}

function totalAmount() payable {
    return totalAmount
}

function userInfo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < userInfo[arg1]
    return userInfo[arg1][arg2]
}

function userBuyAmountSum(uint256 arg1, uint64 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userBuyAmountSum[arg1][arg2]
}

function maxNumber() payable {
    return maxNumber
}

function drawingPhase() payable {
    return bool(drawingPhase)
}

function winningNumbers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return uint8(winningNumbers[uint8(arg1)].field_0)
}

function historyNumbers(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < 4
    return historyNumbers[uint8(arg2)]
}

function sub_6306f656(?) payable {
    require calldata.size - 4 >= 32
    return sub_6306f656[arg1]
}

function lotteryInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < lotteryInfo[arg1]
    return lotteryInfo[arg1][arg2]
}

function issueIndex() payable {
    return issueIndex
}

function allocation(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return allocation[uint8(arg1)]
}

function owner() payable {
    return owner
}

function historyAmount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(historyAmount[arg1].field_0)
    return uint256(historyAmount[arg1][arg2].field_0)
}

function totalAddresses() payable {
    return totalAddresses
}

function getMatchingRewardAmount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require -arg2 + 5 < uint256(historyAmount[arg1].field_0)
    return uint256(historyAmount[arg1][arg2].field_1280)
}

function drawed() payable {
    return bool(uint8(winningNumbers.length))
}

function minPrice() payable {
    return minPrice
}

function lotteryNFT() payable {
    return lotteryNFTAddress
}

function token() payable {
    return tokenAddress
}

function adminAddress() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setMinPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    minPrice = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMaxNumber(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxNumber = arg1
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
}

function getTotalRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > issueIndex:
        revert with 0, '_issueIndex <= issueIndex'
    if not uint8(winningNumbers.length):
        if arg1 == issueIndex:
            return totalAmount
    require uint256(historyAmount[arg1].field_0)
    return uint256(historyAmount[arg1].field_0)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setAllocation(uint8 arg1, uint8 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg1 + arg2 + arg3) >= 100:
        revert with 0, 'exceed 100'
    mem[96] = arg1
    mem[128] = arg2
    mem[160] = arg3
    s = 0
    idx = 96
    while 192 > idx:
        allocation.length = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and allocation.length
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 3
    s = 1
    while idx:
        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = -(None + 3 / 32) + (None * None + 3 / 32) + 1
    while 2 > idx:
        uint8(stor[idx]) = 0
        idx = idx + 1
        continue 
}

function generateNumberIndexKey(uint8[4] arg1) payable {
    require calldata.size - 4 >= 128
    require 35 < calldata.size
    require 132 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 4:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[704] = uint64(mem[223 len 1] + (mem[127 len 1] << 48) + (4294967296 * mem[159 len 1]) + (65536 * mem[191 len 1]) + 1099545182976)
    mem[736] = uint64((4294967296 * mem[127 len 1]) + (65536 * mem[159 len 1]) + mem[191 len 1] + 16777728)
    mem[768] = uint64((4294967296 * mem[127 len 1]) + (65536 * mem[159 len 1]) + mem[223 len 1] + 16777984)
    mem[800] = uint64((4294967296 * mem[127 len 1]) + (65536 * mem[191 len 1]) + mem[223 len 1] + 33555200)
    mem[832] = uint64(mem[223 len 1] + (4294967296 * mem[159 len 1]) + (65536 * mem[191 len 1]) + 1099545182976)
    mem[864] = uint64((65536 * mem[127 len 1]) + mem[159 len 1] + 256)
    mem[896] = uint64((65536 * mem[127 len 1]) + mem[191 len 1] + 512)
    mem[928] = uint64(mem[223 len 1] + (65536 * mem[127 len 1]) + 768)
    mem[960] = uint64((65536 * mem[159 len 1]) + mem[191 len 1] + 16777728)
    mem[992] = uint64(mem[223 len 1] + (65536 * mem[159 len 1]) + 16777984)
    mem[1024] = uint64((65536 * mem[191 len 1]) + mem[223 len 1] + 33555200)
    idx = 0
    s = 704
    t = 1056
    while idx < 11:
        mem[t] = mem[s + 24 len 8]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from 1056
       len 352
}

function initialize(address arg1, address arg2, uint256 arg3, uint8 arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not uint8(stor0.field_168):
        if ext_code.size(this.address):
            if uint8(stor0.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            uint8(stor0.field_160) = 1
            uint8(stor0.field_168) = 1
            Mask(88, 0, stor0.field_168) = 0
            stor0.field_256 % 1 = 0
    tokenAddress = arg1
    lotteryNFTAddress = arg2
    minPrice = arg3
    adminAddress = arg6
    maxNumber = arg4
    stor4 = 0
    lastTimestamp = block.timestamp
    mem[96] = 40
    mem[128] = 25
    mem[160] = 15
    s = 0
    idx = 96
    while 192 > idx:
        allocation.length = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and allocation.length
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 3
    s = 1
    while idx:
        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = -(None + 3 / 32) + (None * None + 3 / 32) + 1
    while 2 > idx:
        uint8(stor[idx]) = 0
        idx = idx + 1
        continue 
    owner = arg5
    emit OwnershipTransferred(0, arg5);
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function getRewardView(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(lotteryNFTAddress)
    staticcall lotteryNFTAddress.getLotteryIssueIndex(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96 len 128] = call.data[calldata.size len 128]
    require ext_code.size(lotteryNFTAddress)
    staticcall lotteryNFTAddress.getLotteryNumbers(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 224 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ceil32(return_data.size) + 255 < ceil32(return_data.size) + return_data.size + 224
    require bool((2 * ceil32(return_data.size)) + 352 <= test266151307())
    require 128 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < 4:
        require mem[s] == mem[s + 31 len 1]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 352 len 128] = call.data[calldata.size len 128]
    mem[(2 * ceil32(return_data.size)) + 480] = uint8(stor6[ext_call.return_data[0]])
    idx = (2 * ceil32(return_data.size)) + 480
    s = 0
    while (2 * ceil32(return_data.size)) + 608 > idx + 32:
        mem[idx + 32] = stor('map', ('ext_call.return_data', 0, 32), ('name', 'stor6', 6))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    if not uint8(stor6[ext_call.return_data[0]]):
        revert with 0, 'not drawed'
    idx = 0
    s = 0
    while idx < 4:
        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 511 len 1] != mem[(32 * idx) + (2 * ceil32(return_data.size)) + 255 len 1]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s <= 1:
        return 0
    require ext_code.size(lotteryNFTAddress)
    staticcall lotteryNFTAddress.getLotteryAmount(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require -s + 4 < 3
    if ext_call.return_data[0] > issueIndex:
        revert with 0, '_issueIndex <= issueIndex'
    if not uint8(winningNumbers.length):
        if ext_call.return_data[0] == issueIndex:
            if not totalAmount:
                require -s + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
                if not ext_call.return_data[0]:
                    if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                    if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                        if 0 / 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                            revert with 0, 'SafeMath: multiplication overflow'
                else:
                    if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                    if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                        if 0 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                            revert with 0, 'SafeMath: multiplication overflow'
                return 0
            if allocation[uint8(-s + 4)] * totalAmount / totalAmount != allocation[uint8(-s + 4)]:
                revert with 0, 'SafeMath: multiplication overflow'
            require -s + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
            if not ext_call.return_data[0]:
                if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
                if not 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                    return 0
                if allocation[uint8(-s + 4)] * totalAmount / 100 * 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) / 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) != allocation[uint8(-s + 4)] * totalAmount / 100:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (allocation[uint8(-s + 4)] * totalAmount / 100 * 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) / 10^12)
            if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
            if not 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                return 0
            if allocation[uint8(-s + 4)] * totalAmount / 100 * 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) != allocation[uint8(-s + 4)] * totalAmount / 100:
                revert with 0, 'SafeMath: multiplication overflow'
            return (allocation[uint8(-s + 4)] * totalAmount / 100 * 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) / 10^12)
    require uint256(historyAmount[ext_call.return_data[0]].field_0)
    if not uint256(historyAmount[ext_call.return_data[0]].field_0):
        require -s + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
        if not ext_call.return_data[0]:
            if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
            if 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                if 0 / 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                    revert with 0, 'SafeMath: multiplication overflow'
        else:
            if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
            if 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                if 0 / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
                    revert with 0, 'SafeMath: multiplication overflow'
        return 0
    if allocation[uint8(-s + 4)] * uint256(historyAmount[ext_call.return_data[0]].field_0) / uint256(historyAmount[ext_call.return_data[0]].field_0) != allocation[uint8(-s + 4)]:
        revert with 0, 'SafeMath: multiplication overflow'
    require -s + 5 < uint256(historyAmount[ext_call.return_data[0]].field_0)
    if not ext_call.return_data[0]:
        if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
        if not 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
            return 0
        if allocation[uint8(-s + 4)] * uint256(historyAmount[ext_call.return_data[0]].field_0) / 100 * 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) / 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) != allocation[uint8(-s + 4)] * uint256(historyAmount[ext_call.return_data[0]].field_0) / 100:
            revert with 0, 'SafeMath: multiplication overflow'
        return (allocation[uint8(-s + 4)] * uint256(historyAmount[ext_call.return_data[0]].field_0) / 100 * 0 / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) / 10^12)
    if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if uint256(historyAmount[ext_call.return_data[0]][s].field_1280) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require uint256(historyAmount[ext_call.return_data[0]][s].field_1280)
    if not 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280):
        return 0
    if allocation[uint8(-s + 4)] * uint256(historyAmount[ext_call.return_data[0]].field_0) / 100 * 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) / 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) != allocation[uint8(-s + 4)] * uint256(historyAmount[ext_call.return_data[0]].field_0) / 100:
        revert with 0, 'SafeMath: multiplication overflow'
    return (allocation[uint8(-s + 4)] * uint256(historyAmount[ext_call.return_data[0]].field_0) / 100 * 10^12 * ext_call.return_data[0] / uint256(historyAmount[ext_call.return_data[0]][s].field_1280) / 10^12)
}

function multiBuy(uint256 arg1, uint8[4][] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    require calldata.size >= arg2 + (128 * arg2.length) + 36
    s = arg2 + 36
    t = 128
    idx = 0
    while idx < arg2.length:
        require s + 31 < calldata.size
        _182 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require s + 128 <= calldata.size
        u = 0
        v = s
        w = _182
        while u < 4:
            require cd[v] == uint8(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _182
        s = s + 128
        t = t + 32
        idx = idx + 1
        continue 
    if uint8(winningNumbers.length):
        revert with 0, 'drawed, can not buy now'
    if drawingPhase:
        revert with 0, 'drawing, can not buy now'
    if arg1 < minPrice:
        revert with 0, 'price must above minPrice'
    _501 = mem[96]
    idx = 0
    s = 0
    while idx < _501:
        t = 0
        while t < 4:
            require idx < mem[96]
            require t < 4
            if mem[(32 * t) + mem[(32 * idx) + 128] + 31 len 1] > maxNumber:
                revert with 0, 'exceed number scope'
            require idx < mem[96]
            require t < 4
            if mem[(32 * t) + mem[(32 * idx) + 128] + 31 len 1] <= 0:
                revert with 0, 'exceed number scope'
            t = t + 1
            continue 
        require idx < mem[96]
        _594 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x37391c0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        t = 0
        u = _594
        v = mem[64] + 36
        while t < 4:
            mem[v] = mem[u + 31 len 1]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[mem[64] + 164] = arg1
        mem[mem[64] + 196] = issueIndex
        require ext_code.size(lotteryNFTAddress)
        call lotteryNFTAddress.newLotteryItem(address arg1, uint8[4] arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args msg.sender, mem[mem[64] + 36 len 128], arg1, issueIndex
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _688 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _689 = mem[_688]
        lotteryInfo[stor12]++
        lotteryInfo[stor12][lotteryInfo[stor12]] = mem[_688]
        if userInfo[msg.sender]:
            mem[32] = 11
            userInfo[msg.sender]++
            mem[0] = sha3(msg.sender, 11)
            userInfo[msg.sender][userInfo[msg.sender]] = _689
            if arg1 + totalAmount < totalAmount:
                revert with 0, 'SafeMath: addition overflow'
            totalAmount += arg1
            lastTimestamp = block.timestamp
            if arg1 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            _703 = mem[64]
            mem[64] = mem[64] + 352
            mem[_703 len 352] = call.data[calldata.size len 352]
            require idx < mem[96]
            _708 = mem[(32 * idx) + 128]
            _711 = mem[64]
            mem[64] = mem[64] + 352
            mem[_711 len 352] = call.data[calldata.size len 352]
            _713 = mem[64]
            mem[64] = mem[64] + 128
            mem[_713 len 128] = call.data[calldata.size len 128]
            mem[_713] = mem[_708 + 31 len 1]
            mem[_713 + 32] = mem[_708 + 63 len 1]
            mem[_713 + 64] = mem[_708 + 95 len 1]
            mem[_713 + 96] = mem[_708 + 127 len 1]
            _719 = mem[64]
            mem[64] = mem[64] + 352
            mem[_719 len 352] = call.data[calldata.size len 352]
            mem[_719] = uint64(mem[_713 + 96] + (mem[_713] << 48) + (4294967296 * mem[_713 + 32]) + (65536 * mem[_713 + 64]) + 1099545182976)
            mem[_719 + 32] = uint64((4294967296 * mem[_713]) + (65536 * mem[_713 + 32]) + mem[_713 + 64] + 16777728)
            mem[_719 + 64] = uint64((4294967296 * mem[_713]) + (65536 * mem[_713 + 32]) + mem[_713 + 96] + 16777984)
            mem[_719 + 96] = uint64((4294967296 * mem[_713]) + (65536 * mem[_713 + 64]) + mem[_713 + 96] + 33555200)
            mem[_719 + 128] = uint64(mem[_713 + 96] + (4294967296 * mem[_713 + 32]) + (65536 * mem[_713 + 64]) + 1099545182976)
            mem[_719 + 160] = uint64((65536 * mem[_713]) + mem[_713 + 32] + 256)
            mem[_719 + 192] = uint64((65536 * mem[_713]) + mem[_713 + 64] + 512)
            mem[_719 + 224] = uint64(mem[_713 + 96] + (65536 * mem[_713]) + 768)
            mem[_719 + 256] = uint64((65536 * mem[_713 + 32]) + mem[_713 + 64] + 16777728)
            mem[_719 + 288] = uint64(mem[_713 + 96] + (65536 * mem[_713 + 32]) + 16777984)
            mem[_719 + 320] = uint64((65536 * mem[_713 + 64]) + mem[_713 + 96] + 33555200)
            t = 0
            while t < 11:
                mem[0] = issueIndex
                mem[32] = 10
                mem[0] = mem[(32 * t) + _719 + 24 len 8]
                _800 = sha3(mem[0], sha3(issueIndex, 10))
                if arg1 + userBuyAmountSum[stor12][mem[0]] < userBuyAmountSum[stor12][mem[0]]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = issueIndex
                mem[32] = 10
                require t < 11
                mem[0] = mem[(32 * t) + _719 + 24 len 8]
                mem[32] = sha3(issueIndex, 10)
                userBuyAmountSum[stor12][mem[0]] = arg1 + uint256(stor[_800])
                t = t + 1
                continue 
        else:
            totalAddresses++
            mem[32] = 11
            userInfo[msg.sender]++
            mem[0] = sha3(msg.sender, 11)
            userInfo[msg.sender][userInfo[msg.sender]] = _689
            if arg1 + totalAmount < totalAmount:
                revert with 0, 'SafeMath: addition overflow'
            totalAmount += arg1
            lastTimestamp = block.timestamp
            if arg1 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            _706 = mem[64]
            mem[64] = mem[64] + 352
            mem[_706 len 352] = call.data[calldata.size len 352]
            require idx < mem[96]
            _710 = mem[(32 * idx) + 128]
            _712 = mem[64]
            mem[64] = mem[64] + 352
            mem[_712 len 352] = call.data[calldata.size len 352]
            _718 = mem[64]
            mem[64] = mem[64] + 128
            mem[_718 len 128] = call.data[calldata.size len 128]
            mem[_718] = mem[_710 + 31 len 1]
            mem[_718 + 32] = mem[_710 + 63 len 1]
            mem[_718 + 64] = mem[_710 + 95 len 1]
            mem[_718 + 96] = mem[_710 + 127 len 1]
            _752 = mem[64]
            mem[64] = mem[64] + 352
            mem[_752 len 352] = call.data[calldata.size len 352]
            mem[_752] = uint64(mem[_718 + 96] + (mem[_718] << 48) + (4294967296 * mem[_718 + 32]) + (65536 * mem[_718 + 64]) + 1099545182976)
            mem[_752 + 32] = uint64((4294967296 * mem[_718]) + (65536 * mem[_718 + 32]) + mem[_718 + 64] + 16777728)
            mem[_752 + 64] = uint64((4294967296 * mem[_718]) + (65536 * mem[_718 + 32]) + mem[_718 + 96] + 16777984)
            mem[_752 + 96] = uint64((4294967296 * mem[_718]) + (65536 * mem[_718 + 64]) + mem[_718 + 96] + 33555200)
            mem[_752 + 128] = uint64(mem[_718 + 96] + (4294967296 * mem[_718 + 32]) + (65536 * mem[_718 + 64]) + 1099545182976)
            mem[_752 + 160] = uint64((65536 * mem[_718]) + mem[_718 + 32] + 256)
            mem[_752 + 192] = uint64((65536 * mem[_718]) + mem[_718 + 64] + 512)
            mem[_752 + 224] = uint64(mem[_718 + 96] + (65536 * mem[_718]) + 768)
            mem[_752 + 256] = uint64((65536 * mem[_718 + 32]) + mem[_718 + 64] + 16777728)
            mem[_752 + 288] = uint64(mem[_718 + 96] + (65536 * mem[_718 + 32]) + 16777984)
            mem[_752 + 320] = uint64((65536 * mem[_718 + 64]) + mem[_718 + 96] + 33555200)
            t = 0
            while t < 11:
                mem[0] = issueIndex
                mem[32] = 10
                mem[0] = mem[(32 * t) + _752 + 24 len 8]
                _802 = sha3(mem[0], sha3(issueIndex, 10))
                if arg1 + userBuyAmountSum[stor12][mem[0]] < userBuyAmountSum[stor12][mem[0]]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = issueIndex
                mem[32] = 10
                require t < 11
                mem[0] = mem[(32 * t) + _752 + 24 len 8]
                mem[32] = sha3(issueIndex, 10)
                userBuyAmountSum[stor12][mem[0]] = arg1 + uint256(stor[_802])
                t = t + 1
                continue 
        idx = idx + 1
        s = arg1 + s
        continue 
    _502 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = s
    _504 = mem[64]
    mem[mem[64]] = 100
    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
    mem[64] = mem[64] + 196
    mem[_502 + 132] = 32
    mem[_502 + 164] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    _519 = mem[_504]
    mem[_502 + 196 len ceil32(mem[_504])] = mem[_504 + 32 len ceil32(mem[_504])]
    if ceil32(_519) > _519:
        mem[_519 + _502 + 196] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args mem[_502 + 200 len _519 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_502 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_502 + 228] == bool(mem[_502 + 228])
            if not mem[_502 + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit MultiBuy(s, msg.sender);
}

function drawing(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    if uint8(winningNumbers.length):
        revert with 0, 'reset?'
    drawingPhase = 1
    idx = 0
    while idx < 10:
        if issueIndex > issueIndex:
            revert with 0, '_issueIndex <= issueIndex'
        if uint8(winningNumbers.length):
            mem[32] = 8
            require uint256(historyAmount[stor12].field_0)
            mem[0] = sha3(issueIndex, 8)
        else:
            if issueIndex != issueIndex:
                mem[32] = 8
                require uint256(historyAmount[stor12].field_0)
                mem[0] = sha3(issueIndex, 8)
        idx = idx + 1
        continue 
    mem[128] = block.hash(block.number - 1)
    mem[160] = totalAddresses
    mem[192] = gas_remaining
    mem[224] = arg1
    mem[96] = 128
    uint8(winningNumbers.length) = uint8((sha3(block.hash(block.number - 1), totalAddresses, gas_remaining, arg1) % maxNumber) + 1)
    mem[288] = block.hash(block.number - 1)
    mem[320] = totalAmount
    mem[352] = gas_remaining
    mem[384] = arg1
    mem[256] = 128
    uint8(winningNumbers.length.field_8) = uint8((sha3(block.hash(block.number - 1), totalAmount, gas_remaining, arg1) % maxNumber) + 1)
    mem[448] = block.hash(block.number - 1)
    mem[480] = lastTimestamp
    mem[512] = gas_remaining
    mem[544] = arg1
    mem[416] = 128
    uint8(winningNumbers.length.field_16) = uint8((sha3(block.hash(block.number - 1), lastTimestamp, gas_remaining, arg1) % maxNumber) + 1)
    mem[608] = block.hash(block.number - 1)
    mem[640] = gas_remaining
    mem[672] = arg1
    mem[576] = 96
    uint8(winningNumbers.length.field_24) = uint8((sha3(block.hash(block.number - 1), gas_remaining, arg1) % maxNumber) + 1)
    mem[0] = issueIndex
    mem[32] = 6
    uint256(stor6[stor12]) = winningNumbers.length
    idx = 1
    while 1 > idx:
        uint8(stor6[stor12][idx]) = 0
        idx = idx + 1
        continue 
    mem[704 len 128] = call.data[calldata.size len 128]
    mem[832 len 352] = call.data[calldata.size len 352]
    mem[64] = 1312
    mem[var39001] = uint8(winningNumbers[var39002].field_0)
    if 1312 <= var39001 + 32:
        if 2 * userBuyAmountSum[stor12][0] < userBuyAmountSum[stor12][0]:
            revert with 0, 'SafeMath: addition overflow'
        if userBuyAmountSum[stor12][0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if userBuyAmountSum[stor12][0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not userBuyAmountSum[stor12][0]:
            if 0 > 4 * userBuyAmountSum[stor12][0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 2 * userBuyAmountSum[stor12][0] < userBuyAmountSum[stor12][0]:
                revert with 0, 'SafeMath: addition overflow'
            if userBuyAmountSum[stor12][0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userBuyAmountSum[stor12][0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userBuyAmountSum[stor12][0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userBuyAmountSum[stor12][0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 4 * userBuyAmountSum[stor12][0]:
                if not userBuyAmountSum[stor12][0]:
                    if 0 > 6 * userBuyAmountSum[stor12][0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[2144] = totalAmount
                    mem[2176] = userBuyAmountSum[stor12][0]
                    mem[2208] = 4 * userBuyAmountSum[stor12][0]
                    mem[2240] = 6 * userBuyAmountSum[stor12][0]
                else:
                    if 6 * userBuyAmountSum[stor12][0] / userBuyAmountSum[stor12][0] != 6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 6 * userBuyAmountSum[stor12][0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > 12 * userBuyAmountSum[stor12][0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[2144] = totalAmount
                    mem[2176] = userBuyAmountSum[stor12][0]
                    mem[2208] = 4 * userBuyAmountSum[stor12][0]
                    mem[2240] = 12 * userBuyAmountSum[stor12][0]
            else:
                if 12 * userBuyAmountSum[stor12][0] / 4 * userBuyAmountSum[stor12][0] != 3:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userBuyAmountSum[stor12][0]:
                    if 12 * userBuyAmountSum[stor12][0] > 6 * userBuyAmountSum[stor12][0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[2144] = totalAmount
                    mem[2176] = userBuyAmountSum[stor12][0]
                    mem[2208] = 4 * userBuyAmountSum[stor12][0]
                    mem[2240] = -6 * userBuyAmountSum[stor12][0]
                else:
                    if 6 * userBuyAmountSum[stor12][0] / userBuyAmountSum[stor12][0] != 6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 6 * userBuyAmountSum[stor12][0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 12 * userBuyAmountSum[stor12][0] > 12 * userBuyAmountSum[stor12][0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[2144] = totalAmount
                    mem[2176] = userBuyAmountSum[stor12][0]
                    mem[2208] = 4 * userBuyAmountSum[stor12][0]
                    mem[2240] = 0
        else:
            if 4 * userBuyAmountSum[stor12][0] / userBuyAmountSum[stor12][0] != 4:
                revert with 0, 'SafeMath: multiplication overflow'
            if 4 * userBuyAmountSum[stor12][0] > 4 * userBuyAmountSum[stor12][0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 2 * userBuyAmountSum[stor12][0] < userBuyAmountSum[stor12][0]:
                revert with 0, 'SafeMath: addition overflow'
            if userBuyAmountSum[stor12][0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userBuyAmountSum[stor12][0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userBuyAmountSum[stor12][0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if userBuyAmountSum[stor12][0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 4 * userBuyAmountSum[stor12][0]:
                if not userBuyAmountSum[stor12][0]:
                    if 0 > 6 * userBuyAmountSum[stor12][0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[2144] = totalAmount
                    mem[2176] = userBuyAmountSum[stor12][0]
                    mem[2208] = 7 * userBuyAmountSum[stor12][0]
                    mem[2240] = 6 * userBuyAmountSum[stor12][0]
                else:
                    if 6 * userBuyAmountSum[stor12][0] / userBuyAmountSum[stor12][0] != 6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 6 * userBuyAmountSum[stor12][0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > 12 * userBuyAmountSum[stor12][0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[2144] = totalAmount
                    mem[2176] = userBuyAmountSum[stor12][0]
                    mem[2208] = 7 * userBuyAmountSum[stor12][0]
                    mem[2240] = 12 * userBuyAmountSum[stor12][0]
            else:
                if 12 * userBuyAmountSum[stor12][0] / 4 * userBuyAmountSum[stor12][0] != 3:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userBuyAmountSum[stor12][0]:
                    if 12 * userBuyAmountSum[stor12][0] > 6 * userBuyAmountSum[stor12][0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[2144] = totalAmount
                    mem[2176] = userBuyAmountSum[stor12][0]
                    mem[2208] = 7 * userBuyAmountSum[stor12][0]
                    mem[2240] = -6 * userBuyAmountSum[stor12][0]
                else:
                    if 6 * userBuyAmountSum[stor12][0] / userBuyAmountSum[stor12][0] != 6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 6 * userBuyAmountSum[stor12][0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 12 * userBuyAmountSum[stor12][0] > 12 * userBuyAmountSum[stor12][0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[2144] = totalAmount
                    mem[2176] = userBuyAmountSum[stor12][0]
                    mem[2208] = 7 * userBuyAmountSum[stor12][0]
                    mem[2240] = 0
        uint256(historyAmount[stor12].field_0) = 4
        s = 0
        idx = 2144
        while 2272 > idx:
            uint256(historyAmount[stor12][s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
    else:
        mem[var39001 + 32] = uint8(winningNumbers[-(0.03125 / var39002 + 1) + var39002 + (-1 * 0.03125 / var39002 + 1 * var39002) + 1].field_0)
        idx = var39001 + 32
        s = -(var39002 + 1 / 32) + var39002 + (-1 * var39002 + 1 / 32 * var39002) + 1
        t = (var39002 + 1 / 32) + 16
        while 1312 > idx + 32:
            mem[idx + 32] = stor((0.03125 / s + 1) + t)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            t = (s + 1 / 32) + t
            continue 
        _901 = mem[64]
        mem[64] = mem[64] + 352
        mem[_901 len 352] = call.data[calldata.size len 352]
        _902 = mem[64]
        mem[64] = mem[64] + 128
        mem[_902 len 128] = call.data[calldata.size len 128]
        mem[_902] = mem[1215 len 1]
        mem[_902 + 32] = mem[1247 len 1]
        mem[_902 + 64] = mem[1279 len 1]
        mem[_902 + 96] = mem[1311 len 1]
        _915 = mem[64]
        mem[64] = mem[64] + 352
        mem[_915 len 352] = call.data[calldata.size len 352]
        mem[_915] = uint64(mem[_902 + 96] + (mem[_902] << 48) + (4294967296 * mem[_902 + 32]) + (65536 * mem[_902 + 64]) + 1099545182976)
        mem[_915 + 32] = uint64((4294967296 * mem[_902]) + (65536 * mem[_902 + 32]) + mem[_902 + 64] + 16777728)
        mem[_915 + 64] = uint64((4294967296 * mem[_902]) + (65536 * mem[_902 + 32]) + mem[_902 + 96] + 16777984)
        mem[_915 + 96] = uint64((4294967296 * mem[_902]) + (65536 * mem[_902 + 64]) + mem[_902 + 96] + 33555200)
        mem[_915 + 128] = uint64(mem[_902 + 96] + (4294967296 * mem[_902 + 32]) + (65536 * mem[_902 + 64]) + 1099545182976)
        mem[_915 + 160] = uint64((65536 * mem[_902]) + mem[_902 + 32] + 256)
        mem[_915 + 192] = uint64((65536 * mem[_902]) + mem[_902 + 64] + 512)
        mem[_915 + 224] = uint64(mem[_902 + 96] + (65536 * mem[_902]) + 768)
        mem[_915 + 256] = uint64((65536 * mem[_902 + 32]) + mem[_902 + 64] + 16777728)
        mem[_915 + 288] = uint64(mem[_902 + 96] + (65536 * mem[_902 + 32]) + 16777984)
        mem[_915 + 320] = uint64((65536 * mem[_902 + 64]) + mem[_902 + 96] + 33555200)
        mem[0] = issueIndex
        mem[32] = 10
        mem[0] = mem[_915 + 24 len 8]
        _962 = sha3(mem[0], sha3(issueIndex, 10))
        mem[32] = 10
        mem[0] = mem[_915 + 56 len 8]
        _964 = sha3(mem[0], sha3(issueIndex, 10))
        mem[0] = mem[_915 + 88 len 8]
        _966 = sha3(mem[0], sha3(issueIndex, 10))
        if userBuyAmountSum[stor12][mem[0]] + uint256(stor[_964]) < uint256(stor[_964]):
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = mem[_915 + 120 len 8]
        _970 = sha3(mem[0], sha3(issueIndex, 10))
        if userBuyAmountSum[stor12][mem[0]] < 0:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = mem[_915 + 152 len 8]
        _975 = sha3(mem[0], sha3(issueIndex, 10))
        if userBuyAmountSum[stor12][mem[0]] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not uint256(stor[_962]):
            if 0 > userBuyAmountSum[stor12][mem[0]] + uint256(stor[_970]) + uint256(stor[_966]) + uint256(stor[_964]):
                revert with 0, 'SafeMath: subtraction overflow'
            mem[0] = mem[_915 + 184 len 8]
            _985 = sha3(mem[0], sha3(issueIndex, 10))
            mem[0] = mem[_915 + 216 len 8]
            _990 = sha3(mem[0], sha3(issueIndex, 10))
            if userBuyAmountSum[stor12][mem[0]] + uint256(stor[_985]) < uint256(stor[_985]):
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = mem[_915 + 248 len 8]
            _1000 = sha3(mem[0], sha3(issueIndex, 10))
            if userBuyAmountSum[stor12][mem[0]] < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = mem[_915 + 280 len 8]
            _1010 = sha3(mem[0], sha3(issueIndex, 10))
            if userBuyAmountSum[stor12][mem[0]] < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = mem[_915 + 312 len 8]
            _1020 = sha3(mem[0], sha3(issueIndex, 10))
            if userBuyAmountSum[stor12][mem[0]] < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = mem[_915 + 344 len 8]
            mem[32] = sha3(issueIndex, 10)
            _1030 = sha3(mem[0], sha3(issueIndex, 10))
            if userBuyAmountSum[stor12][mem[0]] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not uint256(stor[_975]) + uint256(stor[_970]) + uint256(stor[_966]) + uint256(stor[_964]):
                if not uint256(stor[_962]):
                    if 0 > userBuyAmountSum[stor12][mem[0]] + uint256(stor[_1020]) + uint256(stor[_1010]) + uint256(stor[_1000]) + uint256(stor[_990]) + uint256(stor[_985]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1070 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1070] = totalAmount
                    mem[_1070 + 32] = uint256(stor[_962])
                    mem[_1070 + 64] = uint256(stor[_975]) + uint256(stor[_970]) + uint256(stor[_966]) + uint256(stor[_964])
                    mem[_1070 + 96] = uint256(stor[_1030]) + uint256(stor[_1020]) + uint256(stor[_1010]) + uint256(stor[_1000]) + uint256(stor[_990]) + uint256(stor[_985])
                    mem[32] = 8
                    uint256(historyAmount[stor12].field_0) = 4
                    mem[0] = sha3(issueIndex, 8)
                    s = 0
                    idx = _1070
                    while _1070 + 128 > idx:
                        uint256(historyAmount[stor12][s].field_0) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                else:
                    if 6 * uint256(stor[_962]) / uint256(stor[_962]) != 6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 6 * uint256(stor[_962]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > (6 * uint256(stor[_962])) + userBuyAmountSum[stor12][mem[0]] + uint256(stor[_1020]) + uint256(stor[_1010]) + uint256(stor[_1000]) + uint256(stor[_990]) + uint256(stor[_985]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1077 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1077] = totalAmount
                    mem[_1077 + 32] = uint256(stor[_962])
                    mem[_1077 + 64] = uint256(stor[_975]) + uint256(stor[_970]) + uint256(stor[_966]) + uint256(stor[_964])
                    mem[_1077 + 96] = (6 * uint256(stor[_962])) + uint256(stor[_1030]) + uint256(stor[_1020]) + uint256(stor[_1010]) + uint256(stor[_1000]) + uint256(stor[_990]) + uint256(stor[_985])
                    mem[32] = 8
                    uint256(historyAmount[stor12].field_0) = 4
                    mem[0] = sha3(issueIndex, 8)
                    s = 0
                    idx = _1077
                    while _1077 + 128 > idx:
                        uint256(historyAmount[stor12][s].field_0) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
            else:
                if (3 * uint256(stor[_975])) + (3 * uint256(stor[_970])) + (3 * uint256(stor[_966])) + (3 * uint256(stor[_964])) / uint256(stor[_975]) + uint256(stor[_970]) + uint256(stor[_966]) + uint256(stor[_964]) != 3:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not uint256(stor[_962]):
                    if (3 * uint256(stor[_975])) + (3 * uint256(stor[_970])) + (3 * uint256(stor[_966])) + (3 * uint256(stor[_964])) > userBuyAmountSum[stor12][mem[0]] + uint256(stor[_1020]) + uint256(stor[_1010]) + uint256(stor[_1000]) + uint256(stor[_990]) + uint256(stor[_985]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1076 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1076] = totalAmount
                    mem[_1076 + 32] = uint256(stor[_962])
                    mem[_1076 + 64] = uint256(stor[_975]) + uint256(stor[_970]) + uint256(stor[_966]) + uint256(stor[_964])
                    mem[_1076 + 96] = uint256(stor[_1030]) + uint256(stor[_1020]) + uint256(stor[_1010]) + uint256(stor[_1000]) + uint256(stor[_990]) + uint256(stor[_985]) - (3 * uint256(stor[_975])) - (3 * uint256(stor[_970])) - (3 * uint256(stor[_966])) - (3 * uint256(stor[_964]))
                    mem[32] = 8
                    uint256(historyAmount[stor12].field_0) = 4
                    mem[0] = sha3(issueIndex, 8)
                    s = 0
                    idx = _1076
                    while _1076 + 128 > idx:
                        uint256(historyAmount[stor12][s].field_0) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                else:
                    if 6 * uint256(stor[_962]) / uint256(stor[_962]) != 6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 6 * uint256(stor[_962]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (3 * uint256(stor[_975])) + (3 * uint256(stor[_970])) + (3 * uint256(stor[_966])) + (3 * uint256(stor[_964])) > (6 * uint256(stor[_962])) + userBuyAmountSum[stor12][mem[0]] + uint256(stor[_1020]) + uint256(stor[_1010]) + uint256(stor[_1000]) + uint256(stor[_990]) + uint256(stor[_985]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1085 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1085] = totalAmount
                    mem[_1085 + 32] = uint256(stor[_962])
                    mem[_1085 + 64] = uint256(stor[_975]) + uint256(stor[_970]) + uint256(stor[_966]) + uint256(stor[_964])
                    mem[_1085 + 96] = (6 * uint256(stor[_962])) + uint256(stor[_1030]) + uint256(stor[_1020]) + uint256(stor[_1010]) + uint256(stor[_1000]) + uint256(stor[_990]) + uint256(stor[_985]) - (3 * uint256(stor[_975])) - (3 * uint256(stor[_970])) - (3 * uint256(stor[_966])) - (3 * uint256(stor[_964]))
                    mem[32] = 8
                    uint256(historyAmount[stor12].field_0) = 4
                    mem[0] = sha3(issueIndex, 8)
                    s = 0
                    idx = _1085
                    while _1085 + 128 > idx:
                        uint256(historyAmount[stor12][s].field_0) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
        else:
            if 4 * uint256(stor[_962]) / uint256(stor[_962]) != 4:
                revert with 0, 'SafeMath: multiplication overflow'
            if 4 * uint256(stor[_962]) > userBuyAmountSum[stor12][mem[0]] + uint256(stor[_970]) + uint256(stor[_966]) + uint256(stor[_964]):
                revert with 0, 'SafeMath: subtraction overflow'
            mem[0] = mem[_915 + 184 len 8]
            _988 = sha3(mem[0], sha3(issueIndex, 10))
            mem[0] = mem[_915 + 216 len 8]
            _993 = sha3(mem[0], sha3(issueIndex, 10))
            if userBuyAmountSum[stor12][mem[0]] + uint256(stor[_988]) < uint256(stor[_988]):
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = mem[_915 + 248 len 8]
            _1003 = sha3(mem[0], sha3(issueIndex, 10))
            if userBuyAmountSum[stor12][mem[0]] < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = mem[_915 + 280 len 8]
            _1013 = sha3(mem[0], sha3(issueIndex, 10))
            if userBuyAmountSum[stor12][mem[0]] < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = mem[_915 + 312 len 8]
            _1023 = sha3(mem[0], sha3(issueIndex, 10))
            if userBuyAmountSum[stor12][mem[0]] < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = mem[_915 + 344 len 8]
            mem[32] = sha3(issueIndex, 10)
            _1033 = sha3(mem[0], sha3(issueIndex, 10))
            if userBuyAmountSum[stor12][mem[0]] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not uint256(stor[_975]) + uint256(stor[_970]) + uint256(stor[_966]) + uint256(stor[_964]):
                if not uint256(stor[_962]):
                    if 0 > userBuyAmountSum[stor12][mem[0]] + uint256(stor[_1023]) + uint256(stor[_1013]) + uint256(stor[_1003]) + uint256(stor[_993]) + uint256(stor[_988]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1074 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1074] = totalAmount
                    mem[_1074 + 32] = uint256(stor[_962])
                    mem[_1074 + 64] = uint256(stor[_975]) + uint256(stor[_970]) + uint256(stor[_966]) + uint256(stor[_964]) - (4 * uint256(stor[_962]))
                    mem[_1074 + 96] = uint256(stor[_1033]) + uint256(stor[_1023]) + uint256(stor[_1013]) + uint256(stor[_1003]) + uint256(stor[_993]) + uint256(stor[_988])
                    mem[32] = 8
                    uint256(historyAmount[stor12].field_0) = 4
                    mem[0] = sha3(issueIndex, 8)
                    s = 0
                    idx = _1074
                    while _1074 + 128 > idx:
                        uint256(historyAmount[stor12][s].field_0) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                else:
                    if 6 * uint256(stor[_962]) / uint256(stor[_962]) != 6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 6 * uint256(stor[_962]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > (6 * uint256(stor[_962])) + userBuyAmountSum[stor12][mem[0]] + uint256(stor[_1023]) + uint256(stor[_1013]) + uint256(stor[_1003]) + uint256(stor[_993]) + uint256(stor[_988]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1082 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1082] = totalAmount
                    mem[_1082 + 32] = uint256(stor[_962])
                    mem[_1082 + 64] = uint256(stor[_975]) + uint256(stor[_970]) + uint256(stor[_966]) + uint256(stor[_964]) - (4 * uint256(stor[_962]))
                    mem[_1082 + 96] = (6 * uint256(stor[_962])) + uint256(stor[_1033]) + uint256(stor[_1023]) + uint256(stor[_1013]) + uint256(stor[_1003]) + uint256(stor[_993]) + uint256(stor[_988])
                    mem[32] = 8
                    uint256(historyAmount[stor12].field_0) = 4
                    mem[0] = sha3(issueIndex, 8)
                    s = 0
                    idx = _1082
                    while _1082 + 128 > idx:
                        uint256(historyAmount[stor12][s].field_0) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
            else:
                if (3 * uint256(stor[_975])) + (3 * uint256(stor[_970])) + (3 * uint256(stor[_966])) + (3 * uint256(stor[_964])) / uint256(stor[_975]) + uint256(stor[_970]) + uint256(stor[_966]) + uint256(stor[_964]) != 3:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not uint256(stor[_962]):
                    if (3 * uint256(stor[_975])) + (3 * uint256(stor[_970])) + (3 * uint256(stor[_966])) + (3 * uint256(stor[_964])) > userBuyAmountSum[stor12][mem[0]] + uint256(stor[_1023]) + uint256(stor[_1013]) + uint256(stor[_1003]) + uint256(stor[_993]) + uint256(stor[_988]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1081 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1081] = totalAmount
                    mem[_1081 + 32] = uint256(stor[_962])
                    mem[_1081 + 64] = uint256(stor[_975]) + uint256(stor[_970]) + uint256(stor[_966]) + uint256(stor[_964]) - (4 * uint256(stor[_962]))
                    mem[_1081 + 96] = uint256(stor[_1033]) + uint256(stor[_1023]) + uint256(stor[_1013]) + uint256(stor[_1003]) + uint256(stor[_993]) + uint256(stor[_988]) - (3 * uint256(stor[_975])) - (3 * uint256(stor[_970])) - (3 * uint256(stor[_966])) - (3 * uint256(stor[_964]))
                    mem[32] = 8
                    uint256(historyAmount[stor12].field_0) = 4
                    mem[0] = sha3(issueIndex, 8)
                    s = 0
                    idx = _1081
                    while _1081 + 128 > idx:
                        uint256(historyAmount[stor12][s].field_0) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                else:
                    if 6 * uint256(stor[_962]) / uint256(stor[_962]) != 6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 6 * uint256(stor[_962]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (3 * uint256(stor[_975])) + (3 * uint256(stor[_970])) + (3 * uint256(stor[_966])) + (3 * uint256(stor[_964])) > (6 * uint256(stor[_962])) + userBuyAmountSum[stor12][mem[0]] + uint256(stor[_1023]) + uint256(stor[_1013]) + uint256(stor[_1003]) + uint256(stor[_993]) + uint256(stor[_988]):
                        revert with 0, 'SafeMath: subtraction overflow'
                    _1091 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1091] = totalAmount
                    mem[_1091 + 32] = uint256(stor[_962])
                    mem[_1091 + 64] = uint256(stor[_975]) + uint256(stor[_970]) + uint256(stor[_966]) + uint256(stor[_964]) - (4 * uint256(stor[_962]))
                    mem[_1091 + 96] = (6 * uint256(stor[_962])) + uint256(stor[_1033]) + uint256(stor[_1023]) + uint256(stor[_1013]) + uint256(stor[_1003]) + uint256(stor[_993]) + uint256(stor[_988]) - (3 * uint256(stor[_975])) - (3 * uint256(stor[_970])) - (3 * uint256(stor[_966])) - (3 * uint256(stor[_964]))
                    mem[32] = 8
                    uint256(historyAmount[stor12].field_0) = 4
                    mem[0] = sha3(issueIndex, 8)
                    s = 0
                    idx = _1091
                    while _1091 + 128 > idx:
                        uint256(historyAmount[stor12][s].field_0) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
    idx = 4
    while uint256(historyAmount[stor12].field_0) > idx:
        uint256(historyAmount[stor12][idx].field_0) = 0
        idx = idx + 1
        continue 
    drawingPhase = 0
    emit Drawing(uint256 arg1, uint8[4] arg2):
                 uint8(winningNumbers.length),
                 uint8(winningNumbers.length),
                 uint8(winningNumbers.length),
                 uint8(winningNumbers.length.field_24),
                 issueIndex,
    lastTimestamp = block.timestamp
    totalAddresses = 0
    totalAmount = 0
    uint32(winningNumbers.length) = 0
    sub_6306f656[stor12] = block.timestamp
    issueIndex++
}

function multiClaim(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _247 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(lotteryNFTAddress)
        staticcall lotteryNFTAddress.getLotteryIssueIndex(uint256 arg1) with:
                gas gas_remaining wei
               args _247
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _251 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _252 = mem[_251]
        _253 = mem[64]
        mem[64] = mem[64] + 128
        mem[_253 len 128] = call.data[calldata.size len 128]
        require ext_code.size(lotteryNFTAddress)
        staticcall lotteryNFTAddress.getLotteryNumbers(uint256 arg1) with:
                gas gas_remaining wei
               args _247
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _256 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require _256 + 31 < _256 + return_data.size
        _257 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require 128 <= return_data.size
        s = 0
        t = _256
        u = _257
        while s < 4:
            require mem[t] == mem[t + 31 len 1]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _260 = mem[64]
        mem[64] = mem[64] + 128
        mem[_260 len 128] = call.data[calldata.size len 128]
        mem[0] = _252
        mem[32] = 6
        _262 = mem[64]
        mem[64] = mem[64] + 128
        mem[_262] = uint8(stor6[_252])
        s = _262
        t = 0
        while _262 + 128 > s + 32:
            mem[s + 32] = stor('map', ('var', '_252'), ('name', 'stor6', 6))[-(0.03125 / t + 1) + t + (-1 * 0.03125 / t + 1 * t) + 1]
            s = s + 32
            t = -(t + 1 / 32) + t + (-1 * t + 1 / 32 * t) + 1
            continue 
        if not uint8(stor6[_252]):
            revert with 0, 'not drawed'
        s = 0
        t = 0
        while s < 4:
            if mem[(32 * s) + _262 + 31 len 1] != mem[(32 * s) + _257 + 31 len 1]:
                s = s + 1
                t = t
                continue 
            s = s + 1
            t = t + 1
            continue 
        if t > 1:
            mem[mem[64] + 4] = _247
            require ext_code.size(lotteryNFTAddress)
            staticcall lotteryNFTAddress.getLotteryAmount(uint256 arg1) with:
                    gas gas_remaining wei
                   args _247
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _277 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _278 = mem[_277]
            require -t + 4 < 3
            if _252 > issueIndex:
                revert with 0, '_issueIndex <= issueIndex'
            if uint8(winningNumbers.length):
                require uint256(historyAmount[_252].field_0)
                if not uint256(historyAmount[_252].field_0):
                    mem[32] = 8
                    require -t + 5 < uint256(historyAmount[_252].field_0)
                    mem[0] = sha3(_252, 8)
                    if not _278:
                        if uint256(historyAmount[_252][t].field_1280) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint256(historyAmount[_252][t].field_1280)
                        if 0 / uint256(historyAmount[_252][t].field_1280):
                            if 0 / 0 / uint256(historyAmount[_252][t].field_1280):
                                revert with 0, 'SafeMath: multiplication overflow'
                    else:
                        if 10^12 * _278 / _278 != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint256(historyAmount[_252][t].field_1280) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint256(historyAmount[_252][t].field_1280)
                        if 10^12 * _278 / uint256(historyAmount[_252][t].field_1280):
                            if 0 / 10^12 * _278 / uint256(historyAmount[_252][t].field_1280):
                                revert with 0, 'SafeMath: multiplication overflow'
                else:
                    if allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / uint256(historyAmount[_252].field_0) != allocation[uint8(-t + 4)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[32] = 8
                    require -t + 5 < uint256(historyAmount[_252].field_0)
                    mem[0] = sha3(_252, 8)
                    if not _278:
                        if uint256(historyAmount[_252][t].field_1280) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint256(historyAmount[_252][t].field_1280)
                        if 0 / uint256(historyAmount[_252][t].field_1280):
                            if allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 0 / uint256(historyAmount[_252][t].field_1280) / 0 / uint256(historyAmount[_252][t].field_1280) != allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 0 / uint256(historyAmount[_252][t].field_1280) / 10^12 > 0:
                                require idx < mem[96]
                                _366 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                require ext_code.size(lotteryNFTAddress)
                                staticcall lotteryNFTAddress.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args _366
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _386 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_386] == mem[_386 + 12 len 20]
                                if msg.sender == mem[_386 + 12 len 20]:
                                    require idx < mem[96]
                                    _402 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                    require ext_code.size(lotteryNFTAddress)
                                    staticcall lotteryNFTAddress.getClaimStatus(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _402
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _422 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_422] == bool(mem[_422])
                                    if not mem[_422]:
                                        require idx < mem[96]
                                        _438 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xae169a5000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _438
                                        require ext_code.size(lotteryNFTAddress)
                                        call lotteryNFTAddress.claimReward(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _438
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 0 / uint256(historyAmount[_252][t].field_1280) / 10^12 < allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 0 / uint256(historyAmount[_252][t].field_1280) / 10^12:
                                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if 10^12 * _278 / _278 != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint256(historyAmount[_252][t].field_1280) <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint256(historyAmount[_252][t].field_1280)
                        if 10^12 * _278 / uint256(historyAmount[_252][t].field_1280):
                            if allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) / 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) != allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) / 10^12 > 0:
                                require idx < mem[96]
                                _372 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                require ext_code.size(lotteryNFTAddress)
                                staticcall lotteryNFTAddress.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args _372
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _389 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_389] == mem[_389 + 12 len 20]
                                if msg.sender == mem[_389 + 12 len 20]:
                                    require idx < mem[96]
                                    _408 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                    require ext_code.size(lotteryNFTAddress)
                                    staticcall lotteryNFTAddress.getClaimStatus(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _408
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _425 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_425] == bool(mem[_425])
                                    if not mem[_425]:
                                        require idx < mem[96]
                                        _444 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xae169a5000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _444
                                        require ext_code.size(lotteryNFTAddress)
                                        call lotteryNFTAddress.claimReward(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _444
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) / 10^12 < allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) / 10^12:
                                            revert with 0, 'SafeMath: addition overflow'
            else:
                if _252 == issueIndex:
                    if not totalAmount:
                        mem[32] = 8
                        require -t + 5 < uint256(historyAmount[_252].field_0)
                        mem[0] = sha3(_252, 8)
                        if not _278:
                            if uint256(historyAmount[_252][t].field_1280) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require uint256(historyAmount[_252][t].field_1280)
                            if 0 / uint256(historyAmount[_252][t].field_1280):
                                if 0 / 0 / uint256(historyAmount[_252][t].field_1280):
                                    revert with 0, 'SafeMath: multiplication overflow'
                        else:
                            if 10^12 * _278 / _278 != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint256(historyAmount[_252][t].field_1280) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require uint256(historyAmount[_252][t].field_1280)
                            if 10^12 * _278 / uint256(historyAmount[_252][t].field_1280):
                                if 0 / 10^12 * _278 / uint256(historyAmount[_252][t].field_1280):
                                    revert with 0, 'SafeMath: multiplication overflow'
                    else:
                        if allocation[uint8(-t + 4)] * totalAmount / totalAmount != allocation[uint8(-t + 4)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[32] = 8
                        require -t + 5 < uint256(historyAmount[_252].field_0)
                        mem[0] = sha3(_252, 8)
                        if not _278:
                            if uint256(historyAmount[_252][t].field_1280) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require uint256(historyAmount[_252][t].field_1280)
                            if 0 / uint256(historyAmount[_252][t].field_1280):
                                if allocation[uint8(-t + 4)] * totalAmount / 100 * 0 / uint256(historyAmount[_252][t].field_1280) / 0 / uint256(historyAmount[_252][t].field_1280) != allocation[uint8(-t + 4)] * totalAmount / 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if allocation[uint8(-t + 4)] * totalAmount / 100 * 0 / uint256(historyAmount[_252][t].field_1280) / 10^12 > 0:
                                    require idx < mem[96]
                                    _370 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                    require ext_code.size(lotteryNFTAddress)
                                    staticcall lotteryNFTAddress.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _370
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _388 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_388] == mem[_388 + 12 len 20]
                                    if msg.sender == mem[_388 + 12 len 20]:
                                        require idx < mem[96]
                                        _406 = mem[(32 * idx) + 128]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                        require ext_code.size(lotteryNFTAddress)
                                        staticcall lotteryNFTAddress.getClaimStatus(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _406
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _424 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_424] == bool(mem[_424])
                                        if not mem[_424]:
                                            require idx < mem[96]
                                            _442 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xae169a5000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _442
                                            require ext_code.size(lotteryNFTAddress)
                                            call lotteryNFTAddress.claimReward(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _442
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if allocation[uint8(-t + 4)] * totalAmount / 100 * 0 / uint256(historyAmount[_252][t].field_1280) / 10^12 < allocation[uint8(-t + 4)] * totalAmount / 100 * 0 / uint256(historyAmount[_252][t].field_1280) / 10^12:
                                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10^12 * _278 / _278 != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint256(historyAmount[_252][t].field_1280) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require uint256(historyAmount[_252][t].field_1280)
                            if 10^12 * _278 / uint256(historyAmount[_252][t].field_1280):
                                if allocation[uint8(-t + 4)] * totalAmount / 100 * 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) / 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) != allocation[uint8(-t + 4)] * totalAmount / 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if allocation[uint8(-t + 4)] * totalAmount / 100 * 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) / 10^12 > 0:
                                    require idx < mem[96]
                                    _377 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                    require ext_code.size(lotteryNFTAddress)
                                    staticcall lotteryNFTAddress.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _377
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _391 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_391] == mem[_391 + 12 len 20]
                                    if msg.sender == mem[_391 + 12 len 20]:
                                        require idx < mem[96]
                                        _413 = mem[(32 * idx) + 128]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                        require ext_code.size(lotteryNFTAddress)
                                        staticcall lotteryNFTAddress.getClaimStatus(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _413
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _427 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_427] == bool(mem[_427])
                                        if not mem[_427]:
                                            require idx < mem[96]
                                            _449 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xae169a5000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _449
                                            require ext_code.size(lotteryNFTAddress)
                                            call lotteryNFTAddress.claimReward(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _449
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if allocation[uint8(-t + 4)] * totalAmount / 100 * 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) / 10^12 < allocation[uint8(-t + 4)] * totalAmount / 100 * 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) / 10^12:
                                                revert with 0, 'SafeMath: addition overflow'
                else:
                    require uint256(historyAmount[_252].field_0)
                    if not uint256(historyAmount[_252].field_0):
                        mem[32] = 8
                        require -t + 5 < uint256(historyAmount[_252].field_0)
                        mem[0] = sha3(_252, 8)
                        if not _278:
                            if uint256(historyAmount[_252][t].field_1280) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require uint256(historyAmount[_252][t].field_1280)
                            if 0 / uint256(historyAmount[_252][t].field_1280):
                                if 0 / 0 / uint256(historyAmount[_252][t].field_1280):
                                    revert with 0, 'SafeMath: multiplication overflow'
                        else:
                            if 10^12 * _278 / _278 != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint256(historyAmount[_252][t].field_1280) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require uint256(historyAmount[_252][t].field_1280)
                            if 10^12 * _278 / uint256(historyAmount[_252][t].field_1280):
                                if 0 / 10^12 * _278 / uint256(historyAmount[_252][t].field_1280):
                                    revert with 0, 'SafeMath: multiplication overflow'
                    else:
                        if allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / uint256(historyAmount[_252].field_0) != allocation[uint8(-t + 4)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[32] = 8
                        require -t + 5 < uint256(historyAmount[_252].field_0)
                        mem[0] = sha3(_252, 8)
                        if not _278:
                            if uint256(historyAmount[_252][t].field_1280) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require uint256(historyAmount[_252][t].field_1280)
                            if 0 / uint256(historyAmount[_252][t].field_1280):
                                if allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 0 / uint256(historyAmount[_252][t].field_1280) / 0 / uint256(historyAmount[_252][t].field_1280) != allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 0 / uint256(historyAmount[_252][t].field_1280) / 10^12 > 0:
                                    require idx < mem[96]
                                    _375 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                    require ext_code.size(lotteryNFTAddress)
                                    staticcall lotteryNFTAddress.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _375
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _390 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_390] == mem[_390 + 12 len 20]
                                    if msg.sender == mem[_390 + 12 len 20]:
                                        require idx < mem[96]
                                        _411 = mem[(32 * idx) + 128]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                        require ext_code.size(lotteryNFTAddress)
                                        staticcall lotteryNFTAddress.getClaimStatus(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _411
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _426 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_426] == bool(mem[_426])
                                        if not mem[_426]:
                                            require idx < mem[96]
                                            _447 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xae169a5000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _447
                                            require ext_code.size(lotteryNFTAddress)
                                            call lotteryNFTAddress.claimReward(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _447
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 0 / uint256(historyAmount[_252][t].field_1280) / 10^12 < allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 0 / uint256(historyAmount[_252][t].field_1280) / 10^12:
                                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if 10^12 * _278 / _278 != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if uint256(historyAmount[_252][t].field_1280) <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require uint256(historyAmount[_252][t].field_1280)
                            if 10^12 * _278 / uint256(historyAmount[_252][t].field_1280):
                                if allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) / 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) != allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) / 10^12 > 0:
                                    require idx < mem[96]
                                    _380 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                    require ext_code.size(lotteryNFTAddress)
                                    staticcall lotteryNFTAddress.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _380
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _393 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_393] == mem[_393 + 12 len 20]
                                    if msg.sender == mem[_393 + 12 len 20]:
                                        require idx < mem[96]
                                        _416 = mem[(32 * idx) + 128]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 128]
                                        require ext_code.size(lotteryNFTAddress)
                                        staticcall lotteryNFTAddress.getClaimStatus(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args _416
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _429 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_429] == bool(mem[_429])
                                        if not mem[_429]:
                                            require idx < mem[96]
                                            _452 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xae169a5000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _452
                                            require ext_code.size(lotteryNFTAddress)
                                            call lotteryNFTAddress.claimReward(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _452
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) / 10^12 < allocation[uint8(-t + 4)] * uint256(historyAmount[_252].field_0) / 100 * 10^12 * _278 / uint256(historyAmount[_252][t].field_1280) / 10^12:
                                                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    emit MultiClaim(0, msg.sender);
}



}
