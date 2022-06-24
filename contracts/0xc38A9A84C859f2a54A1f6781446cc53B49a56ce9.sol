contract main {




// =====================  Runtime code  =====================


#
#  - sub_17b4e9d4(?)
#  - recoverWrongTokens(address arg1, uint256 arg2)
#  - injectFunds(uint256 arg1, uint256 arg2)
#  - claimTickets(uint256 arg1, uint256[] arg2, uint32[] arg3)
#
const sub_0ba6643e(?) = 500

const sub_13d8bc3e(?) = 50000 * 10^18

const sub_77e59a7c(?) = 50000 * 10^18

const MIN_LENGTH_LOTTERY = 86100

const MIN_DISCOUNT_DIVISOR = 0

const MAX_LENGTH_LOTTERY = 521700

const MAX_TREASURY_FEE = 500

const BURN_ADDRESS = 57005


uint256 stor0;
address owner;
address injectorAddress;
address operatorAddress;
uint256 stor3;
address treasuryAddress;
uint256 viewCurrentLotteryId;
uint256 currentTicketId;
uint256 maxNumberTicketsPerBuyOrClaim;
uint256 sub_11eae2c8;
uint256 sub_a5b26ec2;
uint256 sub_60f3c325;
uint256 pendingInjectionNextLottery;
uint256 sub_7b8cbb86;
uint8 stor13;
address sub_c31ce6bfAddress; offset 8
address randomGeneratorAddress;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint8 stor19;
uint8 stor19; offset 8
uint256 stor19; offset 8
mapping of struct stor20;
mapping of struct stor21;
mapping of uint256 sub_6c0d4285;

function sub_11eae2c8(?) payable {
    return sub_11eae2c8
}

function operatorAddress() payable {
    return address(operatorAddress)
}

function pendingInjectionNextLottery() payable {
    return pendingInjectionNextLottery
}

function maxNumberTicketsPerBuyOrClaim() payable {
    return maxNumberTicketsPerBuyOrClaim
}

function sub_60f3c325(?) payable {
    return sub_60f3c325
}

function currentTicketId() payable {
    return currentTicketId
}

function currentLotteryId() payable {
    return viewCurrentLotteryId
}

function sub_6c0d4285(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_6c0d4285[arg1][arg2]
}

function sub_7b8cbb86(?) payable {
    return sub_7b8cbb86
}

function viewCurrentLotteryId() payable {
    return viewCurrentLotteryId
}

function owner() payable {
    return owner
}

function injectorAddress() payable {
    return injectorAddress
}

function sub_a5b26ec2(?) payable {
    return sub_a5b26ec2
}

function sub_c31ce6bf(?) payable {
    return sub_c31ce6bfAddress
}

function treasuryAddress() payable {
    return treasuryAddress
}

function sub_cf17413b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 < sub_cf17413b[arg1][arg2]
    return sub_cf17413b[arg1][arg2][arg3]
}

function randomGenerator() payable {
    return randomGeneratorAddress
}

function getOperator() payable {
    return address(operatorAddress)
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

function sub_65b94fa4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor19.field_0) = uint8(bool(arg1))
    sub_60f3c325 = arg2
}

function setMaxNumberTicketsPerBuy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Must be > 0'
    maxNumberTicketsPerBuyOrClaim = arg1
}

function sub_fb755fa5(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > arg2:
        revert with 0, 'minPrice must be < maxPrice'
    sub_a5b26ec2 = arg1
    sub_11eae2c8 = arg2
}

function sub_be42ce07(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < sub_a5b26ec2:
        revert with 0, 'minPrice must be > minPrice'
    if arg1 > sub_11eae2c8:
        revert with 0, 'minPrice must be < maxPrice'
    sub_60f3c325 = arg1
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

function sub_0a09aae1(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 50000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pending Injection Next Lottery too high'
    if arg2 > 50000 * 10^18:
        revert with 0, 'Prize Reserve too high'
    stor15 = arg1
    stor16 = arg2
}

function sub_584e381f(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 50000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pending Injection Next Lottery too high'
    if arg2 > 50000 * 10^18:
        revert with 0, 'Prize Reserve too high'
    stor17 = arg1
    stor18 = arg2
}

function viewRewardsForTicketId(uint256 arg1, uint256 arg2, uint32 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if uint8(stor20[arg1].field_0) > 3:
        revert with 0, 33
    if uint8(stor20[arg1].field_0) != 3:
        return 0
    if arg2 > stor20[arg1].field_6400:
        if arg2 <= stor20[arg1].field_6144:
            return 0
    if arg3 >= 6:
        revert with 0, 50
    return stor20[arg1][arg3].field_3072
}

function sub_21860012(?) payable {
    if 1 > !viewCurrentLotteryId:
        revert with 0, 17
    if var20002 >= viewCurrentLotteryId + 1:
        return var20003
    if var24001 > !var24002:
        revert with 0, 17
    if var30001 == -1:
        revert with 0, 17
    if 1 > !viewCurrentLotteryId:
        revert with 0, 17
    if var42002 >= viewCurrentLotteryId + 1:
        return var42003
    if var46001 > !var46002:
        revert with 0, 17
    # nil
}

function sub_585bda46(?) payable {
    if 1 > !viewCurrentLotteryId:
        revert with 0, 17
    if var20002 >= viewCurrentLotteryId + 1:
        return var20003
    if var24001 > !var24002:
        revert with 0, 17
    if var30001 == -1:
        revert with 0, 17
    if 1 > !viewCurrentLotteryId:
        revert with 0, 17
    if var42002 >= viewCurrentLotteryId + 1:
        return var42003
    if var46001 > !var46002:
        revert with 0, 17
    # nil
}

function setRandomGenerator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(operatorAddress) != msg.sender:
        revert with 0, 'Not operator'
    randomGeneratorAddress = arg1
    require ext_code.size(arg1)
    call arg1.setLotteryAddress(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor13 = 1
}

function sub_1ff7c6c5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Cannot be zero address'
    if not address(arg2):
        revert with 0, 'Cannot be zero address'
    if not address(arg3):
        revert with 0, 'Cannot be zero address'
    address(operatorAddress) = address(arg1)
    treasuryAddress = address(arg2)
    injectorAddress = address(arg3)
    emit NewOperatorAndTreasuryAndInjectorAddresses(address(arg1), address(arg2), address(arg3));
}

function closeLottery(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'Not operator'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(stor19.field_8):
        revert with 0, 'Current Lottery paused'
    if uint8(stor20[arg1].field_0) > 3:
        revert with 0, 33
    if uint8(stor20[arg1].field_0) != 1:
        revert with 0, 'Lottery not open'
    if block.timestamp <= stor20[arg1].field_512:
        revert with 0, 'Lottery not over'
    stor20[arg1].field_6400 = currentTicketId
    uint8(stor20[arg1].field_0) = 2
    emit LotteryClose(currentTicketId, arg1);
    stor0 = 1
}

function calculateTotalPriceForBulkTickets(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg3:
        revert with 0, 'Number of tickets must be > 0'
    if not arg1:
        if arg2 and arg3 > -1 / arg2:
            revert with 0, 17
        return (arg2 * arg3)
    if arg3 < 1:
        revert with 0, 17
    if arg1 < arg3 - 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'discountDivisor must be >= _numberTickets - 1'
    if 1 > !arg1:
        revert with 0, 17
    if arg1 + 1 < arg3:
        revert with 0, 17
    if arg2 and arg3 > -1 / arg2:
        revert with 0, 17
    if arg2 * arg3 and arg1 + -arg3 + 1 > -1 / arg2 * arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    return ((arg2 * arg3) + (arg1 * arg2 * arg3) - (arg3 * arg2 * arg3) / arg1)
}

function changeRandomGenerator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor20[stor5].field_0) > 3:
        revert with 0, 33
    if uint8(stor20[stor5].field_0) != 3:
        revert with 0, 'Lottery not in claimable'
    require ext_code.size(arg1)
    call arg1.getRandomNumber(uint256 arg1) with:
         gas gas_remaining wei
        args sha3(viewCurrentLotteryId, currentTicketId)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.viewRandomResult() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    randomGeneratorAddress = arg1
    emit NewRandomGenerator(arg1);
}

function viewLottery(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor20[arg1].field_0) > 3:
        revert with 0, 33
    idx = 1568
    s = 5
    while 1760 > idx + 32:
        mem[idx + 32] = stor20[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 1760
    s = 12
    while 1952 > idx + 32:
        mem[idx + 32] = stor20[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 1952
    s = 18
    while 2144 > idx + 32:
        mem[idx + 32] = stor20[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if uint8(stor20[arg1].field_0) >= 4:
        revert with 0, 33
    return uint8(stor20[arg1].field_0), 
           stor20[arg1].field_256,
           stor20[arg1].field_512,
           stor20[arg1].field_768,
           stor20[arg1].field_1024,
           stor20[arg1].field_1280,
           mem[1600 len 160],
           stor20[arg1].field_2816,
           stor20[arg1].field_3072,
           mem[1792 len 160],
           stor20[arg1].field_4608,
           mem[1984 len 160],
           stor20[arg1].field_6144,
           stor20[arg1].field_6400,
           stor20[arg1].field_6656,
           stor20[arg1].field_6912,
           stor20[arg1].field_7168
}

function sub_7f684ba8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        uint8(stor20[stor5].field_0) = 3
        stor20[stor5].field_6656 = 0
        idx = 0
        while idx < 6:
            mem[0] = viewCurrentLotteryId
            mem[32] = 20
            stor20[stor5][idx].field_3072 = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
        stor20[stor5].field_6400 = currentTicketId
        uint8(stor20[stor5].field_0) = 2
        sub_7b8cbb86 = 0
        pendingInjectionNextLottery = 0
        idx = 1
        while idx < viewCurrentLotteryId:
            mem[0] = idx
            mem[32] = 20
            uint8(stor20[idx].field_0) = 2
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ext_code.size(sub_c31ce6bfAddress)
        staticcall sub_c31ce6bfAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c31ce6bfAddress)
        call sub_c31ce6bfAddress.0xa9059cbb with:
             gas gas_remaining wei
            args 57005, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    Mask(248, 0, stor19.field_8) = Mask(248, 0, bool(arg1))
}

function startLottery(uint256 arg1, uint256 arg2, uint256 arg3, uint256[6] arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 320
    require 131 < calldata.size
    require 292 <= calldata.size
    idx = 0
    s = 100
    t = 96
    while idx < 6:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(operatorAddress) != msg.sender:
        revert with 0, 'Not operator'
    if uint8(stor19.field_8):
        revert with 0, 'Current Lottery paused'
    if viewCurrentLotteryId:
        if uint8(stor20[stor5].field_0) > 3:
            revert with 0, 33
        if uint8(stor20[stor5].field_0) != 3:
            revert with 0, 'Not time to start lottery'
    if arg1 < block.timestamp:
        revert with 0, 17
    if arg1 - block.timestamp <= 86100:
        revert with 0, 'Lottery length outside of range'
    if arg1 < block.timestamp:
        revert with 0, 17
    if arg1 - block.timestamp >= 521700:
        revert with 0, 'Lottery length outside of range'
    if arg2 < sub_a5b26ec2:
        revert with 0, 'Outside of limits'
    if arg2 > sub_11eae2c8:
        revert with 0, 'Outside of limits'
    if cd[292] > 500:
        revert with 0, 'Treasury fee too high'
    if mem[96] > !mem[128]:
        revert with 0, 17
    if mem[96] + mem[128] > !mem[160]:
        revert with 0, 17
    if mem[96] + mem[128] + mem[160] > !mem[192]:
        revert with 0, 17
    if mem[96] + mem[128] + mem[160] + mem[192] > !mem[224]:
        revert with 0, 17
    if mem[96] + mem[128] + mem[160] + mem[192] + mem[224] > !mem[256]:
        revert with 0, 17
    if mem[96] + mem[128] + mem[160] + mem[192] + mem[224] + mem[256] != 10000:
        revert with 0, 'Rewards must equal 10000'
    if viewCurrentLotteryId == -1:
        revert with 0, 17
    viewCurrentLotteryId++
    if uint8(stor19.field_0):
        if pendingInjectionNextLottery < stor17:
            if sub_7b8cbb86 > stor18:
                if pendingInjectionNextLottery > !stor18:
                    revert with 0, 17
                pendingInjectionNextLottery += stor18
                if sub_7b8cbb86 < stor18:
                    revert with 0, 17
                sub_7b8cbb86 -= stor18
    else:
        if pendingInjectionNextLottery < stor15:
            if sub_7b8cbb86 > stor16:
                if pendingInjectionNextLottery > !stor16:
                    revert with 0, 17
                pendingInjectionNextLottery += stor16
                if sub_7b8cbb86 < stor16:
                    revert with 0, 17
                sub_7b8cbb86 -= stor16
    mem[288] = 1
    mem[736] = 0
    mem[768] = 0
    mem[800] = 0
    mem[832] = 0
    mem[864] = 0
    mem[896] = 0
    mem[928] = 0
    mem[960] = 0
    mem[992] = 0
    mem[1024] = 0
    mem[1056] = 0
    mem[1088] = 0
    uint8(stor20[stor5].field_0) = 1
    stor20[stor5].field_256 = block.timestamp
    stor20[stor5].field_512 = arg1
    stor20[stor5].field_768 = arg2
    stor20[stor5].field_1024 = arg3
    s = 5
    idx = 96
    while 288 > idx:
        stor20[stor5][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 11
    while 11 > idx:
        stor20[stor5][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor20[stor5].field_2816 = cd[292]
    s = 12
    idx = 736
    while 928 > idx:
        stor20[stor5][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 18
    while 18 > idx:
        stor20[stor5][idx].field_0 = 0
        idx = idx + 1
        continue 
    s = 18
    idx = 928
    while 1120 > idx:
        stor20[stor5][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 24
    while 24 > idx:
        stor20[stor5][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor20[stor5].field_6144 = currentTicketId
    stor20[stor5].field_6400 = currentTicketId
    stor20[stor5].field_6656 = pendingInjectionNextLottery
    stor20[stor5].field_6912 = 0
    stor20[stor5].field_7168 = 0
    emit LotteryOpen(block.timestamp, arg1, arg2, currentTicketId, pendingInjectionNextLottery, viewCurrentLotteryId);
    pendingInjectionNextLottery = 0
    sub_60f3c325 = arg2
}

function viewNumbersAndStatusesForTicketIds(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    idx = 0
    t = 128
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg1.length
    if not arg1.length:
        if arg1.length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129] = arg1.length
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                if idx >= arg1.length:
                    revert with 0, 50
                if idx >= arg1.length:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = stor21[mem[(32 * idx) + 128]].field_0
                if idx >= arg1.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 21
                if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                    revert with 0, 50
                if address(stor21[mem[(32 * idx) + 128]].field_256):
                    mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = 0
                else:
                    mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 161] = 64
            mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 225] = arg1.length
            mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 257 len 32 * arg1.length] = mem[ceil32(32 * arg1.length) + 129 len 32 * arg1.length]
            mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 193] = (32 * arg1.length) + 96
            _194 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
            mem[ceil32(32 * arg1.length) + (98 * arg1.length) + 257] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
            idx = 0
            s = ceil32(32 * arg1.length) + (32 * arg1.length) + 161
            t = ceil32(32 * arg1.length) + (98 * arg1.length) + 289
            while idx < mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from ceil32(32 * arg1.length) + (64 * arg1.length) + 161
               len (161 * arg1.length) + (32 * _194) + 128
        mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 0, 50
            if idx >= arg1.length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = stor21[mem[(32 * idx) + 128]].field_0
            if idx >= arg1.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 21
            if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                revert with 0, 50
            if address(stor21[mem[(32 * idx) + 128]].field_256):
                mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = 0
            else:
                mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 161] = 64
        mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 225] = arg1.length
        mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 257 len 32 * arg1.length] = mem[ceil32(32 * arg1.length) + 129 len 32 * arg1.length]
        mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 193] = (32 * arg1.length) + 96
        _195 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
        mem[ceil32(32 * arg1.length) + (98 * arg1.length) + 257] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
        idx = 0
        s = ceil32(32 * arg1.length) + (32 * arg1.length) + 161
        t = ceil32(32 * arg1.length) + (98 * arg1.length) + 289
        while idx < mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from ceil32(32 * arg1.length) + (64 * arg1.length) + 161
           len (161 * arg1.length) + (32 * _195) + 128
    mem[ceil32(32 * arg1.length) + 129 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129] = arg1.length
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 0, 50
            if idx >= arg1.length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = stor21[mem[(32 * idx) + 128]].field_0
            if idx >= arg1.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 21
            if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                revert with 0, 50
            if address(stor21[mem[(32 * idx) + 128]].field_256):
                mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = 0
            else:
                mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 161] = 64
        mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 225] = arg1.length
        mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 257 len 32 * arg1.length] = mem[ceil32(32 * arg1.length) + 129 len 32 * arg1.length]
        mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 193] = (32 * arg1.length) + 96
        _196 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
        mem[ceil32(32 * arg1.length) + (98 * arg1.length) + 257] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
        idx = 0
        s = ceil32(32 * arg1.length) + (32 * arg1.length) + 161
        t = ceil32(32 * arg1.length) + (98 * arg1.length) + 289
        while idx < mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from ceil32(32 * arg1.length) + (64 * arg1.length) + 161
           len (161 * arg1.length) + (32 * _196) + 128
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = stor21[mem[(32 * idx) + 128]].field_0
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 21
        if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
            revert with 0, 50
        if address(stor21[mem[(32 * idx) + 128]].field_256):
            mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = 0
        else:
            mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 161] = 64
    mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 225] = arg1.length
    mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 257 len 32 * arg1.length] = mem[ceil32(32 * arg1.length) + 129 len 32 * arg1.length]
    mem[ceil32(32 * arg1.length) + (64 * arg1.length) + 193] = (32 * arg1.length) + 96
    _197 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
    mem[ceil32(32 * arg1.length) + (98 * arg1.length) + 257] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
    idx = 0
    s = ceil32(32 * arg1.length) + (32 * arg1.length) + 161
    t = ceil32(32 * arg1.length) + (98 * arg1.length) + 289
    while idx < mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from ceil32(32 * arg1.length) + (64 * arg1.length) + 161
       len (161 * arg1.length) + (32 * _197) + 128
}

function sub_0df2a69f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 1 > !viewCurrentLotteryId:
        revert with 0, 17
    if var28002 >= viewCurrentLotteryId + 1:
        if var28003 > test266151307():
            revert with 0, 65
        mem[96] = var28003
        mem[64] = (32 * var28003) + 128
        if not var28003:
            if 1 > !viewCurrentLotteryId:
                revert with 0, 17
            if var40002 < viewCurrentLotteryId + 1:
                mem[0] = var42001
                mem[32] = sha3(address(arg1), 22)
                if not sub_cf17413b[address(arg1)][var42001]:
                    if var42001 == -1:
                        revert with 0, 17
                    if 1 > !viewCurrentLotteryId:
                        revert with 0, 17
                    if var42001 < viewCurrentLotteryId:
                        var42001 = var42001 + 1
                        var42003 = var42003
                        continue 
                else:
                    if var42003 >= var28003:
                        revert with 0, 50
                    mem[(32 * var42003) + 128] = var42001
                    if var42003 == -1:
                        revert with 0, 17
                    if var42001 == -1:
                        revert with 0, 17
                    if 1 > !viewCurrentLotteryId:
                        revert with 0, 17
                    if var42001 < viewCurrentLotteryId:
                        var42001 = var42001 + 1
                        var42003 = var42003 + 1
                        continue 
                ('ge', ('var', 42001), ('stor', ('name', 'viewCurrentLotteryId', 5)))
            mem[(32 * var28003) + 128] = 32
            mem[(32 * var28003) + 160] = var28003
            mem[(32 * var28003) + 192 len 32 * var28003] = mem[128 len 32 * var28003]
        else:
            mem[128 len 32 * var28003] = call.data[calldata.size len 32 * var28003]
            if 1 > !viewCurrentLotteryId:
                revert with 0, 17
            if var41002 < viewCurrentLotteryId + 1:
                mem[0] = var43001
                mem[32] = sha3(address(arg1), 22)
                if not sub_cf17413b[address(arg1)][var43001]:
                    if var43001 == -1:
                        revert with 0, 17
                    if 1 > !viewCurrentLotteryId:
                        revert with 0, 17
                    if var43001 < viewCurrentLotteryId:
                        var43001 = var43001 + 1
                        var43003 = var43003
                        continue 
                else:
                    if var43003 >= var28003:
                        revert with 0, 50
                    mem[(32 * var43003) + 128] = var43001
                    if var43003 == -1:
                        revert with 0, 17
                    if var43001 == -1:
                        revert with 0, 17
                    if 1 > !viewCurrentLotteryId:
                        revert with 0, 17
                    if var43001 < viewCurrentLotteryId:
                        var43001 = var43001 + 1
                        var43003 = var43003 + 1
                        continue 
                ('ge', ('var', 43001), ('stor', ('name', 'viewCurrentLotteryId', 5)))
            mem[(32 * var28003) + 128] = 32
            mem[(32 * var28003) + 160] = var28003
            mem[(32 * var28003) + 192 len 32 * var28003] = call.data[calldata.size len 32 * var28003]
        return memory
          from (32 * var28003) + 128
           len (96 * var28003) + 64
    mem[0] = var30001
    mem[32] = sha3(address(arg1), 22)
    if sub_cf17413b[address(arg1)][var30001]:
        if var30002 == -1:
            revert with 0, 17
        if var30001 == -1:
            revert with 0, 17
        if 1 > !viewCurrentLotteryId:
            revert with 0, 17
        if var30001 < viewCurrentLotteryId:
            var30001 = var30001 + 1
            var30002 = var30002 + 1
            continue 
        if var30002 + 1 > test266151307():
            revert with 0, 65
        mem[96] = var30002 + 1
        mem[64] = (32 * var30002 + 1) + 128
        if not var30002 + 1:
            if 1 > !viewCurrentLotteryId:
                revert with 0, 17
            if var54002 >= viewCurrentLotteryId + 1:
                return Array(len=var30002 + 1, data=mem[128 len 32 * var30002 + 1], mem[(64 * var30002 + 1) + 192 len (96 * var30002) + -(32 * var30002 + 1) + 96]), 
            mem[0] = var56001
            mem[32] = sha3(address(arg1), 22)
            if not sub_cf17413b[address(arg1)][var56001]:
                if var56001 == -1:
                    revert with 0, 17
                if 1 > !viewCurrentLotteryId:
                    revert with 0, 17
                if var56001 >= viewCurrentLotteryId:
                    return Array(len=var30002 + 1, data=mem[128 len 32 * var30002 + 1], mem[(64 * var30002 + 1) + 192 len (96 * var30002) + -(32 * var30002 + 1) + 96]), 
                var56001 = var56001 + 1
                var56003 = var56003
                continue 
            if var56003 >= var30002 + 1:
                revert with 0, 50
            mem[(32 * var56003) + 128] = var56001
            if var56003 == -1:
                revert with 0, 17
            if var56001 == -1:
                revert with 0, 17
            if 1 > !viewCurrentLotteryId:
                revert with 0, 17
            if var56001 >= viewCurrentLotteryId:
                return Array(len=var30002 + 1, data=mem[128 len 32 * var30002 + 1], mem[(64 * var30002 + 1) + 192 len (96 * var30002) + -(32 * var30002 + 1) + 96]), 
            var56001 = var56001 + 1
            var56003 = var56003 + 1
            continue 
        mem[128 len 32 * var30002 + 1] = call.data[calldata.size len 32 * var30002 + 1]
        if 1 > !viewCurrentLotteryId:
            revert with 0, 17
        if var55002 >= viewCurrentLotteryId + 1:
            return Array(len=var30002 + 1, data=call.data[calldata.size len 32 * var30002 + 1], mem[(64 * var30002 + 1) + 192 len (96 * var30002) + -(32 * var30002 + 1) + 96]), 
        mem[0] = var57001
        mem[32] = sha3(address(arg1), 22)
        if not sub_cf17413b[address(arg1)][var57001]:
            if var57001 == -1:
                revert with 0, 17
            if 1 > !viewCurrentLotteryId:
                revert with 0, 17
            if var57001 >= viewCurrentLotteryId:
                return Array(len=var30002 + 1, data=call.data[calldata.size len 32 * var30002 + 1], mem[(64 * var30002 + 1) + 192 len (96 * var30002) + -(32 * var30002 + 1) + 96]), 
            var57001 = var57001 + 1
            var57003 = var57003
            continue 
        if var57003 >= var30002 + 1:
            revert with 0, 50
        mem[(32 * var57003) + 128] = var57001
        if var57003 == -1:
            revert with 0, 17
        if var57001 == -1:
            revert with 0, 17
        if 1 > !viewCurrentLotteryId:
            revert with 0, 17
        if var57001 >= viewCurrentLotteryId:
            return Array(len=var30002 + 1, data=call.data[calldata.size len 32 * var30002 + 1], mem[(64 * var30002 + 1) + 192 len (96 * var30002) + -(32 * var30002 + 1) + 96]), 
        var57001 = var57001 + 1
        var57003 = var57003 + 1
        continue 
    if var30001 == -1:
        revert with 0, 17
    if 1 > !viewCurrentLotteryId:
        revert with 0, 17
    if var30001 < viewCurrentLotteryId:
        var30001 = var30001 + 1
        var30002 = var30002
        continue 
    if var30002 > test266151307():
        revert with 0, 65
    mem[96] = var30002
    mem[64] = (32 * var30002) + 128
    if not var30002:
        if 1 > !viewCurrentLotteryId:
            revert with 0, 17
        if var50002 < viewCurrentLotteryId + 1:
            mem[0] = var52001
            mem[32] = sha3(address(arg1), 22)
            if not sub_cf17413b[address(arg1)][var52001]:
                if var52001 == -1:
                    revert with 0, 17
                if 1 > !viewCurrentLotteryId:
                    revert with 0, 17
                if var52001 < viewCurrentLotteryId:
                    var52001 = var52001 + 1
                    var52003 = var52003
                    continue 
            else:
                if var52003 >= var30002:
                    revert with 0, 50
                mem[(32 * var52003) + 128] = var52001
                if var52003 == -1:
                    revert with 0, 17
                if var52001 == -1:
                    revert with 0, 17
                if 1 > !viewCurrentLotteryId:
                    revert with 0, 17
                if var52001 < viewCurrentLotteryId:
                    var52001 = var52001 + 1
                    var52003 = var52003 + 1
                    continue 
            ('ge', ('var', 52001), ('stor', ('name', 'viewCurrentLotteryId', 5)))
        mem[(32 * var30002) + 128] = 32
        mem[(32 * var30002) + 160] = var30002
        mem[(32 * var30002) + 192 len 32 * var30002] = mem[128 len 32 * var30002]
    else:
        mem[128 len 32 * var30002] = call.data[calldata.size len 32 * var30002]
        if 1 > !viewCurrentLotteryId:
            revert with 0, 17
        if var51002 < viewCurrentLotteryId + 1:
            mem[0] = var53001
            mem[32] = sha3(address(arg1), 22)
            if not sub_cf17413b[address(arg1)][var53001]:
                if var53001 == -1:
                    revert with 0, 17
                if 1 > !viewCurrentLotteryId:
                    revert with 0, 17
                if var53001 < viewCurrentLotteryId:
                    var53001 = var53001 + 1
                    var53003 = var53003
                    continue 
            else:
                if var53003 >= var30002:
                    revert with 0, 50
                mem[(32 * var53003) + 128] = var53001
                if var53003 == -1:
                    revert with 0, 17
                if var53001 == -1:
                    revert with 0, 17
                if 1 > !viewCurrentLotteryId:
                    revert with 0, 17
                if var53001 < viewCurrentLotteryId:
                    var53001 = var53001 + 1
                    var53003 = var53003 + 1
                    continue 
            ('ge', ('var', 53001), ('stor', ('name', 'viewCurrentLotteryId', 5)))
        mem[(32 * var30002) + 128] = 32
        mem[(32 * var30002) + 160] = var30002
        mem[(32 * var30002) + 192 len 32 * var30002] = call.data[calldata.size len 32 * var30002]
    return memory
      from (32 * var30002) + 128
       len (96 * var30002) + 64
}

function viewUserInfoForLotteryId(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 22)
    if sub_cf17413b[address(arg1)][arg2] < arg3:
        revert with 0, 17
    if arg4 <= sub_cf17413b[address(arg1)][arg2] - arg3:
        if arg4 > test266151307():
            revert with 0, 65
        if arg4:
            mem[128 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
        if arg4 > test266151307():
            revert with 0, 65
        mem[(32 * arg4) + 128] = arg4
        if arg4:
            mem[(32 * arg4) + 160 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
        if arg4 > test266151307():
            revert with 0, 65
        mem[(64 * arg4) + 160] = arg4
        if arg4:
            mem[(64 * arg4) + 192 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
        idx = 0
        while idx < arg4:
            if idx > !arg3:
                revert with 0, 17
            if idx + arg3 >= sub_cf17413b[address(arg1)][arg2]:
                revert with 0, 50
            if idx >= arg4:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
            if idx >= arg4:
                revert with 0, 50
            if idx >= mem[(32 * arg4) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg4) + 160] = stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_0
            if idx >= arg4:
                revert with 0, 50
            mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
            mem[32] = 21
            if idx >= mem[(64 * arg4) + 160]:
                revert with 0, 50
            if address(stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_256):
                mem[(32 * idx) + (64 * arg4) + 192] = 0
            else:
                mem[(32 * idx) + (64 * arg4) + 192] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg3 > !arg4:
            revert with 0, 17
        mem[(98 * arg4) + 192] = 128
        mem[(98 * arg4) + 320] = arg4
        mem[(98 * arg4) + 352 len 32 * arg4] = mem[128 len 32 * arg4]
        mem[(98 * arg4) + 224] = (32 * arg4) + 160
        mem[(131 * arg4) + 352] = mem[(32 * arg4) + 128]
        mem[(131 * arg4) + 384 len 32 * mem[(32 * arg4) + 128]] = mem[(32 * arg4) + 160 len 32 * mem[(32 * arg4) + 128]]
        mem[(98 * arg4) + 256] = (32 * arg4) + (32 * mem[(32 * arg4) + 128]) + 192
        mem[(131 * arg4) + (32 * mem[(32 * arg4) + 128]) + 384] = mem[(64 * arg4) + 160]
        idx = 0
        s = (64 * arg4) + 192
        t = (131 * arg4) + (32 * mem[(32 * arg4) + 128]) + 416
        while idx < mem[(64 * arg4) + 160]:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return Array(len=arg4, data=mem[(98 * arg4) + 352 len (33 * arg4) + (32 * mem[(32 * arg4) + 128]) + (32 * mem[(64 * arg4) + 160]) + 64]), 
               (32 * arg4) + 160,
               (32 * arg4) + (32 * mem[(32 * arg4) + 128]) + 192,
               arg3 + arg4
    if sub_cf17413b[address(arg1)][arg2] < arg3:
        revert with 0, 17
    if sub_cf17413b[address(arg1)][arg2] - arg3 > test266151307():
        revert with 0, 65
    mem[96] = sub_cf17413b[address(arg1)][arg2] - arg3
    if not sub_cf17413b[address(arg1)][arg2] - arg3:
        if sub_cf17413b[address(arg1)][arg2] - arg3 > test266151307():
            revert with 0, 65
        mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128] = sub_cf17413b[address(arg1)][arg2] - arg3
        if not sub_cf17413b[address(arg1)][arg2] - arg3:
            if sub_cf17413b[address(arg1)][arg2] - arg3 > test266151307():
                revert with 0, 65
            mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160] = sub_cf17413b[address(arg1)][arg2] - arg3
            mem[64] = (98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 192
            if not sub_cf17413b[address(arg1)][arg2] - arg3:
                idx = 0
                while idx < sub_cf17413b[address(arg1)][arg2] - arg3:
                    if idx > !arg3:
                        revert with 0, 17
                    if idx + arg3 >= sub_cf17413b[address(arg1)][arg2]:
                        revert with 0, 50
                    if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
                    if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                        revert with 0, 50
                    if idx >= mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160] = stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_0
                    if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                        revert with 0, 50
                    mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
                    mem[32] = 21
                    if idx >= mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]:
                        revert with 0, 50
                    if address(stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_256):
                        mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 0
                    else:
                        mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg3 > !(sub_cf17413b[address(arg1)][arg2] - arg3):
                    revert with 0, 17
                mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
                mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 320] = sub_cf17413b[address(arg1)][arg2] - arg3
                mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = mem[128 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
                mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160
                _713 = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
                mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 352] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
                mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 384 len 32 * _713] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160 len 32 * _713]
                mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _713) + 192
                _809 = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
                mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _713) + 384] = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
                idx = 0
                s = (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192
                t = (98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _713) + 416
                while idx < _809:
                    mem[t] = bool(mem[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return Array(len=sub_cf17413b[address(arg1)][arg2] - arg3, data=mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _713) + (32 * _809) + 64]), 
                       (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160,
                       (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _713) + 192,
                       sub_cf17413b[address(arg1)][arg2]
            mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
            idx = 0
            while idx < sub_cf17413b[address(arg1)][arg2] - arg3:
                if idx > !arg3:
                    revert with 0, 17
                if idx + arg3 >= sub_cf17413b[address(arg1)][arg2]:
                    revert with 0, 50
                if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
                if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                if idx >= mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160] = stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_0
                if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
                mem[32] = 21
                if idx >= mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]:
                    revert with 0, 50
                if address(stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_256):
                    mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 0
                else:
                    mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg3 > !(sub_cf17413b[address(arg1)][arg2] - arg3):
                revert with 0, 17
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 320] = sub_cf17413b[address(arg1)][arg2] - arg3
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = mem[128 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160
            _714 = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 352] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 384 len 32 * _714] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160 len 32 * _714]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _714) + 192
            _810 = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _714) + 384] = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
            idx = 0
            s = (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192
            t = (98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _714) + 416
            while idx < _810:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return Array(len=sub_cf17413b[address(arg1)][arg2] - arg3, data=mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _714) + (32 * _810) + 64]), 
                   (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160,
                   (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _714) + 192,
                   sub_cf17413b[address(arg1)][arg2]
        mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
        if sub_cf17413b[address(arg1)][arg2] - arg3 > test266151307():
            revert with 0, 65
        mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160] = sub_cf17413b[address(arg1)][arg2] - arg3
        mem[64] = (98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 192
        if not sub_cf17413b[address(arg1)][arg2] - arg3:
            idx = 0
            while idx < sub_cf17413b[address(arg1)][arg2] - arg3:
                if idx > !arg3:
                    revert with 0, 17
                if idx + arg3 >= sub_cf17413b[address(arg1)][arg2]:
                    revert with 0, 50
                if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
                if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                if idx >= mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160] = stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_0
                if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
                mem[32] = 21
                if idx >= mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]:
                    revert with 0, 50
                if address(stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_256):
                    mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 0
                else:
                    mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg3 > !(sub_cf17413b[address(arg1)][arg2] - arg3):
                revert with 0, 17
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 320] = sub_cf17413b[address(arg1)][arg2] - arg3
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = mem[128 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160
            _715 = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 352] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 384 len 32 * _715] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160 len 32 * _715]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _715) + 192
            _811 = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _715) + 384] = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
            idx = 0
            s = (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192
            t = (98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _715) + 416
            while idx < _811:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return Array(len=sub_cf17413b[address(arg1)][arg2] - arg3, data=mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _715) + (32 * _811) + 64]), 
                   (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160,
                   (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _715) + 192,
                   sub_cf17413b[address(arg1)][arg2]
        mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
        idx = 0
        while idx < sub_cf17413b[address(arg1)][arg2] - arg3:
            if idx > !arg3:
                revert with 0, 17
            if idx + arg3 >= sub_cf17413b[address(arg1)][arg2]:
                revert with 0, 50
            if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
            if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                revert with 0, 50
            if idx >= mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160] = stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_0
            if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                revert with 0, 50
            mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
            mem[32] = 21
            if idx >= mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]:
                revert with 0, 50
            if address(stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_256):
                mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 0
            else:
                mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg3 > !(sub_cf17413b[address(arg1)][arg2] - arg3):
            revert with 0, 17
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 320] = sub_cf17413b[address(arg1)][arg2] - arg3
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = mem[128 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160
        _716 = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 352] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 384 len 32 * _716] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160 len 32 * _716]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _716) + 192
        _812 = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _716) + 384] = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
        idx = 0
        s = (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192
        t = (98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _716) + 416
        while idx < _812:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return Array(len=sub_cf17413b[address(arg1)][arg2] - arg3, data=mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _716) + (32 * _812) + 64]), 
               (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160,
               (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _716) + 192,
               sub_cf17413b[address(arg1)][arg2]
    mem[128 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
    if sub_cf17413b[address(arg1)][arg2] - arg3 > test266151307():
        revert with 0, 65
    mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128] = sub_cf17413b[address(arg1)][arg2] - arg3
    if not sub_cf17413b[address(arg1)][arg2] - arg3:
        if sub_cf17413b[address(arg1)][arg2] - arg3 > test266151307():
            revert with 0, 65
        mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160] = sub_cf17413b[address(arg1)][arg2] - arg3
        mem[64] = (98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 192
        if not sub_cf17413b[address(arg1)][arg2] - arg3:
            idx = 0
            while idx < sub_cf17413b[address(arg1)][arg2] - arg3:
                if idx > !arg3:
                    revert with 0, 17
                if idx + arg3 >= sub_cf17413b[address(arg1)][arg2]:
                    revert with 0, 50
                if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
                if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                if idx >= mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160] = stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_0
                if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                    revert with 0, 50
                mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
                mem[32] = 21
                if idx >= mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]:
                    revert with 0, 50
                if address(stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_256):
                    mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 0
                else:
                    mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg3 > !(sub_cf17413b[address(arg1)][arg2] - arg3):
                revert with 0, 17
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 320] = sub_cf17413b[address(arg1)][arg2] - arg3
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = mem[128 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160
            _717 = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 352] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 384 len 32 * _717] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160 len 32 * _717]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _717) + 192
            _813 = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
            mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _717) + 384] = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
            idx = 0
            s = (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192
            t = (98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _717) + 416
            while idx < _813:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return Array(len=sub_cf17413b[address(arg1)][arg2] - arg3, data=mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _717) + (32 * _813) + 64]), 
                   (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160,
                   (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _717) + 192,
                   sub_cf17413b[address(arg1)][arg2]
        mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
        idx = 0
        while idx < sub_cf17413b[address(arg1)][arg2] - arg3:
            if idx > !arg3:
                revert with 0, 17
            if idx + arg3 >= sub_cf17413b[address(arg1)][arg2]:
                revert with 0, 50
            if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
            if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                revert with 0, 50
            if idx >= mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160] = stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_0
            if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                revert with 0, 50
            mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
            mem[32] = 21
            if idx >= mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]:
                revert with 0, 50
            if address(stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_256):
                mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 0
            else:
                mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg3 > !(sub_cf17413b[address(arg1)][arg2] - arg3):
            revert with 0, 17
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 320] = sub_cf17413b[address(arg1)][arg2] - arg3
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = mem[128 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160
        _718 = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 352] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 384 len 32 * _718] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160 len 32 * _718]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _718) + 192
        _814 = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _718) + 384] = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
        idx = 0
        s = (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192
        t = (98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _718) + 416
        while idx < _814:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return Array(len=sub_cf17413b[address(arg1)][arg2] - arg3, data=mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _718) + (32 * _814) + 64]), 
               (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160,
               (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _718) + 192,
               sub_cf17413b[address(arg1)][arg2]
    mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
    if sub_cf17413b[address(arg1)][arg2] - arg3 > test266151307():
        revert with 0, 65
    mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160] = sub_cf17413b[address(arg1)][arg2] - arg3
    mem[64] = (98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 192
    if not sub_cf17413b[address(arg1)][arg2] - arg3:
        idx = 0
        while idx < sub_cf17413b[address(arg1)][arg2] - arg3:
            if idx > !arg3:
                revert with 0, 17
            if idx + arg3 >= sub_cf17413b[address(arg1)][arg2]:
                revert with 0, 50
            if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
            if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                revert with 0, 50
            if idx >= mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160] = stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_0
            if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
                revert with 0, 50
            mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
            mem[32] = 21
            if idx >= mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]:
                revert with 0, 50
            if address(stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_256):
                mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 0
            else:
                mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg3 > !(sub_cf17413b[address(arg1)][arg2] - arg3):
            revert with 0, 17
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 320] = sub_cf17413b[address(arg1)][arg2] - arg3
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = mem[128 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160
        _719 = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 352] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 384 len 32 * _719] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160 len 32 * _719]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _719) + 192
        _815 = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
        mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _719) + 384] = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
        idx = 0
        s = (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192
        t = (98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _719) + 416
        while idx < _815:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return Array(len=sub_cf17413b[address(arg1)][arg2] - arg3, data=mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _719) + (32 * _815) + 64]), 
               (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160,
               (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _719) + 192,
               sub_cf17413b[address(arg1)][arg2]
    mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = call.data[calldata.size len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
    idx = 0
    while idx < sub_cf17413b[address(arg1)][arg2] - arg3:
        if idx > !arg3:
            revert with 0, 17
        if idx + arg3 >= sub_cf17413b[address(arg1)][arg2]:
            revert with 0, 50
        if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
        if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
            revert with 0, 50
        if idx >= mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160] = stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_0
        if idx >= sub_cf17413b[address(arg1)][arg2] - arg3:
            revert with 0, 50
        mem[0] = stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_cf17413b', 22))) + idx + arg3]
        mem[32] = 21
        if idx >= mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]:
            revert with 0, 50
        if address(stor21[stor[('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor22', 22))) + idx + arg3]].field_256):
            mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 0
        else:
            mem[(32 * idx) + (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg3 > !(sub_cf17413b[address(arg1)][arg2] - arg3):
        revert with 0, 17
    mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 192] = 128
    mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 320] = sub_cf17413b[address(arg1)][arg2] - arg3
    mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3] = mem[128 len 32 * sub_cf17413b[address(arg1)][arg2] - arg3]
    mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 224] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160
    _720 = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
    mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 352] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 128]
    mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 384 len 32 * _720] = mem[(32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160 len 32 * _720]
    mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 256] = (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _720) + 192
    _816 = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
    mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _720) + 384] = mem[(64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160]
    idx = 0
    s = (64 * sub_cf17413b[address(arg1)][arg2] - arg3) + 192
    t = (98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _720) + 416
    while idx < _816:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=sub_cf17413b[address(arg1)][arg2] - arg3, data=mem[(98 * sub_cf17413b[address(arg1)][arg2]) + (-98 * arg3) + 352 len (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _720) + (32 * _816) + 64]), 
           (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + 160,
           (32 * sub_cf17413b[address(arg1)][arg2] - arg3) + (32 * _720) + 192,
           sub_cf17413b[address(arg1)][arg2]
}

function sub_c45ed52b(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    idx = 0
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if ext_code.size(msg.sender):
        revert with 0, 'Contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'Proxy contract not allowed'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(stor19.field_8):
        revert with 0, 'Current Lottery paused'
    if not ('cd', 36).length:
        revert with 0, 'No ticket specified'
    if ('cd', 36).length > maxNumberTicketsPerBuyOrClaim:
        revert with 0, 'Too many tickets'
    if uint8(stor20[cd[4]].field_0) > 3:
        revert with 0, 33
    if uint8(stor20[cd[4]].field_0) != 1:
        revert with 0, 'Lottery is not open'
    if block.timestamp >= stor20[cd[4]].field_512:
        revert with 0, 'Lottery is over'
    if not stor20[cd[4]].field_1024:
        if stor20[cd[4]].field_768 and ('cd', 36).length > -1 / stor20[cd[4]].field_768:
            revert with 0, 17
        mem[ceil32(32 * ('cd', 36).length) + 133] = msg.sender
        mem[ceil32(32 * ('cd', 36).length) + 165] = this.address
        mem[ceil32(32 * ('cd', 36).length) + 197] = stor20[cd[4]].field_768 * ('cd', 36).length
        mem[ceil32(32 * ('cd', 36).length) + 97] = 100
        mem[ceil32(32 * ('cd', 36).length) + 129 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(32 * ('cd', 36).length) + 229] = 32
        mem[ceil32(32 * ('cd', 36).length) + 261] = 'SafeERC20: low-level call failed'
        if not ext_code.size(sub_c31ce6bfAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(32 * ('cd', 36).length) + 293 len 128] = 0, msg.sender, address(this.address), stor20[cd[4]].field_768 * ('cd', 36).length, 0
        mem[ceil32(32 * ('cd', 36).length) + 393] = 0
        call sub_c31ce6bfAddress with:
           funct Mask(32, 224, 0, msg.sender, address(this.address), stor20[cd[4]].field_768 * ('cd', 36).length, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, 0, msg.sender, address(this.address), stor20[cd[4]].field_768 * ('cd', 36).length, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 36).length:
                    revert with memory
                      from 128
                       len ('cd', 36).length
                revert with 0, 'SafeERC20: low-level call failed'
            if not ('cd', 36).length:
                require ext_code.size(sub_c31ce6bfAddress)
                call sub_c31ce6bfAddress.0xb65d08b0 with:
                     gas gas_remaining wei
                mem[ceil32(32 * ('cd', 36).length) + 293] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 293
                require return_data.size >= 32
                if 10000 < ext_call.return_data[0]:
                    revert with 0, 17
                if stor20[cd[4]].field_768 * ('cd', 36).length and -ext_call.return_data[0] + 10000 > -1 / stor20[cd[4]].field_768 * ('cd', 36).length:
                    revert with 0, 17
                if stor20[cd[4]].field_6656 > !((10000 * stor20[cd[4]].field_768 * ('cd', 36).length) - (ext_call.return_data[0] * stor20[cd[4]].field_768 * ('cd', 36).length) / 10000):
                    revert with 0, 17
                stor20[cd[4]].field_6656 += (10000 * stor20[cd[4]].field_768 * ('cd', 36).length) - (ext_call.return_data[0] * stor20[cd[4]].field_768 * ('cd', 36).length) / 10000
                if sub_cf17413b[msg.sender][cd[4]]:
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2241 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2245 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2245] = mem[(32 * idx) + 128]
                        mem[_2245 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2241
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if stor20[cd[4]].field_7168 == -1:
                        revert with 0, 17
                    stor20[cd[4]].field_7168++
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2250 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2254 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2254] = mem[(32 * idx) + 128]
                        mem[_2254 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2250
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                require ('cd', 36).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(sub_c31ce6bfAddress)
                call sub_c31ce6bfAddress.0xb65d08b0 with:
                     gas gas_remaining wei
                mem[ceil32(32 * ('cd', 36).length) + 293] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 293
                require return_data.size >= 32
                if 10000 < ext_call.return_data[0]:
                    revert with 0, 17
                if stor20[cd[4]].field_768 * ('cd', 36).length and -ext_call.return_data[0] + 10000 > -1 / stor20[cd[4]].field_768 * ('cd', 36).length:
                    revert with 0, 17
                if stor20[cd[4]].field_6656 > !((10000 * stor20[cd[4]].field_768 * ('cd', 36).length) - (ext_call.return_data[0] * stor20[cd[4]].field_768 * ('cd', 36).length) / 10000):
                    revert with 0, 17
                stor20[cd[4]].field_6656 += (10000 * stor20[cd[4]].field_768 * ('cd', 36).length) - (ext_call.return_data[0] * stor20[cd[4]].field_768 * ('cd', 36).length) / 10000
                if sub_cf17413b[msg.sender][cd[4]]:
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2259 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2263 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2263] = mem[(32 * idx) + 128]
                        mem[_2263 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2259
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if stor20[cd[4]].field_7168 == -1:
                        revert with 0, 17
                    stor20[cd[4]].field_7168++
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2268 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2272 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2272] = mem[(32 * idx) + 128]
                        mem[_2272 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2268
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        else:
            mem[ceil32(32 * ('cd', 36).length) + 293] = return_data.size
            mem[ceil32(32 * ('cd', 36).length) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                require ext_code.size(sub_c31ce6bfAddress)
                call sub_c31ce6bfAddress.0xb65d08b0 with:
                     gas gas_remaining wei
                mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 294] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 294
                require return_data.size >= 32
                if 10000 < ext_call.return_data[0]:
                    revert with 0, 17
                if stor20[cd[4]].field_768 * ('cd', 36).length and -ext_call.return_data[0] + 10000 > -1 / stor20[cd[4]].field_768 * ('cd', 36).length:
                    revert with 0, 17
                if stor20[cd[4]].field_6656 > !((10000 * stor20[cd[4]].field_768 * ('cd', 36).length) - (ext_call.return_data[0] * stor20[cd[4]].field_768 * ('cd', 36).length) / 10000):
                    revert with 0, 17
                stor20[cd[4]].field_6656 += (10000 * stor20[cd[4]].field_768 * ('cd', 36).length) - (ext_call.return_data[0] * stor20[cd[4]].field_768 * ('cd', 36).length) / 10000
                if sub_cf17413b[msg.sender][cd[4]]:
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2277 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2281] = mem[(32 * idx) + 128]
                        mem[_2281 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2277
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if stor20[cd[4]].field_7168 == -1:
                        revert with 0, 17
                    stor20[cd[4]].field_7168++
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2286 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2290 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2290] = mem[(32 * idx) + 128]
                        mem[_2290 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2286
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                require return_data.size >= 32
                require mem[ceil32(32 * ('cd', 36).length) + 325] == bool(mem[ceil32(32 * ('cd', 36).length) + 325])
                if not mem[ceil32(32 * ('cd', 36).length) + 325]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(sub_c31ce6bfAddress)
                call sub_c31ce6bfAddress.0xb65d08b0 with:
                     gas gas_remaining wei
                mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 294] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 294
                require return_data.size >= 32
                if 10000 < ext_call.return_data[0]:
                    revert with 0, 17
                if stor20[cd[4]].field_768 * ('cd', 36).length and -ext_call.return_data[0] + 10000 > -1 / stor20[cd[4]].field_768 * ('cd', 36).length:
                    revert with 0, 17
                if stor20[cd[4]].field_6656 > !((10000 * stor20[cd[4]].field_768 * ('cd', 36).length) - (ext_call.return_data[0] * stor20[cd[4]].field_768 * ('cd', 36).length) / 10000):
                    revert with 0, 17
                stor20[cd[4]].field_6656 += (10000 * stor20[cd[4]].field_768 * ('cd', 36).length) - (ext_call.return_data[0] * stor20[cd[4]].field_768 * ('cd', 36).length) / 10000
                if sub_cf17413b[msg.sender][cd[4]]:
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2295 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2299 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2299] = mem[(32 * idx) + 128]
                        mem[_2299 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2295
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if stor20[cd[4]].field_7168 == -1:
                        revert with 0, 17
                    stor20[cd[4]].field_7168++
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2304 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2308 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2308] = mem[(32 * idx) + 128]
                        mem[_2308 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2304
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    else:
        if ('cd', 36).length < 1:
            revert with 0, 17
        if stor20[cd[4]].field_1024 < ('cd', 36).length - 1:
            revert with 0, 'discountDivisor must be >= _numberTickets - 1'
        if 1 > !stor20[cd[4]].field_1024:
            revert with 0, 17
        if stor20[cd[4]].field_1024 + 1 < ('cd', 36).length:
            revert with 0, 17
        if stor20[cd[4]].field_768 and ('cd', 36).length > -1 / stor20[cd[4]].field_768:
            revert with 0, 17
        if stor20[cd[4]].field_768 * ('cd', 36).length and stor20[cd[4]].field_1024 + -('cd', 36).length + 1 > -1 / stor20[cd[4]].field_768 * ('cd', 36).length:
            revert with 0, 17
        if not stor20[cd[4]].field_1024:
            revert with 0, 18
        mem[ceil32(32 * ('cd', 36).length) + 133] = msg.sender
        mem[ceil32(32 * ('cd', 36).length) + 165] = this.address
        mem[ceil32(32 * ('cd', 36).length) + 197] = (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024
        mem[ceil32(32 * ('cd', 36).length) + 97] = 100
        mem[ceil32(32 * ('cd', 36).length) + 129 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(32 * ('cd', 36).length) + 229] = 32
        mem[ceil32(32 * ('cd', 36).length) + 261] = 'SafeERC20: low-level call failed'
        if not ext_code.size(sub_c31ce6bfAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(32 * ('cd', 36).length) + 293 len 128] = 0, msg.sender, address(this.address), (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024, 0
        mem[ceil32(32 * ('cd', 36).length) + 393] = 0
        call sub_c31ce6bfAddress with:
           funct Mask(32, 224, 0, msg.sender, address(this.address), (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, 0, msg.sender, address(this.address), (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 36).length:
                    revert with memory
                      from 128
                       len ('cd', 36).length
                revert with 0, 'SafeERC20: low-level call failed'
            if not ('cd', 36).length:
                require ext_code.size(sub_c31ce6bfAddress)
                call sub_c31ce6bfAddress.0xb65d08b0 with:
                     gas gas_remaining wei
                mem[ceil32(32 * ('cd', 36).length) + 293] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 293
                require return_data.size >= 32
                if 10000 < ext_call.return_data[0]:
                    revert with 0, 17
                if (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024 and -ext_call.return_data[0] + 10000 > -1 / (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024:
                    revert with 0, 17
                if stor20[cd[4]].field_6656 > !((10000 * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) - (ext_call.return_data[0] * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) / 10000):
                    revert with 0, 17
                stor20[cd[4]].field_6656 += (10000 * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) - (ext_call.return_data[0] * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) / 10000
                if sub_cf17413b[msg.sender][cd[4]]:
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2385 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2389 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2389] = mem[(32 * idx) + 128]
                        mem[_2389 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2385
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if stor20[cd[4]].field_7168 == -1:
                        revert with 0, 17
                    stor20[cd[4]].field_7168++
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2394 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2398 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2398] = mem[(32 * idx) + 128]
                        mem[_2398 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2394
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                require ('cd', 36).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(sub_c31ce6bfAddress)
                call sub_c31ce6bfAddress.0xb65d08b0 with:
                     gas gas_remaining wei
                mem[ceil32(32 * ('cd', 36).length) + 293] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 293
                require return_data.size >= 32
                if 10000 < ext_call.return_data[0]:
                    revert with 0, 17
                if (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024 and -ext_call.return_data[0] + 10000 > -1 / (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024:
                    revert with 0, 17
                if stor20[cd[4]].field_6656 > !((10000 * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) - (ext_call.return_data[0] * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) / 10000):
                    revert with 0, 17
                stor20[cd[4]].field_6656 += (10000 * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) - (ext_call.return_data[0] * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) / 10000
                if sub_cf17413b[msg.sender][cd[4]]:
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2403 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2407 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2407] = mem[(32 * idx) + 128]
                        mem[_2407 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2403
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if stor20[cd[4]].field_7168 == -1:
                        revert with 0, 17
                    stor20[cd[4]].field_7168++
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2412 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2416 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2416] = mem[(32 * idx) + 128]
                        mem[_2416 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2412
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        else:
            mem[ceil32(32 * ('cd', 36).length) + 293] = return_data.size
            mem[ceil32(32 * ('cd', 36).length) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                require ext_code.size(sub_c31ce6bfAddress)
                call sub_c31ce6bfAddress.0xb65d08b0 with:
                     gas gas_remaining wei
                mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 294] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 294
                require return_data.size >= 32
                if 10000 < ext_call.return_data[0]:
                    revert with 0, 17
                if (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024 and -ext_call.return_data[0] + 10000 > -1 / (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024:
                    revert with 0, 17
                if stor20[cd[4]].field_6656 > !((10000 * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) - (ext_call.return_data[0] * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) / 10000):
                    revert with 0, 17
                stor20[cd[4]].field_6656 += (10000 * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) - (ext_call.return_data[0] * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) / 10000
                if sub_cf17413b[msg.sender][cd[4]]:
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2421 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2425 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2425] = mem[(32 * idx) + 128]
                        mem[_2425 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2421
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if stor20[cd[4]].field_7168 == -1:
                        revert with 0, 17
                    stor20[cd[4]].field_7168++
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2430 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2434 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2434] = mem[(32 * idx) + 128]
                        mem[_2434 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2430
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                require return_data.size >= 32
                require mem[ceil32(32 * ('cd', 36).length) + 325] == bool(mem[ceil32(32 * ('cd', 36).length) + 325])
                if not mem[ceil32(32 * ('cd', 36).length) + 325]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(sub_c31ce6bfAddress)
                call sub_c31ce6bfAddress.0xb65d08b0 with:
                     gas gas_remaining wei
                mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 294] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 294
                require return_data.size >= 32
                if 10000 < ext_call.return_data[0]:
                    revert with 0, 17
                if (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024 and -ext_call.return_data[0] + 10000 > -1 / (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024:
                    revert with 0, 17
                if stor20[cd[4]].field_6656 > !((10000 * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) - (ext_call.return_data[0] * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) / 10000):
                    revert with 0, 17
                stor20[cd[4]].field_6656 += (10000 * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) - (ext_call.return_data[0] * (stor20[cd[4]].field_768 * ('cd', 36).length) + (stor20[cd[4]].field_1024 * stor20[cd[4]].field_768 * ('cd', 36).length) - (('cd', 36).length * stor20[cd[4]].field_768 * ('cd', 36).length) / stor20[cd[4]].field_1024) / 10000
                if sub_cf17413b[msg.sender][cd[4]]:
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2439 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2443 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2443] = mem[(32 * idx) + 128]
                        mem[_2443 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2439
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if stor20[cd[4]].field_7168 == -1:
                        revert with 0, 17
                    stor20[cd[4]].field_7168++
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2448 = mem[(32 * idx) + 128]
                        mem[32] = sha3(msg.sender, 22)
                        sub_cf17413b[msg.sender][cd[4]]++
                        mem[0] = sha3(cd[4], sha3(msg.sender, 22))
                        sub_cf17413b[msg.sender][cd[4]][sub_cf17413b[msg.sender][cd[4]]] = currentTicketId
                        _2452 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2452] = mem[(32 * idx) + 128]
                        mem[_2452 + 32] = msg.sender
                        mem[0] = currentTicketId
                        mem[32] = 21
                        stor21[stor6].field_0 = _2448
                        address(stor21[stor6].field_256) = msg.sender
                        if currentTicketId == -1:
                            revert with 0, 17
                        currentTicketId++
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    mem[mem[64]] = mem[96]
    emit TicketsPurchase(mem[mem[64]], msg.sender, cd[4]);
    stor0 = 1
}

function drawFinalNumberAndMakeLotteryClaimable(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if address(operatorAddress) != msg.sender:
        revert with 0, 'Not operator'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(stor19.field_8):
        revert with 0, 'Current Lottery paused'
    mem[0] = arg1
    mem[32] = 20
    if uint8(stor20[arg1].field_0) > 3:
        revert with 0, 33
    if uint8(stor20[arg1].field_0) != 2:
        revert with 0, 'Lottery not close'
    mem[96] = 6
    mem[128 len 192] = call.data[calldata.size len 192]
    if var39001 >= 6:
        if 10000 < stor20[arg1].field_2816:
            revert with 0, 17
        if stor20[arg1].field_6656 and -stor20[arg1].field_2816 + 10000 > -1 / stor20[arg1].field_6656:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 20
        idx = stor20[arg1].field_6144
        s = 0
        s = 0
        while idx < stor20[arg1].field_6400:
            mem[0] = idx
            mem[32] = 21
            s = 0
            t = 0
            u = 0
            u = 0
            u = stor[sha3(mem[0 len 64])]
            v = 0
            while s < 6:
                if 5 < s:
                    revert with 0, 17
                if -s + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if not 2 * -s + 5:
                    if 5 < s:
                        revert with 0, 17
                    if -s + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if not 2 * -s + 5:
                        idx = 0
                        w = t
                        x = var39006
                        while idx < 6:
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if 5 < idx:
                                    revert with 0, 17
                                if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not 2 * -idx + 5:
                                    if u != x:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x
                                        x = x % 1
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x
                                    u = u
                                    u = x % 1
                                    u = u % 1
                                    v = uint32(v) + 1
                                    continue 
                                if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                    if not 10^(2 * -idx + 5):
                                        revert with 0, 18
                                    if u != x:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x
                                        x = x % 10^(2 * -idx + 5)
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x
                                    u = u
                                    u = x % 10^(2 * -idx + 5)
                                    u = u % 1
                                    v = uint32(v) + 1
                                    continue 
                                w = 10
                                t = 2 * -idx + 5
                                while t > 1:
                                    if w > -1 / w:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    w = w * w
                                    t = uint255(t) * 0.5
                                    continue 
                                if 1 > -1 / w:
                                    revert with 0, 17
                                if not w:
                                    revert with 0, 18
                                if u != x:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x
                                    x = x % w
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x
                                u = u
                                u = x % w
                                u = u % 1
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if 5 < idx:
                                    revert with 0, 17
                                if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not 2 * -idx + 5:
                                    if u != x / 10^(2 * -idx + 5):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x / 10^(2 * -idx + 5)
                                        x = x % 1
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x / 10^(2 * -idx + 5)
                                    u = u
                                    u = x % 1
                                    u = u % 1
                                    v = uint32(v) + 1
                                    continue 
                                if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                    if not 10^(2 * -idx + 5):
                                        revert with 0, 18
                                    if u != x / 10^(2 * -idx + 5):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x / 10^(2 * -idx + 5)
                                        x = x % 10^(2 * -idx + 5)
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x / 10^(2 * -idx + 5)
                                    u = u
                                    u = x % 10^(2 * -idx + 5)
                                    u = u % 1
                                    v = uint32(v) + 1
                                    continue 
                                w = 10
                                t = 2 * -idx + 5
                                while t > 1:
                                    if w > -1 / w:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    w = w * w
                                    t = uint255(t) * 0.5
                                    continue 
                                if 1 > -1 / w:
                                    revert with 0, 17
                                if not w:
                                    revert with 0, 18
                                if u != x / 10^(2 * -idx + 5):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x / 10^(2 * -idx + 5)
                                    x = x % w
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x / 10^(2 * -idx + 5)
                                u = u
                                u = x % w
                                u = u % 1
                                v = uint32(v) + 1
                                continue 
                            w = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if w > -1 / w:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                w = w * w
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / w:
                                revert with 0, 17
                            if not w:
                                revert with 0, 18
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if u != x / w:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x / w
                                    x = x % 1
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x / w
                                u = u
                                u = x % 1
                                u = u % 1
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if u != x / w:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x / w
                                    x = x % 10^(2 * -idx + 5)
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x / w
                                u = u
                                u = x % 10^(2 * -idx + 5)
                                u = u % 1
                                v = uint32(v) + 1
                                continue 
                            y = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if y > -1 / y:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                y = y * y
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / y:
                                revert with 0, 17
                            if not y:
                                revert with 0, 18
                            if u != x / w:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                w = x / w
                                x = x % y
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = x / w
                            u = u
                            u = x % y
                            u = u % 1
                            v = uint32(v) + 1
                            continue 
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        t = w
                        u = u
                        u = x
                        u = u % 1
                        v = v
                        continue 
                    if bool(bool(2 * -s + 5 < 78)) or bool(bool(2 * -s + 5 < 32)):
                        if not 10^(2 * -s + 5):
                            revert with 0, 18
                        idx = 0
                        w = t
                        x = var39006
                        while idx < 6:
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if 5 < idx:
                                    revert with 0, 17
                                if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not 2 * -idx + 5:
                                    if u != x:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x
                                        x = x % 1
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x
                                    u = u
                                    u = x % 1
                                    u = u % 10^(2 * -s + 5)
                                    v = uint32(v) + 1
                                    continue 
                                if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                    if not 10^(2 * -idx + 5):
                                        revert with 0, 18
                                    if u != x:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x
                                        x = x % 10^(2 * -idx + 5)
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x
                                    u = u
                                    u = x % 10^(2 * -idx + 5)
                                    u = u % 10^(2 * -s + 5)
                                    v = uint32(v) + 1
                                    continue 
                                w = 10
                                t = 2 * -idx + 5
                                while t > 1:
                                    if w > -1 / w:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    w = w * w
                                    t = uint255(t) * 0.5
                                    continue 
                                if 1 > -1 / w:
                                    revert with 0, 17
                                if not w:
                                    revert with 0, 18
                                if u != x:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x
                                    x = x % w
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x
                                u = u
                                u = x % w
                                u = u % 10^(2 * -s + 5)
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if 5 < idx:
                                    revert with 0, 17
                                if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not 2 * -idx + 5:
                                    if u != x / 10^(2 * -idx + 5):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x / 10^(2 * -idx + 5)
                                        x = x % 1
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x / 10^(2 * -idx + 5)
                                    u = u
                                    u = x % 1
                                    u = u % 10^(2 * -s + 5)
                                    v = uint32(v) + 1
                                    continue 
                                if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                    if not 10^(2 * -idx + 5):
                                        revert with 0, 18
                                    if u != x / 10^(2 * -idx + 5):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x / 10^(2 * -idx + 5)
                                        x = x % 10^(2 * -idx + 5)
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x / 10^(2 * -idx + 5)
                                    u = u
                                    u = x % 10^(2 * -idx + 5)
                                    u = u % 10^(2 * -s + 5)
                                    v = uint32(v) + 1
                                    continue 
                                w = 10
                                t = 2 * -idx + 5
                                while t > 1:
                                    if w > -1 / w:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    w = w * w
                                    t = uint255(t) * 0.5
                                    continue 
                                if 1 > -1 / w:
                                    revert with 0, 17
                                if not w:
                                    revert with 0, 18
                                if u != x / 10^(2 * -idx + 5):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x / 10^(2 * -idx + 5)
                                    x = x % w
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x / 10^(2 * -idx + 5)
                                u = u
                                u = x % w
                                u = u % 10^(2 * -s + 5)
                                v = uint32(v) + 1
                                continue 
                            w = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if w > -1 / w:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                w = w * w
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / w:
                                revert with 0, 17
                            if not w:
                                revert with 0, 18
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if u != x / w:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x / w
                                    x = x % 1
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x / w
                                u = u
                                u = x % 1
                                u = u % 10^(2 * -s + 5)
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if u != x / w:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x / w
                                    x = x % 10^(2 * -idx + 5)
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x / w
                                u = u
                                u = x % 10^(2 * -idx + 5)
                                u = u % 10^(2 * -s + 5)
                                v = uint32(v) + 1
                                continue 
                            y = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if y > -1 / y:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                y = y * y
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / y:
                                revert with 0, 17
                            if not y:
                                revert with 0, 18
                            if u != x / w:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                w = x / w
                                x = x % y
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = x / w
                            u = u
                            u = x % y
                            u = u % 10^(2 * -s + 5)
                            v = uint32(v) + 1
                            continue 
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        t = w
                        u = u
                        u = x
                        u = u % 10^(2 * -s + 5)
                        v = v
                        continue 
                    w = 10
                    idx = 2 * -s + 5
                    while idx > 1:
                        if w > -1 / w:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        w = w * w
                        idx = uint255(idx) * 0.5
                        continue 
                    if 1 > -1 / w:
                        revert with 0, 17
                    if not w:
                        revert with 0, 18
                    idx = 0
                    x = t
                    y = var39006
                    while idx < 6:
                        if 5 < idx:
                            revert with 0, 17
                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if not 2 * -idx + 5:
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if u != y:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y
                                    y = y % 1
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y
                                u = u
                                u = y % 1
                                u = u % w
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if u != y:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y
                                    y = y % 10^(2 * -idx + 5)
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y
                                u = u
                                u = y % 10^(2 * -idx + 5)
                                u = u % w
                                v = uint32(v) + 1
                                continue 
                            x = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if x > -1 / x:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                x = x * x
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / x:
                                revert with 0, 17
                            if not x:
                                revert with 0, 18
                            if u != y:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y
                                y = y % x
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y
                            u = u
                            u = y % x
                            u = u % w
                            v = uint32(v) + 1
                            continue 
                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                            if not 10^(2 * -idx + 5):
                                revert with 0, 18
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if u != y / 10^(2 * -idx + 5):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y / 10^(2 * -idx + 5)
                                    y = y % 1
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y / 10^(2 * -idx + 5)
                                u = u
                                u = y % 1
                                u = u % w
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if u != y / 10^(2 * -idx + 5):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y / 10^(2 * -idx + 5)
                                    y = y % 10^(2 * -idx + 5)
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y / 10^(2 * -idx + 5)
                                u = u
                                u = y % 10^(2 * -idx + 5)
                                u = u % w
                                v = uint32(v) + 1
                                continue 
                            x = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if x > -1 / x:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                x = x * x
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / x:
                                revert with 0, 17
                            if not x:
                                revert with 0, 18
                            if u != y / 10^(2 * -idx + 5):
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y / 10^(2 * -idx + 5)
                                y = y % x
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y / 10^(2 * -idx + 5)
                            u = u
                            u = y % x
                            u = u % w
                            v = uint32(v) + 1
                            continue 
                        x = 10
                        t = 2 * -idx + 5
                        while t > 1:
                            if x > -1 / x:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            x = x * x
                            t = uint255(t) * 0.5
                            continue 
                        if 1 > -1 / x:
                            revert with 0, 17
                        if not x:
                            revert with 0, 18
                        if 5 < idx:
                            revert with 0, 17
                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if not 2 * -idx + 5:
                            if u != y / x:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y / x
                                y = y % 1
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y / x
                            u = u
                            u = y % 1
                            u = u % w
                            v = uint32(v) + 1
                            continue 
                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                            if not 10^(2 * -idx + 5):
                                revert with 0, 18
                            if u != y / x:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y / x
                                y = y % 10^(2 * -idx + 5)
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y / x
                            u = u
                            u = y % 10^(2 * -idx + 5)
                            u = u % w
                            v = uint32(v) + 1
                            continue 
                        z = 10
                        t = 2 * -idx + 5
                        while t > 1:
                            if z > -1 / z:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            z = z * z
                            t = uint255(t) * 0.5
                            continue 
                        if 1 > -1 / z:
                            revert with 0, 17
                        if not z:
                            revert with 0, 18
                        if u != y / x:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            idx = idx + 1
                            x = y / x
                            y = y % z
                            continue 
                        if uint32(v) == test266151307():
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        t = y / x
                        u = u
                        u = y % z
                        u = u % w
                        v = uint32(v) + 1
                        continue 
                    if s == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 20
                    s = s + 1
                    t = x
                    u = u
                    u = y
                    u = u % w
                    v = v
                    continue 
                if bool(bool(2 * -s + 5 < 78)) or bool(bool(2 * -s + 5 < 32)):
                    if not 10^(2 * -s + 5):
                        revert with 0, 18
                    if 5 < s:
                        revert with 0, 17
                    if -s + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if not 2 * -s + 5:
                        idx = 0
                        w = t
                        x = var39006
                        while idx < 6:
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if 5 < idx:
                                    revert with 0, 17
                                if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not 2 * -idx + 5:
                                    if u / 10^(2 * -s + 5) != x:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x
                                        x = x % 1
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x
                                    u = u / 10^(2 * -s + 5)
                                    u = x % 1
                                    u = u % 1
                                    v = uint32(v) + 1
                                    continue 
                                if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                    if not 10^(2 * -idx + 5):
                                        revert with 0, 18
                                    if u / 10^(2 * -s + 5) != x:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x
                                        x = x % 10^(2 * -idx + 5)
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x
                                    u = u / 10^(2 * -s + 5)
                                    u = x % 10^(2 * -idx + 5)
                                    u = u % 1
                                    v = uint32(v) + 1
                                    continue 
                                w = 10
                                t = 2 * -idx + 5
                                while t > 1:
                                    if w > -1 / w:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    w = w * w
                                    t = uint255(t) * 0.5
                                    continue 
                                if 1 > -1 / w:
                                    revert with 0, 17
                                if not w:
                                    revert with 0, 18
                                if u / 10^(2 * -s + 5) != x:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x
                                    x = x % w
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x
                                u = u / 10^(2 * -s + 5)
                                u = x % w
                                u = u % 1
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if 5 < idx:
                                    revert with 0, 17
                                if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not 2 * -idx + 5:
                                    if u / 10^(2 * -s + 5) != x / 10^(2 * -idx + 5):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x / 10^(2 * -idx + 5)
                                        x = x % 1
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x / 10^(2 * -idx + 5)
                                    u = u / 10^(2 * -s + 5)
                                    u = x % 1
                                    u = u % 1
                                    v = uint32(v) + 1
                                    continue 
                                if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                    if not 10^(2 * -idx + 5):
                                        revert with 0, 18
                                    if u / 10^(2 * -s + 5) != x / 10^(2 * -idx + 5):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x / 10^(2 * -idx + 5)
                                        x = x % 10^(2 * -idx + 5)
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x / 10^(2 * -idx + 5)
                                    u = u / 10^(2 * -s + 5)
                                    u = x % 10^(2 * -idx + 5)
                                    u = u % 1
                                    v = uint32(v) + 1
                                    continue 
                                w = 10
                                t = 2 * -idx + 5
                                while t > 1:
                                    if w > -1 / w:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    w = w * w
                                    t = uint255(t) * 0.5
                                    continue 
                                if 1 > -1 / w:
                                    revert with 0, 17
                                if not w:
                                    revert with 0, 18
                                if u / 10^(2 * -s + 5) != x / 10^(2 * -idx + 5):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x / 10^(2 * -idx + 5)
                                    x = x % w
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x / 10^(2 * -idx + 5)
                                u = u / 10^(2 * -s + 5)
                                u = x % w
                                u = u % 1
                                v = uint32(v) + 1
                                continue 
                            w = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if w > -1 / w:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                w = w * w
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / w:
                                revert with 0, 17
                            if not w:
                                revert with 0, 18
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if u / 10^(2 * -s + 5) != x / w:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x / w
                                    x = x % 1
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x / w
                                u = u / 10^(2 * -s + 5)
                                u = x % 1
                                u = u % 1
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if u / 10^(2 * -s + 5) != x / w:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x / w
                                    x = x % 10^(2 * -idx + 5)
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x / w
                                u = u / 10^(2 * -s + 5)
                                u = x % 10^(2 * -idx + 5)
                                u = u % 1
                                v = uint32(v) + 1
                                continue 
                            y = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if y > -1 / y:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                y = y * y
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / y:
                                revert with 0, 17
                            if not y:
                                revert with 0, 18
                            if u / 10^(2 * -s + 5) != x / w:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                w = x / w
                                x = x % y
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = x / w
                            u = u / 10^(2 * -s + 5)
                            u = x % y
                            u = u % 1
                            v = uint32(v) + 1
                            continue 
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        t = w
                        u = u / 10^(2 * -s + 5)
                        u = x
                        u = u % 1
                        v = v
                        continue 
                    if bool(bool(2 * -s + 5 < 78)) or bool(bool(2 * -s + 5 < 32)):
                        if not 10^(2 * -s + 5):
                            revert with 0, 18
                        idx = 0
                        w = t
                        x = var39006
                        while idx < 6:
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if 5 < idx:
                                    revert with 0, 17
                                if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not 2 * -idx + 5:
                                    if u / 10^(2 * -s + 5) != x:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x
                                        x = x % 1
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x
                                    u = u / 10^(2 * -s + 5)
                                    u = x % 1
                                    u = u % 10^(2 * -s + 5)
                                    v = uint32(v) + 1
                                    continue 
                                if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                    if not 10^(2 * -idx + 5):
                                        revert with 0, 18
                                    if u / 10^(2 * -s + 5) != x:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x
                                        x = x % 10^(2 * -idx + 5)
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x
                                    u = u / 10^(2 * -s + 5)
                                    u = x % 10^(2 * -idx + 5)
                                    u = u % 10^(2 * -s + 5)
                                    v = uint32(v) + 1
                                    continue 
                                w = 10
                                t = 2 * -idx + 5
                                while t > 1:
                                    if w > -1 / w:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    w = w * w
                                    t = uint255(t) * 0.5
                                    continue 
                                if 1 > -1 / w:
                                    revert with 0, 17
                                if not w:
                                    revert with 0, 18
                                if u / 10^(2 * -s + 5) != x:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x
                                    x = x % w
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x
                                u = u / 10^(2 * -s + 5)
                                u = x % w
                                u = u % 10^(2 * -s + 5)
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if 5 < idx:
                                    revert with 0, 17
                                if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not 2 * -idx + 5:
                                    if u / 10^(2 * -s + 5) != x / 10^(2 * -idx + 5):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x / 10^(2 * -idx + 5)
                                        x = x % 1
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x / 10^(2 * -idx + 5)
                                    u = u / 10^(2 * -s + 5)
                                    u = x % 1
                                    u = u % 10^(2 * -s + 5)
                                    v = uint32(v) + 1
                                    continue 
                                if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                    if not 10^(2 * -idx + 5):
                                        revert with 0, 18
                                    if u / 10^(2 * -s + 5) != x / 10^(2 * -idx + 5):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = arg1
                                        mem[32] = 20
                                        idx = idx + 1
                                        w = x / 10^(2 * -idx + 5)
                                        x = x % 10^(2 * -idx + 5)
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    s = s + 1
                                    t = x / 10^(2 * -idx + 5)
                                    u = u / 10^(2 * -s + 5)
                                    u = x % 10^(2 * -idx + 5)
                                    u = u % 10^(2 * -s + 5)
                                    v = uint32(v) + 1
                                    continue 
                                w = 10
                                t = 2 * -idx + 5
                                while t > 1:
                                    if w > -1 / w:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    w = w * w
                                    t = uint255(t) * 0.5
                                    continue 
                                if 1 > -1 / w:
                                    revert with 0, 17
                                if not w:
                                    revert with 0, 18
                                if u / 10^(2 * -s + 5) != x / 10^(2 * -idx + 5):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x / 10^(2 * -idx + 5)
                                    x = x % w
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x / 10^(2 * -idx + 5)
                                u = u / 10^(2 * -s + 5)
                                u = x % w
                                u = u % 10^(2 * -s + 5)
                                v = uint32(v) + 1
                                continue 
                            w = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if w > -1 / w:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                w = w * w
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / w:
                                revert with 0, 17
                            if not w:
                                revert with 0, 18
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if u / 10^(2 * -s + 5) != x / w:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x / w
                                    x = x % 1
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x / w
                                u = u / 10^(2 * -s + 5)
                                u = x % 1
                                u = u % 10^(2 * -s + 5)
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if u / 10^(2 * -s + 5) != x / w:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    w = x / w
                                    x = x % 10^(2 * -idx + 5)
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = x / w
                                u = u / 10^(2 * -s + 5)
                                u = x % 10^(2 * -idx + 5)
                                u = u % 10^(2 * -s + 5)
                                v = uint32(v) + 1
                                continue 
                            y = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if y > -1 / y:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                y = y * y
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / y:
                                revert with 0, 17
                            if not y:
                                revert with 0, 18
                            if u / 10^(2 * -s + 5) != x / w:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                w = x / w
                                x = x % y
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = x / w
                            u = u / 10^(2 * -s + 5)
                            u = x % y
                            u = u % 10^(2 * -s + 5)
                            v = uint32(v) + 1
                            continue 
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        t = w
                        u = u / 10^(2 * -s + 5)
                        u = x
                        u = u % 10^(2 * -s + 5)
                        v = v
                        continue 
                    w = 10
                    idx = 2 * -s + 5
                    while idx > 1:
                        if w > -1 / w:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        w = w * w
                        idx = uint255(idx) * 0.5
                        continue 
                    if 1 > -1 / w:
                        revert with 0, 17
                    if not w:
                        revert with 0, 18
                    idx = 0
                    x = t
                    y = var39006
                    while idx < 6:
                        if 5 < idx:
                            revert with 0, 17
                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if not 2 * -idx + 5:
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if u / 10^(2 * -s + 5) != y:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y
                                    y = y % 1
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y
                                u = u / 10^(2 * -s + 5)
                                u = y % 1
                                u = u % w
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if u / 10^(2 * -s + 5) != y:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y
                                    y = y % 10^(2 * -idx + 5)
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y
                                u = u / 10^(2 * -s + 5)
                                u = y % 10^(2 * -idx + 5)
                                u = u % w
                                v = uint32(v) + 1
                                continue 
                            x = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if x > -1 / x:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                x = x * x
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / x:
                                revert with 0, 17
                            if not x:
                                revert with 0, 18
                            if u / 10^(2 * -s + 5) != y:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y
                                y = y % x
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y
                            u = u / 10^(2 * -s + 5)
                            u = y % x
                            u = u % w
                            v = uint32(v) + 1
                            continue 
                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                            if not 10^(2 * -idx + 5):
                                revert with 0, 18
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if u / 10^(2 * -s + 5) != y / 10^(2 * -idx + 5):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y / 10^(2 * -idx + 5)
                                    y = y % 1
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y / 10^(2 * -idx + 5)
                                u = u / 10^(2 * -s + 5)
                                u = y % 1
                                u = u % w
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if u / 10^(2 * -s + 5) != y / 10^(2 * -idx + 5):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y / 10^(2 * -idx + 5)
                                    y = y % 10^(2 * -idx + 5)
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y / 10^(2 * -idx + 5)
                                u = u / 10^(2 * -s + 5)
                                u = y % 10^(2 * -idx + 5)
                                u = u % w
                                v = uint32(v) + 1
                                continue 
                            x = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if x > -1 / x:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                x = x * x
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / x:
                                revert with 0, 17
                            if not x:
                                revert with 0, 18
                            if u / 10^(2 * -s + 5) != y / 10^(2 * -idx + 5):
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y / 10^(2 * -idx + 5)
                                y = y % x
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y / 10^(2 * -idx + 5)
                            u = u / 10^(2 * -s + 5)
                            u = y % x
                            u = u % w
                            v = uint32(v) + 1
                            continue 
                        x = 10
                        t = 2 * -idx + 5
                        while t > 1:
                            if x > -1 / x:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            x = x * x
                            t = uint255(t) * 0.5
                            continue 
                        if 1 > -1 / x:
                            revert with 0, 17
                        if not x:
                            revert with 0, 18
                        if 5 < idx:
                            revert with 0, 17
                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if not 2 * -idx + 5:
                            if u / 10^(2 * -s + 5) != y / x:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y / x
                                y = y % 1
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y / x
                            u = u / 10^(2 * -s + 5)
                            u = y % 1
                            u = u % w
                            v = uint32(v) + 1
                            continue 
                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                            if not 10^(2 * -idx + 5):
                                revert with 0, 18
                            if u / 10^(2 * -s + 5) != y / x:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y / x
                                y = y % 10^(2 * -idx + 5)
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y / x
                            u = u / 10^(2 * -s + 5)
                            u = y % 10^(2 * -idx + 5)
                            u = u % w
                            v = uint32(v) + 1
                            continue 
                        z = 10
                        t = 2 * -idx + 5
                        while t > 1:
                            if z > -1 / z:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            z = z * z
                            t = uint255(t) * 0.5
                            continue 
                        if 1 > -1 / z:
                            revert with 0, 17
                        if not z:
                            revert with 0, 18
                        if u / 10^(2 * -s + 5) != y / x:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            idx = idx + 1
                            x = y / x
                            y = y % z
                            continue 
                        if uint32(v) == test266151307():
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        t = y / x
                        u = u / 10^(2 * -s + 5)
                        u = y % z
                        u = u % w
                        v = uint32(v) + 1
                        continue 
                    if s == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 20
                    s = s + 1
                    t = x
                    u = u / 10^(2 * -s + 5)
                    u = y
                    u = u % w
                    v = v
                    continue 
                w = 10
                idx = 2 * -s + 5
                while idx > 1:
                    if w > -1 / w:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 20
                    w = w * w
                    idx = uint255(idx) * 0.5
                    continue 
                if 1 > -1 / w:
                    revert with 0, 17
                if not w:
                    revert with 0, 18
                if 5 < s:
                    revert with 0, 17
                if -s + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if not 2 * -s + 5:
                    idx = 0
                    x = t
                    y = var39006
                    while idx < 6:
                        if 5 < idx:
                            revert with 0, 17
                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if not 2 * -idx + 5:
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if u / w != y:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y
                                    y = y % 1
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y
                                u = u / w
                                u = y % 1
                                u = u % 1
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if u / w != y:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y
                                    y = y % 10^(2 * -idx + 5)
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y
                                u = u / w
                                u = y % 10^(2 * -idx + 5)
                                u = u % 1
                                v = uint32(v) + 1
                                continue 
                            x = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if x > -1 / x:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                x = x * x
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / x:
                                revert with 0, 17
                            if not x:
                                revert with 0, 18
                            if u / w != y:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y
                                y = y % x
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y
                            u = u / w
                            u = y % x
                            u = u % 1
                            v = uint32(v) + 1
                            continue 
                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                            if not 10^(2 * -idx + 5):
                                revert with 0, 18
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if u / w != y / 10^(2 * -idx + 5):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y / 10^(2 * -idx + 5)
                                    y = y % 1
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y / 10^(2 * -idx + 5)
                                u = u / w
                                u = y % 1
                                u = u % 1
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if u / w != y / 10^(2 * -idx + 5):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y / 10^(2 * -idx + 5)
                                    y = y % 10^(2 * -idx + 5)
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y / 10^(2 * -idx + 5)
                                u = u / w
                                u = y % 10^(2 * -idx + 5)
                                u = u % 1
                                v = uint32(v) + 1
                                continue 
                            x = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if x > -1 / x:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                x = x * x
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / x:
                                revert with 0, 17
                            if not x:
                                revert with 0, 18
                            if u / w != y / 10^(2 * -idx + 5):
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y / 10^(2 * -idx + 5)
                                y = y % x
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y / 10^(2 * -idx + 5)
                            u = u / w
                            u = y % x
                            u = u % 1
                            v = uint32(v) + 1
                            continue 
                        x = 10
                        t = 2 * -idx + 5
                        while t > 1:
                            if x > -1 / x:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            x = x * x
                            t = uint255(t) * 0.5
                            continue 
                        if 1 > -1 / x:
                            revert with 0, 17
                        if not x:
                            revert with 0, 18
                        if 5 < idx:
                            revert with 0, 17
                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if not 2 * -idx + 5:
                            if u / w != y / x:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y / x
                                y = y % 1
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y / x
                            u = u / w
                            u = y % 1
                            u = u % 1
                            v = uint32(v) + 1
                            continue 
                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                            if not 10^(2 * -idx + 5):
                                revert with 0, 18
                            if u / w != y / x:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y / x
                                y = y % 10^(2 * -idx + 5)
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y / x
                            u = u / w
                            u = y % 10^(2 * -idx + 5)
                            u = u % 1
                            v = uint32(v) + 1
                            continue 
                        z = 10
                        t = 2 * -idx + 5
                        while t > 1:
                            if z > -1 / z:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            z = z * z
                            t = uint255(t) * 0.5
                            continue 
                        if 1 > -1 / z:
                            revert with 0, 17
                        if not z:
                            revert with 0, 18
                        if u / w != y / x:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            idx = idx + 1
                            x = y / x
                            y = y % z
                            continue 
                        if uint32(v) == test266151307():
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        t = y / x
                        u = u / w
                        u = y % z
                        u = u % 1
                        v = uint32(v) + 1
                        continue 
                    if s == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 20
                    s = s + 1
                    t = x
                    u = u / w
                    u = y
                    u = u % 1
                    v = v
                    continue 
                if bool(bool(2 * -s + 5 < 78)) or bool(bool(2 * -s + 5 < 32)):
                    if not 10^(2 * -s + 5):
                        revert with 0, 18
                    idx = 0
                    x = t
                    y = var39006
                    while idx < 6:
                        if 5 < idx:
                            revert with 0, 17
                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if not 2 * -idx + 5:
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if u / w != y:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y
                                    y = y % 1
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y
                                u = u / w
                                u = y % 1
                                u = u % 10^(2 * -s + 5)
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if u / w != y:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y
                                    y = y % 10^(2 * -idx + 5)
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y
                                u = u / w
                                u = y % 10^(2 * -idx + 5)
                                u = u % 10^(2 * -s + 5)
                                v = uint32(v) + 1
                                continue 
                            x = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if x > -1 / x:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                x = x * x
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / x:
                                revert with 0, 17
                            if not x:
                                revert with 0, 18
                            if u / w != y:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y
                                y = y % x
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y
                            u = u / w
                            u = y % x
                            u = u % 10^(2 * -s + 5)
                            v = uint32(v) + 1
                            continue 
                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                            if not 10^(2 * -idx + 5):
                                revert with 0, 18
                            if 5 < idx:
                                revert with 0, 17
                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -idx + 5:
                                if u / w != y / 10^(2 * -idx + 5):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y / 10^(2 * -idx + 5)
                                    y = y % 1
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y / 10^(2 * -idx + 5)
                                u = u / w
                                u = y % 1
                                u = u % 10^(2 * -s + 5)
                                v = uint32(v) + 1
                                continue 
                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                if not 10^(2 * -idx + 5):
                                    revert with 0, 18
                                if u / w != y / 10^(2 * -idx + 5):
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 20
                                    idx = idx + 1
                                    x = y / 10^(2 * -idx + 5)
                                    y = y % 10^(2 * -idx + 5)
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                s = s + 1
                                t = y / 10^(2 * -idx + 5)
                                u = u / w
                                u = y % 10^(2 * -idx + 5)
                                u = u % 10^(2 * -s + 5)
                                v = uint32(v) + 1
                                continue 
                            x = 10
                            t = 2 * -idx + 5
                            while t > 1:
                                if x > -1 / x:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                x = x * x
                                t = uint255(t) * 0.5
                                continue 
                            if 1 > -1 / x:
                                revert with 0, 17
                            if not x:
                                revert with 0, 18
                            if u / w != y / 10^(2 * -idx + 5):
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y / 10^(2 * -idx + 5)
                                y = y % x
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y / 10^(2 * -idx + 5)
                            u = u / w
                            u = y % x
                            u = u % 10^(2 * -s + 5)
                            v = uint32(v) + 1
                            continue 
                        x = 10
                        t = 2 * -idx + 5
                        while t > 1:
                            if x > -1 / x:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            x = x * x
                            t = uint255(t) * 0.5
                            continue 
                        if 1 > -1 / x:
                            revert with 0, 17
                        if not x:
                            revert with 0, 18
                        if 5 < idx:
                            revert with 0, 17
                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if not 2 * -idx + 5:
                            if u / w != y / x:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y / x
                                y = y % 1
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y / x
                            u = u / w
                            u = y % 1
                            u = u % 10^(2 * -s + 5)
                            v = uint32(v) + 1
                            continue 
                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                            if not 10^(2 * -idx + 5):
                                revert with 0, 18
                            if u / w != y / x:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                x = y / x
                                y = y % 10^(2 * -idx + 5)
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = y / x
                            u = u / w
                            u = y % 10^(2 * -idx + 5)
                            u = u % 10^(2 * -s + 5)
                            v = uint32(v) + 1
                            continue 
                        z = 10
                        t = 2 * -idx + 5
                        while t > 1:
                            if z > -1 / z:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            z = z * z
                            t = uint255(t) * 0.5
                            continue 
                        if 1 > -1 / z:
                            revert with 0, 17
                        if not z:
                            revert with 0, 18
                        if u / w != y / x:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            idx = idx + 1
                            x = y / x
                            y = y % z
                            continue 
                        if uint32(v) == test266151307():
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        t = y / x
                        u = u / w
                        u = y % z
                        u = u % 10^(2 * -s + 5)
                        v = uint32(v) + 1
                        continue 
                    if s == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 20
                    s = s + 1
                    t = x
                    u = u / w
                    u = y
                    u = u % 10^(2 * -s + 5)
                    v = v
                    continue 
                x = 10
                idx = 2 * -s + 5
                while idx > 1:
                    if x > -1 / x:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 20
                    x = x * x
                    idx = uint255(idx) * 0.5
                    continue 
                if 1 > -1 / x:
                    revert with 0, 17
                if not x:
                    revert with 0, 18
                idx = 0
                y = t
                z = var39006
                while idx < 6:
                    if 5 < idx:
                        revert with 0, 17
                    if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if not 2 * -idx + 5:
                        if 5 < idx:
                            revert with 0, 17
                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if not 2 * -idx + 5:
                            if u / w != z:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                y = z
                                z = z % 1
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = z
                            u = u / w
                            u = z % 1
                            u = u % x
                            v = uint32(v) + 1
                            continue 
                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                            if not 10^(2 * -idx + 5):
                                revert with 0, 18
                            if u / w != z:
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                y = z
                                z = z % 10^(2 * -idx + 5)
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = z
                            u = u / w
                            u = z % 10^(2 * -idx + 5)
                            u = u % x
                            v = uint32(v) + 1
                            continue 
                        y = 10
                        t = 2 * -idx + 5
                        while t > 1:
                            if y > -1 / y:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            y = y * y
                            t = uint255(t) * 0.5
                            continue 
                        if 1 > -1 / y:
                            revert with 0, 17
                        if not y:
                            revert with 0, 18
                        if u / w != z:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            idx = idx + 1
                            y = z
                            z = z % y
                            continue 
                        if uint32(v) == test266151307():
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        t = z
                        u = u / w
                        u = z % y
                        u = u % x
                        v = uint32(v) + 1
                        continue 
                    if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                        if not 10^(2 * -idx + 5):
                            revert with 0, 18
                        if 5 < idx:
                            revert with 0, 17
                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if not 2 * -idx + 5:
                            if u / w != z / 10^(2 * -idx + 5):
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                y = z / 10^(2 * -idx + 5)
                                z = z % 1
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = z / 10^(2 * -idx + 5)
                            u = u / w
                            u = z % 1
                            u = u % x
                            v = uint32(v) + 1
                            continue 
                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                            if not 10^(2 * -idx + 5):
                                revert with 0, 18
                            if u / w != z / 10^(2 * -idx + 5):
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = arg1
                                mem[32] = 20
                                idx = idx + 1
                                y = z / 10^(2 * -idx + 5)
                                z = z % 10^(2 * -idx + 5)
                                continue 
                            if uint32(v) == test266151307():
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            s = s + 1
                            t = z / 10^(2 * -idx + 5)
                            u = u / w
                            u = z % 10^(2 * -idx + 5)
                            u = u % x
                            v = uint32(v) + 1
                            continue 
                        y = 10
                        t = 2 * -idx + 5
                        while t > 1:
                            if y > -1 / y:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            y = y * y
                            t = uint255(t) * 0.5
                            continue 
                        if 1 > -1 / y:
                            revert with 0, 17
                        if not y:
                            revert with 0, 18
                        if u / w != z / 10^(2 * -idx + 5):
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            idx = idx + 1
                            y = z / 10^(2 * -idx + 5)
                            z = z % y
                            continue 
                        if uint32(v) == test266151307():
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        t = z / 10^(2 * -idx + 5)
                        u = u / w
                        u = z % y
                        u = u % x
                        v = uint32(v) + 1
                        continue 
                    y = 10
                    t = 2 * -idx + 5
                    while t > 1:
                        if y > -1 / y:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        y = y * y
                        t = uint255(t) * 0.5
                        continue 
                    if 1 > -1 / y:
                        revert with 0, 17
                    if not y:
                        revert with 0, 18
                    if 5 < idx:
                        revert with 0, 17
                    if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if not 2 * -idx + 5:
                        if u / w != z / y:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            idx = idx + 1
                            y = z / y
                            z = z % 1
                            continue 
                        if uint32(v) == test266151307():
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        t = z / y
                        u = u / w
                        u = z % 1
                        u = u % x
                        v = uint32(v) + 1
                        continue 
                    if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                        if not 10^(2 * -idx + 5):
                            revert with 0, 18
                        if u / w != z / y:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 20
                            idx = idx + 1
                            y = z / y
                            z = z % 10^(2 * -idx + 5)
                            continue 
                        if uint32(v) == test266151307():
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        s = s + 1
                        t = z / y
                        u = u / w
                        u = z % 10^(2 * -idx + 5)
                        u = u % x
                        v = uint32(v) + 1
                        continue 
                    a = 10
                    t = 2 * -idx + 5
                    while t > 1:
                        if a > -1 / a:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        a = a * a
                        t = uint255(t) * 0.5
                        continue 
                    if 1 > -1 / a:
                        revert with 0, 17
                    if not a:
                        revert with 0, 18
                    if u / w != z / y:
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = arg1
                        mem[32] = 20
                        idx = idx + 1
                        y = z / y
                        z = z % a
                        continue 
                    if uint32(v) == test266151307():
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 20
                    s = s + 1
                    t = z / y
                    u = u / w
                    u = z % a
                    u = u % x
                    v = uint32(v) + 1
                    continue 
                if s == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 20
                s = s + 1
                t = y
                u = u / w
                u = z
                u = u % x
                v = v
                continue 
            if not uint32(v):
                if uint32(v) >= 6:
                    revert with 0, 50
                if stor20[arg1][uint32(v)].field_4608 == -1:
                    revert with 0, 17
                stor20[arg1][uint32(v)].field_4608++
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 20
                idx = idx + 1
                s = stor21[idx].field_0
                s = uint32(v)
                continue 
            if not uint32(v):
                revert with 0, 17
            if uint32(uint32(v) - 1) >= 6:
                revert with 0, 50
            if stor20[arg1][uint32(uint32(v) - 1)].field_4608 == -1:
                revert with 0, 17
            stor20[arg1][uint32(uint32(v) - 1)].field_4608++
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 20
            idx = idx + 1
            s = stor21[idx].field_0
            s = uint32(uint32(v) - 1)
            continue 
        idx = 0
        while uint32(idx) < 6:
            if stor20[arg1][uint32(idx)].field_4608:
                mem[0] = arg1
                mem[32] = 20
                if uint32(idx) >= 6:
                    revert with 0, 50
                if stor20[arg1][uint32(idx)].field_1280:
                    if uint32(idx) >= 6:
                        revert with 0, 50
                    if stor20[arg1][uint32(idx)].field_1280 and (10000 * stor20[arg1].field_6656) - (stor20[arg1].field_2816 * stor20[arg1].field_6656) / 10000 > -1 / stor20[arg1][uint32(idx)].field_1280:
                        revert with 0, 17
                    if not stor20[arg1][uint32(idx)].field_4608:
                        revert with 0, 18
                    mem[0] = arg1
                    mem[32] = 20
                    if uint32(idx) >= 6:
                        revert with 0, 50
                    stor20[arg1][uint32(idx)].field_3072 = stor20[arg1][uint32(idx)].field_1280 * (10000 * stor20[arg1].field_6656) - (stor20[arg1].field_2816 * stor20[arg1].field_6656) / 10000 / stor20[arg1][uint32(idx)].field_4608 / 10000
            else:
                if uint32(idx) >= 6:
                    revert with 0, 50
                stor20[arg1][uint32(idx)].field_3072 = 0
                if stor20[arg1][uint32(idx)].field_1280 and (10000 * stor20[arg1].field_6656) - (stor20[arg1].field_2816 * stor20[arg1].field_6656) / 10000 > -1 / stor20[arg1][uint32(idx)].field_1280:
                    revert with 0, 17
                if stor20[arg1][uint32(idx)].field_1280 * (10000 * stor20[arg1].field_6656) - (stor20[arg1].field_2816 * stor20[arg1].field_6656) / 10000 > 0x8bcf64e5ec10ee1d37d7960cd589c31b2b8ddbaea04a462d9a2568fe7f85a:
                    revert with 0, 17
                if pendingInjectionNextLottery > !(7500 * stor20[arg1][uint32(idx)].field_1280 * (10000 * stor20[arg1].field_6656) - (stor20[arg1].field_2816 * stor20[arg1].field_6656) / 10000 / 100 * 10^6):
                    revert with 0, 17
                pendingInjectionNextLottery += 7500 * stor20[arg1][uint32(idx)].field_1280 * (10000 * stor20[arg1].field_6656) - (stor20[arg1].field_2816 * stor20[arg1].field_6656) / 10000 / 100 * 10^6
                mem[0] = arg1
                mem[32] = 20
                if uint32(idx) >= 6:
                    revert with 0, 50
                if stor20[arg1][uint32(idx)].field_1280 and (10000 * stor20[arg1].field_6656) - (stor20[arg1].field_2816 * stor20[arg1].field_6656) / 10000 > -1 / stor20[arg1][uint32(idx)].field_1280:
                    revert with 0, 17
                if stor20[arg1][uint32(idx)].field_1280 * (10000 * stor20[arg1].field_6656) - (stor20[arg1].field_2816 * stor20[arg1].field_6656) / 10000 > 0x1a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e90f:
                    revert with 0, 17
                if sub_7b8cbb86 > !(2500 * stor20[arg1][uint32(idx)].field_1280 * (10000 * stor20[arg1].field_6656) - (stor20[arg1].field_2816 * stor20[arg1].field_6656) / 10000 / 100 * 10^6):
                    revert with 0, 17
                sub_7b8cbb86 += 2500 * stor20[arg1][uint32(idx)].field_1280 * (10000 * stor20[arg1].field_6656) - (stor20[arg1].field_2816 * stor20[arg1].field_6656) / 10000 / 100 * 10^6
            if uint32(idx) == test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            continue 
        stor20[arg1].field_6912 = var39006
        uint8(stor20[arg1].field_0) = 3
        if arg2:
            pendingInjectionNextLottery = 0
        emit LotteryNumberDrawn(var39006, 0, viewCurrentLotteryId);
        stor0 = 1
    if not stor13:
        if var60002 > !var39001:
            revert with 0, 17
        mem[352] = block.difficulty
        mem[384] = block.timestamp
        mem[416] = var60002 + var39001
        mem[320] = 96
        mem[64] = 448
        if 1 > !(sha3(block.difficulty, block.timestamp, var60002 + var39001) % 21):
            revert with 0, 17
        s = 0
        while s < var39001:
            if s >= 6:
                revert with 0, 50
            if mem[(32 * s) + 128] != (sha3(block.difficulty, block.timestamp, var60002 + var39001) % 21) + 1:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if var60002 == -1:
                revert with 0, 17
            var60002 = var60002 + 1
            var60005 = (sha3(block.difficulty, block.timestamp, var60002 + var39001) % 21) + 1
            continue 
        if var60002 == -1:
            revert with 0, 17
        var60002 = var60002 + 1
        var60005 = (sha3(block.difficulty, block.timestamp, var60002 + var39001) % 21) + 1
        continue 
    if currentTicketId > !var60002:
        revert with 0, 17
    if currentTicketId + var60002 > !var39001:
        revert with 0, 17
    mem[352] = viewCurrentLotteryId
    mem[384] = currentTicketId + var60002 + var39001
    mem[320] = 64
    mem[420] = sha3(viewCurrentLotteryId, currentTicketId + var60002 + var39001)
    require ext_code.size(randomGeneratorAddress)
    call randomGeneratorAddress.getRandomNumber(uint256 arg1) with:
         gas gas_remaining wei
        args sha3(viewCurrentLotteryId, currentTicketId + var60002 + var39001)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(randomGeneratorAddress)
    staticcall randomGeneratorAddress.viewLatestLotteryId() with:
            gas gas_remaining wei
    mem[416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if viewCurrentLotteryId != ext_call.return_data[0]:
        revert with 0, 'Numbers not drawn'
    require ext_code.size(randomGeneratorAddress)
    staticcall randomGeneratorAddress.viewRandomResult() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 416
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    if 1 > -uint32(ext_call.return_data[28 len 4] % 21) + test266151307():
        revert with 0, 17
    s = 0
    while s < var39001:
        if s >= 6:
            revert with 0, 50
        if mem[(32 * s) + 128] != uint32(uint32(ext_call.return_data[28 len 4] % 21) + 1):
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if var60002 == -1:
            revert with 0, 17
        var60002 = var60002 + 1
        var60005 = uint32(uint32(ext_call.return_data[28 len 4] % 21) + 1)
        continue 
    if var60002 == -1:
        revert with 0, 17
    var60002 = var60002 + 1
    var60005 = uint32(uint32(ext_call.return_data[28 len 4] % 21) + 1)
    continue 
}

function checkLotteryState() payable {
    if address(operatorAddress) != msg.sender:
        revert with 0, 'Not operator'
    if not uint8(stor19.field_8):
        if viewCurrentLotteryId:
            if block.timestamp < stor20[stor5].field_512:
                if 300 > !stor20[stor5].field_512:
                    revert with 0, 17
                if block.timestamp >= stor20[stor5].field_512 + 300:
                    if uint8(stor20[stor5].field_0) > 3:
                        revert with 0, 33
                    if uint8(stor20[stor5].field_0) == 3:
                        if uint8(stor19.field_0):
                            if 168 * 24 * 3600 > !block.timestamp:
                                revert with 0, 17
                            if block.timestamp + (168 * 24 * 3600) < 1:
                                revert with 0, 17
                            idx = 96
                            s = 5
                            while 288 > idx + 32:
                                mem[idx + 32] = stor20[stor5][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if address(operatorAddress) != msg.sender:
                                revert with 0, 'Not operator'
                            if uint8(stor19.field_8):
                                revert with 0, 'Current Lottery paused'
                            if viewCurrentLotteryId:
                                if uint8(stor20[stor5].field_0) > 3:
                                    revert with 0, 33
                                if uint8(stor20[stor5].field_0) != 3:
                                    revert with 0, 'Not time to start lottery'
                            if block.timestamp + 604799 < block.timestamp:
                                revert with 0, 17
                            if block.timestamp + 604799 < block.timestamp:
                                revert with 0, 17
                            revert with 0, 'Lottery length outside of range'
                        if 24 * 3600 > !block.timestamp:
                            revert with 0, 17
                        if block.timestamp + (24 * 3600) < 1:
                            revert with 0, 17
                        mem[96] = stor20[stor5].field_1280
                        idx = 96
                        s = 5
                        while 288 > idx + 32:
                            mem[idx + 32] = stor20[stor5][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if address(operatorAddress) != msg.sender:
                            revert with 0, 'Not operator'
                        if uint8(stor19.field_8):
                            revert with 0, 'Current Lottery paused'
                        if viewCurrentLotteryId:
                            if uint8(stor20[stor5].field_0) > 3:
                                revert with 0, 33
                            if uint8(stor20[stor5].field_0) != 3:
                                revert with 0, 'Not time to start lottery'
                        if block.timestamp + 86399 < block.timestamp:
                            revert with 0, 17
                        if block.timestamp + 86399 < block.timestamp:
                            revert with 0, 17
                        if sub_60f3c325 < sub_a5b26ec2:
                            revert with 0, 'Outside of limits'
                        if sub_60f3c325 > sub_11eae2c8:
                            revert with 0, 'Outside of limits'
                        if stor20[stor5].field_2816 > 500:
                            revert with 0, 'Treasury fee too high'
                        if stor20[stor5].field_1280 > !mem[128]:
                            revert with 0, 17
                        if stor20[stor5].field_1280 + mem[128] > !mem[160]:
                            revert with 0, 17
                        if stor20[stor5].field_1280 + mem[128] + mem[160] > !mem[192]:
                            revert with 0, 17
                        if stor20[stor5].field_1280 + mem[128] + mem[160] + mem[192] > !mem[224]:
                            revert with 0, 17
                        if stor20[stor5].field_1280 + mem[128] + mem[160] + mem[192] + mem[224] > !mem[256]:
                            revert with 0, 17
                        if stor20[stor5].field_1280 + mem[128] + mem[160] + mem[192] + mem[224] + mem[256] != 10000:
                            revert with 0, 'Rewards must equal 10000'
                        if viewCurrentLotteryId == -1:
                            revert with 0, 17
                        viewCurrentLotteryId++
                        if uint8(stor19.field_0):
                            if pendingInjectionNextLottery < stor17:
                                if sub_7b8cbb86 > stor18:
                                    if pendingInjectionNextLottery > !stor18:
                                        revert with 0, 17
                                    pendingInjectionNextLottery += stor18
                                    if sub_7b8cbb86 < stor18:
                                        revert with 0, 17
                                    sub_7b8cbb86 -= stor18
                        else:
                            if pendingInjectionNextLottery < stor15:
                                if sub_7b8cbb86 > stor16:
                                    if pendingInjectionNextLottery > !stor16:
                                        revert with 0, 17
                                    pendingInjectionNextLottery += stor16
                                    if sub_7b8cbb86 < stor16:
                                        revert with 0, 17
                                    sub_7b8cbb86 -= stor16
                        mem[288] = 1
                        mem[736] = 0
                        mem[768] = 0
                        mem[800] = 0
                        mem[832] = 0
                        mem[864] = 0
                        mem[896] = 0
                        mem[928] = 0
                        mem[960] = 0
                        mem[992] = 0
                        mem[1024] = 0
                        mem[1056] = 0
                        mem[1088] = 0
                        uint8(stor20[stor5].field_0) = 1
                        stor20[stor5].field_256 = block.timestamp
                        stor20[stor5].field_512 = block.timestamp + 86399
                        stor20[stor5].field_768 = sub_60f3c325
                        s = 5
                        idx = 96
                        while 288 > idx:
                            stor20[stor5][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 11
                        while 11 > idx:
                            stor20[stor5][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        s = 12
                        idx = 736
                        while 928 > idx:
                            stor20[stor5][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 18
                        while 18 > idx:
                            stor20[stor5][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        s = 18
                        idx = 928
                        while 1120 > idx:
                            stor20[stor5][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 24
                        while 24 > idx:
                            stor20[stor5][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor20[stor5].field_6144 = currentTicketId
                        stor20[stor5].field_6400 = currentTicketId
                        stor20[stor5].field_6656 = pendingInjectionNextLottery
                        stor20[stor5].field_6912 = 0
                        stor20[stor5].field_7168 = 0
                        emit LotteryOpen(block.timestamp, block.timestamp + 86399, sub_60f3c325, currentTicketId, pendingInjectionNextLottery, viewCurrentLotteryId);
                        pendingInjectionNextLottery = 0
            else:
                if uint8(stor20[stor5].field_0) > 3:
                    revert with 0, 33
                if uint8(stor20[stor5].field_0) != 1:
                    if 300 > !stor20[stor5].field_512:
                        revert with 0, 17
                    if block.timestamp >= stor20[stor5].field_512 + 300:
                        if uint8(stor20[stor5].field_0) > 3:
                            revert with 0, 33
                        if uint8(stor20[stor5].field_0) == 3:
                            if uint8(stor19.field_0):
                                if 168 * 24 * 3600 > !block.timestamp:
                                    revert with 0, 17
                                if block.timestamp + (168 * 24 * 3600) < 1:
                                    revert with 0, 17
                                idx = 96
                                s = 5
                                while 288 > idx + 32:
                                    mem[idx + 32] = stor20[stor5][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if address(operatorAddress) != msg.sender:
                                    revert with 0, 'Not operator'
                                if uint8(stor19.field_8):
                                    revert with 0, 'Current Lottery paused'
                                if viewCurrentLotteryId:
                                    if uint8(stor20[stor5].field_0) > 3:
                                        revert with 0, 33
                                    if uint8(stor20[stor5].field_0) != 3:
                                        revert with 0, 'Not time to start lottery'
                                if block.timestamp + 604799 < block.timestamp:
                                    revert with 0, 17
                                if block.timestamp + 604799 < block.timestamp:
                                    revert with 0, 17
                                revert with 0, 'Lottery length outside of range'
                            if 24 * 3600 > !block.timestamp:
                                revert with 0, 17
                            if block.timestamp + (24 * 3600) < 1:
                                revert with 0, 17
                            mem[96] = stor20[stor5].field_1280
                            idx = 96
                            s = 5
                            while 288 > idx + 32:
                                mem[idx + 32] = stor20[stor5][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if address(operatorAddress) != msg.sender:
                                revert with 0, 'Not operator'
                            if uint8(stor19.field_8):
                                revert with 0, 'Current Lottery paused'
                            if viewCurrentLotteryId:
                                if uint8(stor20[stor5].field_0) > 3:
                                    revert with 0, 33
                                if uint8(stor20[stor5].field_0) != 3:
                                    revert with 0, 'Not time to start lottery'
                            if block.timestamp + 86399 < block.timestamp:
                                revert with 0, 17
                            if block.timestamp + 86399 < block.timestamp:
                                revert with 0, 17
                            if sub_60f3c325 < sub_a5b26ec2:
                                revert with 0, 'Outside of limits'
                            if sub_60f3c325 > sub_11eae2c8:
                                revert with 0, 'Outside of limits'
                            if stor20[stor5].field_2816 > 500:
                                revert with 0, 'Treasury fee too high'
                            if stor20[stor5].field_1280 > !mem[128]:
                                revert with 0, 17
                            if stor20[stor5].field_1280 + mem[128] > !mem[160]:
                                revert with 0, 17
                            if stor20[stor5].field_1280 + mem[128] + mem[160] > !mem[192]:
                                revert with 0, 17
                            if stor20[stor5].field_1280 + mem[128] + mem[160] + mem[192] > !mem[224]:
                                revert with 0, 17
                            if stor20[stor5].field_1280 + mem[128] + mem[160] + mem[192] + mem[224] > !mem[256]:
                                revert with 0, 17
                            if stor20[stor5].field_1280 + mem[128] + mem[160] + mem[192] + mem[224] + mem[256] != 10000:
                                revert with 0, 'Rewards must equal 10000'
                            if viewCurrentLotteryId == -1:
                                revert with 0, 17
                            viewCurrentLotteryId++
                            if uint8(stor19.field_0):
                                if pendingInjectionNextLottery < stor17:
                                    if sub_7b8cbb86 > stor18:
                                        if pendingInjectionNextLottery > !stor18:
                                            revert with 0, 17
                                        pendingInjectionNextLottery += stor18
                                        if sub_7b8cbb86 < stor18:
                                            revert with 0, 17
                                        sub_7b8cbb86 -= stor18
                            else:
                                if pendingInjectionNextLottery < stor15:
                                    if sub_7b8cbb86 > stor16:
                                        if pendingInjectionNextLottery > !stor16:
                                            revert with 0, 17
                                        pendingInjectionNextLottery += stor16
                                        if sub_7b8cbb86 < stor16:
                                            revert with 0, 17
                                        sub_7b8cbb86 -= stor16
                            mem[288] = 1
                            mem[736] = 0
                            mem[768] = 0
                            mem[800] = 0
                            mem[832] = 0
                            mem[864] = 0
                            mem[896] = 0
                            mem[928] = 0
                            mem[960] = 0
                            mem[992] = 0
                            mem[1024] = 0
                            mem[1056] = 0
                            mem[1088] = 0
                            uint8(stor20[stor5].field_0) = 1
                            stor20[stor5].field_256 = block.timestamp
                            stor20[stor5].field_512 = block.timestamp + 86399
                            stor20[stor5].field_768 = sub_60f3c325
                            s = 5
                            idx = 96
                            while 288 > idx:
                                stor20[stor5][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 11
                            while 11 > idx:
                                stor20[stor5][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            s = 12
                            idx = 736
                            while 928 > idx:
                                stor20[stor5][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 18
                            while 18 > idx:
                                stor20[stor5][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            s = 18
                            idx = 928
                            while 1120 > idx:
                                stor20[stor5][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 24
                            while 24 > idx:
                                stor20[stor5][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor20[stor5].field_6144 = currentTicketId
                            stor20[stor5].field_6400 = currentTicketId
                            stor20[stor5].field_6656 = pendingInjectionNextLottery
                            stor20[stor5].field_6912 = 0
                            stor20[stor5].field_7168 = 0
                            emit LotteryOpen(block.timestamp, block.timestamp + 86399, sub_60f3c325, currentTicketId, pendingInjectionNextLottery, viewCurrentLotteryId);
                            pendingInjectionNextLottery = 0
                else:
                    if address(operatorAddress) != msg.sender:
                        revert with 0, 'Not operator'
                    if stor0 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor0 = 2
                    if uint8(stor19.field_8):
                        revert with 0, 'Current Lottery paused'
                    if uint8(stor20[stor5].field_0) > 3:
                        revert with 0, 33
                    if uint8(stor20[stor5].field_0) != 1:
                        revert with 0, 'Lottery not open'
                    if block.timestamp <= stor20[stor5].field_512:
                        revert with 0, 'Lottery not over'
                    stor20[stor5].field_6400 = currentTicketId
                    uint8(stor20[stor5].field_0) = 2
                    emit LotteryClose(currentTicketId, viewCurrentLotteryId);
                    stor0 = 1
                    if address(operatorAddress) != msg.sender:
                        revert with 0, 'Not operator'
                    if stor0 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor0 = 2
                    if uint8(stor19.field_8):
                        revert with 0, 'Current Lottery paused'
                    mem[0] = viewCurrentLotteryId
                    mem[32] = 20
                    if uint8(stor20[stor5].field_0) > 3:
                        revert with 0, 33
                    if uint8(stor20[stor5].field_0) != 2:
                        revert with 0, 'Lottery not close'
                    mem[96] = 6
                    mem[128 len 192] = call.data[calldata.size len 192]
                    if var49001 < 6:
                        if not stor13:
                            if var70002 > !var49001:
                                revert with 0, 17
                            mem[352] = block.difficulty
                            mem[384] = block.timestamp
                            mem[416] = var70002 + var49001
                            mem[320] = 96
                            mem[64] = 448
                            if 1 > !(sha3(block.difficulty, block.timestamp, var70002 + var49001) % 21):
                                revert with 0, 17
                            s = 0
                            while s < var49001:
                                if s >= 6:
                                    revert with 0, 50
                                if mem[(32 * s) + 128] != (sha3(block.difficulty, block.timestamp, var70002 + var49001) % 21) + 1:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                if var70002 == -1:
                                    revert with 0, 17
                                var70002 = var70002 + 1
                                var70005 = (sha3(block.difficulty, block.timestamp, var70002 + var49001) % 21) + 1
                                continue 
                            if var70002 == -1:
                                revert with 0, 17
                            var70002 = var70002 + 1
                            var70005 = (sha3(block.difficulty, block.timestamp, var70002 + var49001) % 21) + 1
                            continue 
                        if currentTicketId > !var70002:
                            revert with 0, 17
                        if currentTicketId + var70002 > !var49001:
                            revert with 0, 17
                        mem[352] = viewCurrentLotteryId
                        mem[384] = currentTicketId + var70002 + var49001
                        mem[320] = 64
                        mem[420] = sha3(viewCurrentLotteryId, currentTicketId + var70002 + var49001)
                        require ext_code.size(randomGeneratorAddress)
                        call randomGeneratorAddress.getRandomNumber(uint256 arg1) with:
                             gas gas_remaining wei
                            args sha3(viewCurrentLotteryId, currentTicketId + var70002 + var49001)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(randomGeneratorAddress)
                        staticcall randomGeneratorAddress.viewLatestLotteryId() with:
                                gas gas_remaining wei
                        mem[416] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if viewCurrentLotteryId != ext_call.return_data[0]:
                            revert with 0, 'Numbers not drawn'
                        require ext_code.size(randomGeneratorAddress)
                        staticcall randomGeneratorAddress.viewRandomResult() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 416
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[28 len 4]
                        if 1 > -uint32(ext_call.return_data[28 len 4] % 21) + test266151307():
                            revert with 0, 17
                        s = 0
                        while s < var49001:
                            if s >= 6:
                                revert with 0, 50
                            if mem[(32 * s) + 128] != uint32(uint32(ext_call.return_data[28 len 4] % 21) + 1):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            if var70002 == -1:
                                revert with 0, 17
                            var70002 = var70002 + 1
                            var70005 = uint32(uint32(ext_call.return_data[28 len 4] % 21) + 1)
                            continue 
                        if var70002 == -1:
                            revert with 0, 17
                        var70002 = var70002 + 1
                        var70005 = uint32(uint32(ext_call.return_data[28 len 4] % 21) + 1)
                        continue 
                    if 10000 < stor20[stor5].field_2816:
                        revert with 0, 17
                    if stor20[stor5].field_6656 and -stor20[stor5].field_2816 + 10000 > -1 / stor20[stor5].field_6656:
                        revert with 0, 17
                    mem[0] = viewCurrentLotteryId
                    mem[32] = 20
                    idx = stor20[stor5].field_6144
                    s = 0
                    s = 0
                    while idx < stor20[stor5].field_6400:
                        mem[0] = idx
                        mem[32] = 21
                        s = 0
                        t = 0
                        u = 0
                        u = 0
                        u = stor[sha3(mem[0 len 64])]
                        v = 0
                        while s < 6:
                            if 5 < s:
                                revert with 0, 17
                            if -s + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -s + 5:
                                if 5 < s:
                                    revert with 0, 17
                                if -s + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not 2 * -s + 5:
                                    idx = 0
                                    w = t
                                    x = var49006
                                    while idx < 6:
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if 5 < idx:
                                                revert with 0, 17
                                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if not 2 * -idx + 5:
                                                if u != x:
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x
                                                    x = x % 1
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x
                                                u = u
                                                u = x % 1
                                                u = u % 1
                                                v = uint32(v) + 1
                                                continue 
                                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                                if not 10^(2 * -idx + 5):
                                                    revert with 0, 18
                                                if u != x:
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x
                                                    x = x % 10^(2 * -idx + 5)
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x
                                                u = u
                                                u = x % 10^(2 * -idx + 5)
                                                u = u % 1
                                                v = uint32(v) + 1
                                                continue 
                                            w = 10
                                            t = 2 * -idx + 5
                                            while t > 1:
                                                if w > -1 / w:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                w = w * w
                                                t = uint255(t) * 0.5
                                                continue 
                                            if 1 > -1 / w:
                                                revert with 0, 17
                                            if not w:
                                                revert with 0, 18
                                            if u != x:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x
                                                x = x % w
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x
                                            u = u
                                            u = x % w
                                            u = u % 1
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if 5 < idx:
                                                revert with 0, 17
                                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if not 2 * -idx + 5:
                                                if u != x / 10^(2 * -idx + 5):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x / 10^(2 * -idx + 5)
                                                    x = x % 1
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x / 10^(2 * -idx + 5)
                                                u = u
                                                u = x % 1
                                                u = u % 1
                                                v = uint32(v) + 1
                                                continue 
                                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                                if not 10^(2 * -idx + 5):
                                                    revert with 0, 18
                                                if u != x / 10^(2 * -idx + 5):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x / 10^(2 * -idx + 5)
                                                    x = x % 10^(2 * -idx + 5)
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x / 10^(2 * -idx + 5)
                                                u = u
                                                u = x % 10^(2 * -idx + 5)
                                                u = u % 1
                                                v = uint32(v) + 1
                                                continue 
                                            w = 10
                                            t = 2 * -idx + 5
                                            while t > 1:
                                                if w > -1 / w:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                w = w * w
                                                t = uint255(t) * 0.5
                                                continue 
                                            if 1 > -1 / w:
                                                revert with 0, 17
                                            if not w:
                                                revert with 0, 18
                                            if u != x / 10^(2 * -idx + 5):
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x / 10^(2 * -idx + 5)
                                                x = x % w
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x / 10^(2 * -idx + 5)
                                            u = u
                                            u = x % w
                                            u = u % 1
                                            v = uint32(v) + 1
                                            continue 
                                        w = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if w > -1 / w:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            w = w * w
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / w:
                                            revert with 0, 17
                                        if not w:
                                            revert with 0, 18
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if u != x / w:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x / w
                                                x = x % 1
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x / w
                                            u = u
                                            u = x % 1
                                            u = u % 1
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if u != x / w:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x / w
                                                x = x % 10^(2 * -idx + 5)
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x / w
                                            u = u
                                            u = x % 10^(2 * -idx + 5)
                                            u = u % 1
                                            v = uint32(v) + 1
                                            continue 
                                        y = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if y > -1 / y:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            y = y * y
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / y:
                                            revert with 0, 17
                                        if not y:
                                            revert with 0, 18
                                        if u != x / w:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            w = x / w
                                            x = x % y
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = x / w
                                        u = u
                                        u = x % y
                                        u = u % 1
                                        v = uint32(v) + 1
                                        continue 
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    s = s + 1
                                    t = w
                                    u = u
                                    u = x
                                    u = u % 1
                                    v = v
                                    continue 
                                if bool(bool(2 * -s + 5 < 78)) or bool(bool(2 * -s + 5 < 32)):
                                    if not 10^(2 * -s + 5):
                                        revert with 0, 18
                                    idx = 0
                                    w = t
                                    x = var49006
                                    while idx < 6:
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if 5 < idx:
                                                revert with 0, 17
                                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if not 2 * -idx + 5:
                                                if u != x:
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x
                                                    x = x % 1
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x
                                                u = u
                                                u = x % 1
                                                u = u % 10^(2 * -s + 5)
                                                v = uint32(v) + 1
                                                continue 
                                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                                if not 10^(2 * -idx + 5):
                                                    revert with 0, 18
                                                if u != x:
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x
                                                    x = x % 10^(2 * -idx + 5)
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x
                                                u = u
                                                u = x % 10^(2 * -idx + 5)
                                                u = u % 10^(2 * -s + 5)
                                                v = uint32(v) + 1
                                                continue 
                                            w = 10
                                            t = 2 * -idx + 5
                                            while t > 1:
                                                if w > -1 / w:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                w = w * w
                                                t = uint255(t) * 0.5
                                                continue 
                                            if 1 > -1 / w:
                                                revert with 0, 17
                                            if not w:
                                                revert with 0, 18
                                            if u != x:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x
                                                x = x % w
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x
                                            u = u
                                            u = x % w
                                            u = u % 10^(2 * -s + 5)
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if 5 < idx:
                                                revert with 0, 17
                                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if not 2 * -idx + 5:
                                                if u != x / 10^(2 * -idx + 5):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x / 10^(2 * -idx + 5)
                                                    x = x % 1
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x / 10^(2 * -idx + 5)
                                                u = u
                                                u = x % 1
                                                u = u % 10^(2 * -s + 5)
                                                v = uint32(v) + 1
                                                continue 
                                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                                if not 10^(2 * -idx + 5):
                                                    revert with 0, 18
                                                if u != x / 10^(2 * -idx + 5):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x / 10^(2 * -idx + 5)
                                                    x = x % 10^(2 * -idx + 5)
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x / 10^(2 * -idx + 5)
                                                u = u
                                                u = x % 10^(2 * -idx + 5)
                                                u = u % 10^(2 * -s + 5)
                                                v = uint32(v) + 1
                                                continue 
                                            w = 10
                                            t = 2 * -idx + 5
                                            while t > 1:
                                                if w > -1 / w:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                w = w * w
                                                t = uint255(t) * 0.5
                                                continue 
                                            if 1 > -1 / w:
                                                revert with 0, 17
                                            if not w:
                                                revert with 0, 18
                                            if u != x / 10^(2 * -idx + 5):
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x / 10^(2 * -idx + 5)
                                                x = x % w
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x / 10^(2 * -idx + 5)
                                            u = u
                                            u = x % w
                                            u = u % 10^(2 * -s + 5)
                                            v = uint32(v) + 1
                                            continue 
                                        w = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if w > -1 / w:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            w = w * w
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / w:
                                            revert with 0, 17
                                        if not w:
                                            revert with 0, 18
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if u != x / w:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x / w
                                                x = x % 1
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x / w
                                            u = u
                                            u = x % 1
                                            u = u % 10^(2 * -s + 5)
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if u != x / w:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x / w
                                                x = x % 10^(2 * -idx + 5)
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x / w
                                            u = u
                                            u = x % 10^(2 * -idx + 5)
                                            u = u % 10^(2 * -s + 5)
                                            v = uint32(v) + 1
                                            continue 
                                        y = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if y > -1 / y:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            y = y * y
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / y:
                                            revert with 0, 17
                                        if not y:
                                            revert with 0, 18
                                        if u != x / w:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            w = x / w
                                            x = x % y
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = x / w
                                        u = u
                                        u = x % y
                                        u = u % 10^(2 * -s + 5)
                                        v = uint32(v) + 1
                                        continue 
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    s = s + 1
                                    t = w
                                    u = u
                                    u = x
                                    u = u % 10^(2 * -s + 5)
                                    v = v
                                    continue 
                                w = 10
                                idx = 2 * -s + 5
                                while idx > 1:
                                    if w > -1 / w:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    w = w * w
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if 1 > -1 / w:
                                    revert with 0, 17
                                if not w:
                                    revert with 0, 18
                                idx = 0
                                x = t
                                y = var49006
                                while idx < 6:
                                    if 5 < idx:
                                        revert with 0, 17
                                    if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not 2 * -idx + 5:
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if u != y:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y
                                                y = y % 1
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y
                                            u = u
                                            u = y % 1
                                            u = u % w
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if u != y:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y
                                                y = y % 10^(2 * -idx + 5)
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y
                                            u = u
                                            u = y % 10^(2 * -idx + 5)
                                            u = u % w
                                            v = uint32(v) + 1
                                            continue 
                                        x = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if x > -1 / x:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            x = x * x
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / x:
                                            revert with 0, 17
                                        if not x:
                                            revert with 0, 18
                                        if u != y:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y
                                            y = y % x
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y
                                        u = u
                                        u = y % x
                                        u = u % w
                                        v = uint32(v) + 1
                                        continue 
                                    if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                        if not 10^(2 * -idx + 5):
                                            revert with 0, 18
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if u != y / 10^(2 * -idx + 5):
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y / 10^(2 * -idx + 5)
                                                y = y % 1
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y / 10^(2 * -idx + 5)
                                            u = u
                                            u = y % 1
                                            u = u % w
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if u != y / 10^(2 * -idx + 5):
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y / 10^(2 * -idx + 5)
                                                y = y % 10^(2 * -idx + 5)
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y / 10^(2 * -idx + 5)
                                            u = u
                                            u = y % 10^(2 * -idx + 5)
                                            u = u % w
                                            v = uint32(v) + 1
                                            continue 
                                        x = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if x > -1 / x:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            x = x * x
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / x:
                                            revert with 0, 17
                                        if not x:
                                            revert with 0, 18
                                        if u != y / 10^(2 * -idx + 5):
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y / 10^(2 * -idx + 5)
                                            y = y % x
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y / 10^(2 * -idx + 5)
                                        u = u
                                        u = y % x
                                        u = u % w
                                        v = uint32(v) + 1
                                        continue 
                                    x = 10
                                    t = 2 * -idx + 5
                                    while t > 1:
                                        if x > -1 / x:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        x = x * x
                                        t = uint255(t) * 0.5
                                        continue 
                                    if 1 > -1 / x:
                                        revert with 0, 17
                                    if not x:
                                        revert with 0, 18
                                    if 5 < idx:
                                        revert with 0, 17
                                    if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not 2 * -idx + 5:
                                        if u != y / x:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y / x
                                            y = y % 1
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y / x
                                        u = u
                                        u = y % 1
                                        u = u % w
                                        v = uint32(v) + 1
                                        continue 
                                    if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                        if not 10^(2 * -idx + 5):
                                            revert with 0, 18
                                        if u != y / x:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y / x
                                            y = y % 10^(2 * -idx + 5)
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y / x
                                        u = u
                                        u = y % 10^(2 * -idx + 5)
                                        u = u % w
                                        v = uint32(v) + 1
                                        continue 
                                    z = 10
                                    t = 2 * -idx + 5
                                    while t > 1:
                                        if z > -1 / z:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        z = z * z
                                        t = uint255(t) * 0.5
                                        continue 
                                    if 1 > -1 / z:
                                        revert with 0, 17
                                    if not z:
                                        revert with 0, 18
                                    if u != y / x:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        idx = idx + 1
                                        x = y / x
                                        y = y % z
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    s = s + 1
                                    t = y / x
                                    u = u
                                    u = y % z
                                    u = u % w
                                    v = uint32(v) + 1
                                    continue 
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = viewCurrentLotteryId
                                mem[32] = 20
                                s = s + 1
                                t = x
                                u = u
                                u = y
                                u = u % w
                                v = v
                                continue 
                            if bool(bool(2 * -s + 5 < 78)) or bool(bool(2 * -s + 5 < 32)):
                                if not 10^(2 * -s + 5):
                                    revert with 0, 18
                                if 5 < s:
                                    revert with 0, 17
                                if -s + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not 2 * -s + 5:
                                    idx = 0
                                    w = t
                                    x = var49006
                                    while idx < 6:
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if 5 < idx:
                                                revert with 0, 17
                                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if not 2 * -idx + 5:
                                                if u / 10^(2 * -s + 5) != x:
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x
                                                    x = x % 1
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x
                                                u = u / 10^(2 * -s + 5)
                                                u = x % 1
                                                u = u % 1
                                                v = uint32(v) + 1
                                                continue 
                                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                                if not 10^(2 * -idx + 5):
                                                    revert with 0, 18
                                                if u / 10^(2 * -s + 5) != x:
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x
                                                    x = x % 10^(2 * -idx + 5)
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x
                                                u = u / 10^(2 * -s + 5)
                                                u = x % 10^(2 * -idx + 5)
                                                u = u % 1
                                                v = uint32(v) + 1
                                                continue 
                                            w = 10
                                            t = 2 * -idx + 5
                                            while t > 1:
                                                if w > -1 / w:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                w = w * w
                                                t = uint255(t) * 0.5
                                                continue 
                                            if 1 > -1 / w:
                                                revert with 0, 17
                                            if not w:
                                                revert with 0, 18
                                            if u / 10^(2 * -s + 5) != x:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x
                                                x = x % w
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x
                                            u = u / 10^(2 * -s + 5)
                                            u = x % w
                                            u = u % 1
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if 5 < idx:
                                                revert with 0, 17
                                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if not 2 * -idx + 5:
                                                if u / 10^(2 * -s + 5) != x / 10^(2 * -idx + 5):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x / 10^(2 * -idx + 5)
                                                    x = x % 1
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x / 10^(2 * -idx + 5)
                                                u = u / 10^(2 * -s + 5)
                                                u = x % 1
                                                u = u % 1
                                                v = uint32(v) + 1
                                                continue 
                                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                                if not 10^(2 * -idx + 5):
                                                    revert with 0, 18
                                                if u / 10^(2 * -s + 5) != x / 10^(2 * -idx + 5):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x / 10^(2 * -idx + 5)
                                                    x = x % 10^(2 * -idx + 5)
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x / 10^(2 * -idx + 5)
                                                u = u / 10^(2 * -s + 5)
                                                u = x % 10^(2 * -idx + 5)
                                                u = u % 1
                                                v = uint32(v) + 1
                                                continue 
                                            w = 10
                                            t = 2 * -idx + 5
                                            while t > 1:
                                                if w > -1 / w:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                w = w * w
                                                t = uint255(t) * 0.5
                                                continue 
                                            if 1 > -1 / w:
                                                revert with 0, 17
                                            if not w:
                                                revert with 0, 18
                                            if u / 10^(2 * -s + 5) != x / 10^(2 * -idx + 5):
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x / 10^(2 * -idx + 5)
                                                x = x % w
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x / 10^(2 * -idx + 5)
                                            u = u / 10^(2 * -s + 5)
                                            u = x % w
                                            u = u % 1
                                            v = uint32(v) + 1
                                            continue 
                                        w = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if w > -1 / w:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            w = w * w
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / w:
                                            revert with 0, 17
                                        if not w:
                                            revert with 0, 18
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if u / 10^(2 * -s + 5) != x / w:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x / w
                                                x = x % 1
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x / w
                                            u = u / 10^(2 * -s + 5)
                                            u = x % 1
                                            u = u % 1
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if u / 10^(2 * -s + 5) != x / w:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x / w
                                                x = x % 10^(2 * -idx + 5)
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x / w
                                            u = u / 10^(2 * -s + 5)
                                            u = x % 10^(2 * -idx + 5)
                                            u = u % 1
                                            v = uint32(v) + 1
                                            continue 
                                        y = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if y > -1 / y:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            y = y * y
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / y:
                                            revert with 0, 17
                                        if not y:
                                            revert with 0, 18
                                        if u / 10^(2 * -s + 5) != x / w:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            w = x / w
                                            x = x % y
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = x / w
                                        u = u / 10^(2 * -s + 5)
                                        u = x % y
                                        u = u % 1
                                        v = uint32(v) + 1
                                        continue 
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    s = s + 1
                                    t = w
                                    u = u / 10^(2 * -s + 5)
                                    u = x
                                    u = u % 1
                                    v = v
                                    continue 
                                if bool(bool(2 * -s + 5 < 78)) or bool(bool(2 * -s + 5 < 32)):
                                    if not 10^(2 * -s + 5):
                                        revert with 0, 18
                                    idx = 0
                                    w = t
                                    x = var49006
                                    while idx < 6:
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if 5 < idx:
                                                revert with 0, 17
                                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if not 2 * -idx + 5:
                                                if u / 10^(2 * -s + 5) != x:
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x
                                                    x = x % 1
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x
                                                u = u / 10^(2 * -s + 5)
                                                u = x % 1
                                                u = u % 10^(2 * -s + 5)
                                                v = uint32(v) + 1
                                                continue 
                                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                                if not 10^(2 * -idx + 5):
                                                    revert with 0, 18
                                                if u / 10^(2 * -s + 5) != x:
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x
                                                    x = x % 10^(2 * -idx + 5)
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x
                                                u = u / 10^(2 * -s + 5)
                                                u = x % 10^(2 * -idx + 5)
                                                u = u % 10^(2 * -s + 5)
                                                v = uint32(v) + 1
                                                continue 
                                            w = 10
                                            t = 2 * -idx + 5
                                            while t > 1:
                                                if w > -1 / w:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                w = w * w
                                                t = uint255(t) * 0.5
                                                continue 
                                            if 1 > -1 / w:
                                                revert with 0, 17
                                            if not w:
                                                revert with 0, 18
                                            if u / 10^(2 * -s + 5) != x:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x
                                                x = x % w
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x
                                            u = u / 10^(2 * -s + 5)
                                            u = x % w
                                            u = u % 10^(2 * -s + 5)
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if 5 < idx:
                                                revert with 0, 17
                                            if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 17
                                            if not 2 * -idx + 5:
                                                if u / 10^(2 * -s + 5) != x / 10^(2 * -idx + 5):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x / 10^(2 * -idx + 5)
                                                    x = x % 1
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x / 10^(2 * -idx + 5)
                                                u = u / 10^(2 * -s + 5)
                                                u = x % 1
                                                u = u % 10^(2 * -s + 5)
                                                v = uint32(v) + 1
                                                continue 
                                            if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                                if not 10^(2 * -idx + 5):
                                                    revert with 0, 18
                                                if u / 10^(2 * -s + 5) != x / 10^(2 * -idx + 5):
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    mem[0] = viewCurrentLotteryId
                                                    mem[32] = 20
                                                    idx = idx + 1
                                                    w = x / 10^(2 * -idx + 5)
                                                    x = x % 10^(2 * -idx + 5)
                                                    continue 
                                                if uint32(v) == test266151307():
                                                    revert with 0, 17
                                                if s == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                s = s + 1
                                                t = x / 10^(2 * -idx + 5)
                                                u = u / 10^(2 * -s + 5)
                                                u = x % 10^(2 * -idx + 5)
                                                u = u % 10^(2 * -s + 5)
                                                v = uint32(v) + 1
                                                continue 
                                            w = 10
                                            t = 2 * -idx + 5
                                            while t > 1:
                                                if w > -1 / w:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                w = w * w
                                                t = uint255(t) * 0.5
                                                continue 
                                            if 1 > -1 / w:
                                                revert with 0, 17
                                            if not w:
                                                revert with 0, 18
                                            if u / 10^(2 * -s + 5) != x / 10^(2 * -idx + 5):
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x / 10^(2 * -idx + 5)
                                                x = x % w
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x / 10^(2 * -idx + 5)
                                            u = u / 10^(2 * -s + 5)
                                            u = x % w
                                            u = u % 10^(2 * -s + 5)
                                            v = uint32(v) + 1
                                            continue 
                                        w = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if w > -1 / w:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            w = w * w
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / w:
                                            revert with 0, 17
                                        if not w:
                                            revert with 0, 18
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if u / 10^(2 * -s + 5) != x / w:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x / w
                                                x = x % 1
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x / w
                                            u = u / 10^(2 * -s + 5)
                                            u = x % 1
                                            u = u % 10^(2 * -s + 5)
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if u / 10^(2 * -s + 5) != x / w:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                w = x / w
                                                x = x % 10^(2 * -idx + 5)
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = x / w
                                            u = u / 10^(2 * -s + 5)
                                            u = x % 10^(2 * -idx + 5)
                                            u = u % 10^(2 * -s + 5)
                                            v = uint32(v) + 1
                                            continue 
                                        y = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if y > -1 / y:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            y = y * y
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / y:
                                            revert with 0, 17
                                        if not y:
                                            revert with 0, 18
                                        if u / 10^(2 * -s + 5) != x / w:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            w = x / w
                                            x = x % y
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = x / w
                                        u = u / 10^(2 * -s + 5)
                                        u = x % y
                                        u = u % 10^(2 * -s + 5)
                                        v = uint32(v) + 1
                                        continue 
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    s = s + 1
                                    t = w
                                    u = u / 10^(2 * -s + 5)
                                    u = x
                                    u = u % 10^(2 * -s + 5)
                                    v = v
                                    continue 
                                w = 10
                                idx = 2 * -s + 5
                                while idx > 1:
                                    if w > -1 / w:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    w = w * w
                                    idx = uint255(idx) * 0.5
                                    continue 
                                if 1 > -1 / w:
                                    revert with 0, 17
                                if not w:
                                    revert with 0, 18
                                idx = 0
                                x = t
                                y = var49006
                                while idx < 6:
                                    if 5 < idx:
                                        revert with 0, 17
                                    if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not 2 * -idx + 5:
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if u / 10^(2 * -s + 5) != y:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y
                                                y = y % 1
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y
                                            u = u / 10^(2 * -s + 5)
                                            u = y % 1
                                            u = u % w
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if u / 10^(2 * -s + 5) != y:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y
                                                y = y % 10^(2 * -idx + 5)
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y
                                            u = u / 10^(2 * -s + 5)
                                            u = y % 10^(2 * -idx + 5)
                                            u = u % w
                                            v = uint32(v) + 1
                                            continue 
                                        x = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if x > -1 / x:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            x = x * x
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / x:
                                            revert with 0, 17
                                        if not x:
                                            revert with 0, 18
                                        if u / 10^(2 * -s + 5) != y:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y
                                            y = y % x
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y
                                        u = u / 10^(2 * -s + 5)
                                        u = y % x
                                        u = u % w
                                        v = uint32(v) + 1
                                        continue 
                                    if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                        if not 10^(2 * -idx + 5):
                                            revert with 0, 18
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if u / 10^(2 * -s + 5) != y / 10^(2 * -idx + 5):
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y / 10^(2 * -idx + 5)
                                                y = y % 1
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y / 10^(2 * -idx + 5)
                                            u = u / 10^(2 * -s + 5)
                                            u = y % 1
                                            u = u % w
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if u / 10^(2 * -s + 5) != y / 10^(2 * -idx + 5):
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y / 10^(2 * -idx + 5)
                                                y = y % 10^(2 * -idx + 5)
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y / 10^(2 * -idx + 5)
                                            u = u / 10^(2 * -s + 5)
                                            u = y % 10^(2 * -idx + 5)
                                            u = u % w
                                            v = uint32(v) + 1
                                            continue 
                                        x = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if x > -1 / x:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            x = x * x
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / x:
                                            revert with 0, 17
                                        if not x:
                                            revert with 0, 18
                                        if u / 10^(2 * -s + 5) != y / 10^(2 * -idx + 5):
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y / 10^(2 * -idx + 5)
                                            y = y % x
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y / 10^(2 * -idx + 5)
                                        u = u / 10^(2 * -s + 5)
                                        u = y % x
                                        u = u % w
                                        v = uint32(v) + 1
                                        continue 
                                    x = 10
                                    t = 2 * -idx + 5
                                    while t > 1:
                                        if x > -1 / x:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        x = x * x
                                        t = uint255(t) * 0.5
                                        continue 
                                    if 1 > -1 / x:
                                        revert with 0, 17
                                    if not x:
                                        revert with 0, 18
                                    if 5 < idx:
                                        revert with 0, 17
                                    if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not 2 * -idx + 5:
                                        if u / 10^(2 * -s + 5) != y / x:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y / x
                                            y = y % 1
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y / x
                                        u = u / 10^(2 * -s + 5)
                                        u = y % 1
                                        u = u % w
                                        v = uint32(v) + 1
                                        continue 
                                    if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                        if not 10^(2 * -idx + 5):
                                            revert with 0, 18
                                        if u / 10^(2 * -s + 5) != y / x:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y / x
                                            y = y % 10^(2 * -idx + 5)
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y / x
                                        u = u / 10^(2 * -s + 5)
                                        u = y % 10^(2 * -idx + 5)
                                        u = u % w
                                        v = uint32(v) + 1
                                        continue 
                                    z = 10
                                    t = 2 * -idx + 5
                                    while t > 1:
                                        if z > -1 / z:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        z = z * z
                                        t = uint255(t) * 0.5
                                        continue 
                                    if 1 > -1 / z:
                                        revert with 0, 17
                                    if not z:
                                        revert with 0, 18
                                    if u / 10^(2 * -s + 5) != y / x:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        idx = idx + 1
                                        x = y / x
                                        y = y % z
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    s = s + 1
                                    t = y / x
                                    u = u / 10^(2 * -s + 5)
                                    u = y % z
                                    u = u % w
                                    v = uint32(v) + 1
                                    continue 
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = viewCurrentLotteryId
                                mem[32] = 20
                                s = s + 1
                                t = x
                                u = u / 10^(2 * -s + 5)
                                u = y
                                u = u % w
                                v = v
                                continue 
                            w = 10
                            idx = 2 * -s + 5
                            while idx > 1:
                                if w > -1 / w:
                                    revert with 0, 17
                                mem[0] = viewCurrentLotteryId
                                mem[32] = 20
                                w = w * w
                                idx = uint255(idx) * 0.5
                                continue 
                            if 1 > -1 / w:
                                revert with 0, 17
                            if not w:
                                revert with 0, 18
                            if 5 < s:
                                revert with 0, 17
                            if -s + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if not 2 * -s + 5:
                                idx = 0
                                x = t
                                y = var49006
                                while idx < 6:
                                    if 5 < idx:
                                        revert with 0, 17
                                    if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not 2 * -idx + 5:
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if u / w != y:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y
                                                y = y % 1
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y
                                            u = u / w
                                            u = y % 1
                                            u = u % 1
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if u / w != y:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y
                                                y = y % 10^(2 * -idx + 5)
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y
                                            u = u / w
                                            u = y % 10^(2 * -idx + 5)
                                            u = u % 1
                                            v = uint32(v) + 1
                                            continue 
                                        x = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if x > -1 / x:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            x = x * x
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / x:
                                            revert with 0, 17
                                        if not x:
                                            revert with 0, 18
                                        if u / w != y:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y
                                            y = y % x
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y
                                        u = u / w
                                        u = y % x
                                        u = u % 1
                                        v = uint32(v) + 1
                                        continue 
                                    if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                        if not 10^(2 * -idx + 5):
                                            revert with 0, 18
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if u / w != y / 10^(2 * -idx + 5):
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y / 10^(2 * -idx + 5)
                                                y = y % 1
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y / 10^(2 * -idx + 5)
                                            u = u / w
                                            u = y % 1
                                            u = u % 1
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if u / w != y / 10^(2 * -idx + 5):
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y / 10^(2 * -idx + 5)
                                                y = y % 10^(2 * -idx + 5)
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y / 10^(2 * -idx + 5)
                                            u = u / w
                                            u = y % 10^(2 * -idx + 5)
                                            u = u % 1
                                            v = uint32(v) + 1
                                            continue 
                                        x = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if x > -1 / x:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            x = x * x
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / x:
                                            revert with 0, 17
                                        if not x:
                                            revert with 0, 18
                                        if u / w != y / 10^(2 * -idx + 5):
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y / 10^(2 * -idx + 5)
                                            y = y % x
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y / 10^(2 * -idx + 5)
                                        u = u / w
                                        u = y % x
                                        u = u % 1
                                        v = uint32(v) + 1
                                        continue 
                                    x = 10
                                    t = 2 * -idx + 5
                                    while t > 1:
                                        if x > -1 / x:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        x = x * x
                                        t = uint255(t) * 0.5
                                        continue 
                                    if 1 > -1 / x:
                                        revert with 0, 17
                                    if not x:
                                        revert with 0, 18
                                    if 5 < idx:
                                        revert with 0, 17
                                    if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not 2 * -idx + 5:
                                        if u / w != y / x:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y / x
                                            y = y % 1
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y / x
                                        u = u / w
                                        u = y % 1
                                        u = u % 1
                                        v = uint32(v) + 1
                                        continue 
                                    if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                        if not 10^(2 * -idx + 5):
                                            revert with 0, 18
                                        if u / w != y / x:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y / x
                                            y = y % 10^(2 * -idx + 5)
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y / x
                                        u = u / w
                                        u = y % 10^(2 * -idx + 5)
                                        u = u % 1
                                        v = uint32(v) + 1
                                        continue 
                                    z = 10
                                    t = 2 * -idx + 5
                                    while t > 1:
                                        if z > -1 / z:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        z = z * z
                                        t = uint255(t) * 0.5
                                        continue 
                                    if 1 > -1 / z:
                                        revert with 0, 17
                                    if not z:
                                        revert with 0, 18
                                    if u / w != y / x:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        idx = idx + 1
                                        x = y / x
                                        y = y % z
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    s = s + 1
                                    t = y / x
                                    u = u / w
                                    u = y % z
                                    u = u % 1
                                    v = uint32(v) + 1
                                    continue 
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = viewCurrentLotteryId
                                mem[32] = 20
                                s = s + 1
                                t = x
                                u = u / w
                                u = y
                                u = u % 1
                                v = v
                                continue 
                            if bool(bool(2 * -s + 5 < 78)) or bool(bool(2 * -s + 5 < 32)):
                                if not 10^(2 * -s + 5):
                                    revert with 0, 18
                                idx = 0
                                x = t
                                y = var49006
                                while idx < 6:
                                    if 5 < idx:
                                        revert with 0, 17
                                    if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not 2 * -idx + 5:
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if u / w != y:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y
                                                y = y % 1
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y
                                            u = u / w
                                            u = y % 1
                                            u = u % 10^(2 * -s + 5)
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if u / w != y:
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y
                                                y = y % 10^(2 * -idx + 5)
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y
                                            u = u / w
                                            u = y % 10^(2 * -idx + 5)
                                            u = u % 10^(2 * -s + 5)
                                            v = uint32(v) + 1
                                            continue 
                                        x = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if x > -1 / x:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            x = x * x
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / x:
                                            revert with 0, 17
                                        if not x:
                                            revert with 0, 18
                                        if u / w != y:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y
                                            y = y % x
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y
                                        u = u / w
                                        u = y % x
                                        u = u % 10^(2 * -s + 5)
                                        v = uint32(v) + 1
                                        continue 
                                    if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                        if not 10^(2 * -idx + 5):
                                            revert with 0, 18
                                        if 5 < idx:
                                            revert with 0, 17
                                        if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not 2 * -idx + 5:
                                            if u / w != y / 10^(2 * -idx + 5):
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y / 10^(2 * -idx + 5)
                                                y = y % 1
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y / 10^(2 * -idx + 5)
                                            u = u / w
                                            u = y % 1
                                            u = u % 10^(2 * -s + 5)
                                            v = uint32(v) + 1
                                            continue 
                                        if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                            if not 10^(2 * -idx + 5):
                                                revert with 0, 18
                                            if u / w != y / 10^(2 * -idx + 5):
                                                if idx == -1:
                                                    revert with 0, 17
                                                mem[0] = viewCurrentLotteryId
                                                mem[32] = 20
                                                idx = idx + 1
                                                x = y / 10^(2 * -idx + 5)
                                                y = y % 10^(2 * -idx + 5)
                                                continue 
                                            if uint32(v) == test266151307():
                                                revert with 0, 17
                                            if s == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            s = s + 1
                                            t = y / 10^(2 * -idx + 5)
                                            u = u / w
                                            u = y % 10^(2 * -idx + 5)
                                            u = u % 10^(2 * -s + 5)
                                            v = uint32(v) + 1
                                            continue 
                                        x = 10
                                        t = 2 * -idx + 5
                                        while t > 1:
                                            if x > -1 / x:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            x = x * x
                                            t = uint255(t) * 0.5
                                            continue 
                                        if 1 > -1 / x:
                                            revert with 0, 17
                                        if not x:
                                            revert with 0, 18
                                        if u / w != y / 10^(2 * -idx + 5):
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y / 10^(2 * -idx + 5)
                                            y = y % x
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y / 10^(2 * -idx + 5)
                                        u = u / w
                                        u = y % x
                                        u = u % 10^(2 * -s + 5)
                                        v = uint32(v) + 1
                                        continue 
                                    x = 10
                                    t = 2 * -idx + 5
                                    while t > 1:
                                        if x > -1 / x:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        x = x * x
                                        t = uint255(t) * 0.5
                                        continue 
                                    if 1 > -1 / x:
                                        revert with 0, 17
                                    if not x:
                                        revert with 0, 18
                                    if 5 < idx:
                                        revert with 0, 17
                                    if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not 2 * -idx + 5:
                                        if u / w != y / x:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y / x
                                            y = y % 1
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y / x
                                        u = u / w
                                        u = y % 1
                                        u = u % 10^(2 * -s + 5)
                                        v = uint32(v) + 1
                                        continue 
                                    if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                        if not 10^(2 * -idx + 5):
                                            revert with 0, 18
                                        if u / w != y / x:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            x = y / x
                                            y = y % 10^(2 * -idx + 5)
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = y / x
                                        u = u / w
                                        u = y % 10^(2 * -idx + 5)
                                        u = u % 10^(2 * -s + 5)
                                        v = uint32(v) + 1
                                        continue 
                                    z = 10
                                    t = 2 * -idx + 5
                                    while t > 1:
                                        if z > -1 / z:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        z = z * z
                                        t = uint255(t) * 0.5
                                        continue 
                                    if 1 > -1 / z:
                                        revert with 0, 17
                                    if not z:
                                        revert with 0, 18
                                    if u / w != y / x:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        idx = idx + 1
                                        x = y / x
                                        y = y % z
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    s = s + 1
                                    t = y / x
                                    u = u / w
                                    u = y % z
                                    u = u % 10^(2 * -s + 5)
                                    v = uint32(v) + 1
                                    continue 
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = viewCurrentLotteryId
                                mem[32] = 20
                                s = s + 1
                                t = x
                                u = u / w
                                u = y
                                u = u % 10^(2 * -s + 5)
                                v = v
                                continue 
                            x = 10
                            idx = 2 * -s + 5
                            while idx > 1:
                                if x > -1 / x:
                                    revert with 0, 17
                                mem[0] = viewCurrentLotteryId
                                mem[32] = 20
                                x = x * x
                                idx = uint255(idx) * 0.5
                                continue 
                            if 1 > -1 / x:
                                revert with 0, 17
                            if not x:
                                revert with 0, 18
                            idx = 0
                            y = t
                            z = var49006
                            while idx < 6:
                                if 5 < idx:
                                    revert with 0, 17
                                if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not 2 * -idx + 5:
                                    if 5 < idx:
                                        revert with 0, 17
                                    if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not 2 * -idx + 5:
                                        if u / w != z:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            y = z
                                            z = z % 1
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = z
                                        u = u / w
                                        u = z % 1
                                        u = u % x
                                        v = uint32(v) + 1
                                        continue 
                                    if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                        if not 10^(2 * -idx + 5):
                                            revert with 0, 18
                                        if u / w != z:
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            y = z
                                            z = z % 10^(2 * -idx + 5)
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = z
                                        u = u / w
                                        u = z % 10^(2 * -idx + 5)
                                        u = u % x
                                        v = uint32(v) + 1
                                        continue 
                                    y = 10
                                    t = 2 * -idx + 5
                                    while t > 1:
                                        if y > -1 / y:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        y = y * y
                                        t = uint255(t) * 0.5
                                        continue 
                                    if 1 > -1 / y:
                                        revert with 0, 17
                                    if not y:
                                        revert with 0, 18
                                    if u / w != z:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        idx = idx + 1
                                        y = z
                                        z = z % y
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    s = s + 1
                                    t = z
                                    u = u / w
                                    u = z % y
                                    u = u % x
                                    v = uint32(v) + 1
                                    continue 
                                if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                    if not 10^(2 * -idx + 5):
                                        revert with 0, 18
                                    if 5 < idx:
                                        revert with 0, 17
                                    if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not 2 * -idx + 5:
                                        if u / w != z / 10^(2 * -idx + 5):
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            y = z / 10^(2 * -idx + 5)
                                            z = z % 1
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = z / 10^(2 * -idx + 5)
                                        u = u / w
                                        u = z % 1
                                        u = u % x
                                        v = uint32(v) + 1
                                        continue 
                                    if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                        if not 10^(2 * -idx + 5):
                                            revert with 0, 18
                                        if u / w != z / 10^(2 * -idx + 5):
                                            if idx == -1:
                                                revert with 0, 17
                                            mem[0] = viewCurrentLotteryId
                                            mem[32] = 20
                                            idx = idx + 1
                                            y = z / 10^(2 * -idx + 5)
                                            z = z % 10^(2 * -idx + 5)
                                            continue 
                                        if uint32(v) == test266151307():
                                            revert with 0, 17
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        s = s + 1
                                        t = z / 10^(2 * -idx + 5)
                                        u = u / w
                                        u = z % 10^(2 * -idx + 5)
                                        u = u % x
                                        v = uint32(v) + 1
                                        continue 
                                    y = 10
                                    t = 2 * -idx + 5
                                    while t > 1:
                                        if y > -1 / y:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        y = y * y
                                        t = uint255(t) * 0.5
                                        continue 
                                    if 1 > -1 / y:
                                        revert with 0, 17
                                    if not y:
                                        revert with 0, 18
                                    if u / w != z / 10^(2 * -idx + 5):
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        idx = idx + 1
                                        y = z / 10^(2 * -idx + 5)
                                        z = z % y
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    s = s + 1
                                    t = z / 10^(2 * -idx + 5)
                                    u = u / w
                                    u = z % y
                                    u = u % x
                                    v = uint32(v) + 1
                                    continue 
                                y = 10
                                t = 2 * -idx + 5
                                while t > 1:
                                    if y > -1 / y:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    y = y * y
                                    t = uint255(t) * 0.5
                                    continue 
                                if 1 > -1 / y:
                                    revert with 0, 17
                                if not y:
                                    revert with 0, 18
                                if 5 < idx:
                                    revert with 0, 17
                                if -idx + 5 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not 2 * -idx + 5:
                                    if u / w != z / y:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        idx = idx + 1
                                        y = z / y
                                        z = z % 1
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    s = s + 1
                                    t = z / y
                                    u = u / w
                                    u = z % 1
                                    u = u % x
                                    v = uint32(v) + 1
                                    continue 
                                if bool(bool(2 * -idx + 5 < 78)) or bool(bool(2 * -idx + 5 < 32)):
                                    if not 10^(2 * -idx + 5):
                                        revert with 0, 18
                                    if u / w != z / y:
                                        if idx == -1:
                                            revert with 0, 17
                                        mem[0] = viewCurrentLotteryId
                                        mem[32] = 20
                                        idx = idx + 1
                                        y = z / y
                                        z = z % 10^(2 * -idx + 5)
                                        continue 
                                    if uint32(v) == test266151307():
                                        revert with 0, 17
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    s = s + 1
                                    t = z / y
                                    u = u / w
                                    u = z % 10^(2 * -idx + 5)
                                    u = u % x
                                    v = uint32(v) + 1
                                    continue 
                                a = 10
                                t = 2 * -idx + 5
                                while t > 1:
                                    if a > -1 / a:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    a = a * a
                                    t = uint255(t) * 0.5
                                    continue 
                                if 1 > -1 / a:
                                    revert with 0, 17
                                if not a:
                                    revert with 0, 18
                                if u / w != z / y:
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = viewCurrentLotteryId
                                    mem[32] = 20
                                    idx = idx + 1
                                    y = z / y
                                    z = z % a
                                    continue 
                                if uint32(v) == test266151307():
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                mem[0] = viewCurrentLotteryId
                                mem[32] = 20
                                s = s + 1
                                t = z / y
                                u = u / w
                                u = z % a
                                u = u % x
                                v = uint32(v) + 1
                                continue 
                            if s == -1:
                                revert with 0, 17
                            mem[0] = viewCurrentLotteryId
                            mem[32] = 20
                            s = s + 1
                            t = y
                            u = u / w
                            u = z
                            u = u % x
                            v = v
                            continue 
                        if not uint32(v):
                            if uint32(v) >= 6:
                                revert with 0, 50
                            if stor20[stor5][uint32(v)].field_4608 == -1:
                                revert with 0, 17
                            stor20[stor5][uint32(v)].field_4608++
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = viewCurrentLotteryId
                            mem[32] = 20
                            idx = idx + 1
                            s = stor21[idx].field_0
                            s = uint32(v)
                            continue 
                        if not uint32(v):
                            revert with 0, 17
                        if uint32(uint32(v) - 1) >= 6:
                            revert with 0, 50
                        if stor20[stor5][uint32(uint32(v) - 1)].field_4608 == -1:
                            revert with 0, 17
                        stor20[stor5][uint32(uint32(v) - 1)].field_4608++
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = viewCurrentLotteryId
                        mem[32] = 20
                        idx = idx + 1
                        s = stor21[idx].field_0
                        s = uint32(uint32(v) - 1)
                        continue 
                    idx = 0
                    while uint32(idx) < 6:
                        if stor20[stor5][uint32(idx)].field_4608:
                            mem[0] = viewCurrentLotteryId
                            mem[32] = 20
                            if uint32(idx) >= 6:
                                revert with 0, 50
                            if stor20[stor5][uint32(idx)].field_1280:
                                if uint32(idx) >= 6:
                                    revert with 0, 50
                                if stor20[stor5][uint32(idx)].field_1280 and (10000 * stor20[stor5].field_6656) - (stor20[stor5].field_2816 * stor20[stor5].field_6656) / 10000 > -1 / stor20[stor5][uint32(idx)].field_1280:
                                    revert with 0, 17
                                if not stor20[stor5][uint32(idx)].field_4608:
                                    revert with 0, 18
                                mem[0] = viewCurrentLotteryId
                                mem[32] = 20
                                if uint32(idx) >= 6:
                                    revert with 0, 50
                                stor20[stor5][uint32(idx)].field_3072 = stor20[stor5][uint32(idx)].field_1280 * (10000 * stor20[stor5].field_6656) - (stor20[stor5].field_2816 * stor20[stor5].field_6656) / 10000 / stor20[stor5][uint32(idx)].field_4608 / 10000
                        else:
                            if uint32(idx) >= 6:
                                revert with 0, 50
                            stor20[stor5][uint32(idx)].field_3072 = 0
                            if stor20[stor5][uint32(idx)].field_1280 and (10000 * stor20[stor5].field_6656) - (stor20[stor5].field_2816 * stor20[stor5].field_6656) / 10000 > -1 / stor20[stor5][uint32(idx)].field_1280:
                                revert with 0, 17
                            if stor20[stor5][uint32(idx)].field_1280 * (10000 * stor20[stor5].field_6656) - (stor20[stor5].field_2816 * stor20[stor5].field_6656) / 10000 > 0x8bcf64e5ec10ee1d37d7960cd589c31b2b8ddbaea04a462d9a2568fe7f85a:
                                revert with 0, 17
                            if pendingInjectionNextLottery > !(7500 * stor20[stor5][uint32(idx)].field_1280 * (10000 * stor20[stor5].field_6656) - (stor20[stor5].field_2816 * stor20[stor5].field_6656) / 10000 / 100 * 10^6):
                                revert with 0, 17
                            pendingInjectionNextLottery += 7500 * stor20[stor5][uint32(idx)].field_1280 * (10000 * stor20[stor5].field_6656) - (stor20[stor5].field_2816 * stor20[stor5].field_6656) / 10000 / 100 * 10^6
                            mem[0] = viewCurrentLotteryId
                            mem[32] = 20
                            if uint32(idx) >= 6:
                                revert with 0, 50
                            if stor20[stor5][uint32(idx)].field_1280 and (10000 * stor20[stor5].field_6656) - (stor20[stor5].field_2816 * stor20[stor5].field_6656) / 10000 > -1 / stor20[stor5][uint32(idx)].field_1280:
                                revert with 0, 17
                            if stor20[stor5][uint32(idx)].field_1280 * (10000 * stor20[stor5].field_6656) - (stor20[stor5].field_2816 * stor20[stor5].field_6656) / 10000 > 0x1a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e90f:
                                revert with 0, 17
                            if sub_7b8cbb86 > !(2500 * stor20[stor5][uint32(idx)].field_1280 * (10000 * stor20[stor5].field_6656) - (stor20[stor5].field_2816 * stor20[stor5].field_6656) / 10000 / 100 * 10^6):
                                revert with 0, 17
                            sub_7b8cbb86 += 2500 * stor20[stor5][uint32(idx)].field_1280 * (10000 * stor20[stor5].field_6656) - (stor20[stor5].field_2816 * stor20[stor5].field_6656) / 10000 / 100 * 10^6
                        if uint32(idx) == test266151307():
                            revert with 0, 17
                        idx = uint32(idx) + 1
                        continue 
                    stor20[stor5].field_6912 = var49006
                    uint8(stor20[stor5].field_0) = 3
                    mem[352] = 0
                    emit LotteryNumberDrawn(var49006, 0, viewCurrentLotteryId);
                    stor0 = 1
                    if 300 > !stor20[stor5].field_512:
                        revert with 0, 17
                    if block.timestamp >= stor20[stor5].field_512 + 300:
                        if uint8(stor20[stor5].field_0) > 3:
                            revert with 0, 33
                        if uint8(stor20[stor5].field_0) == 3:
                            if uint8(stor19.field_0):
                                if 168 * 24 * 3600 > !block.timestamp:
                                    revert with 0, 17
                                if block.timestamp + (168 * 24 * 3600) < 1:
                                    revert with 0, 17
                                idx = 320
                                s = 5
                                while 512 > idx + 32:
                                    mem[idx + 32] = stor20[stor5][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if address(operatorAddress) != msg.sender:
                                    revert with 0, 'Not operator'
                                if uint8(stor19.field_8):
                                    revert with 0, 'Current Lottery paused'
                                if viewCurrentLotteryId:
                                    if uint8(stor20[stor5].field_0) > 3:
                                        revert with 0, 33
                                    if uint8(stor20[stor5].field_0) != 3:
                                        revert with 0, 'Not time to start lottery'
                                if block.timestamp + 604799 < block.timestamp:
                                    revert with 0, 17
                                if block.timestamp + 604799 < block.timestamp:
                                    revert with 0, 17
                                revert with 0, 'Lottery length outside of range'
                            if 24 * 3600 > !block.timestamp:
                                revert with 0, 17
                            if block.timestamp + (24 * 3600) < 1:
                                revert with 0, 17
                            mem[320] = stor20[stor5].field_1280
                            idx = 320
                            s = 5
                            while 512 > idx + 32:
                                mem[idx + 32] = stor20[stor5][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if address(operatorAddress) != msg.sender:
                                revert with 0, 'Not operator'
                            if uint8(stor19.field_8):
                                revert with 0, 'Current Lottery paused'
                            if viewCurrentLotteryId:
                                if uint8(stor20[stor5].field_0) > 3:
                                    revert with 0, 33
                                if uint8(stor20[stor5].field_0) != 3:
                                    revert with 0, 'Not time to start lottery'
                            if block.timestamp + 86399 < block.timestamp:
                                revert with 0, 17
                            if block.timestamp + 86399 < block.timestamp:
                                revert with 0, 17
                            if sub_60f3c325 < sub_a5b26ec2:
                                revert with 0, 'Outside of limits'
                            if sub_60f3c325 > sub_11eae2c8:
                                revert with 0, 'Outside of limits'
                            if stor20[stor5].field_2816 > 500:
                                revert with 0, 'Treasury fee too high'
                            if stor20[stor5].field_1280 > !mem[352]:
                                revert with 0, 17
                            if stor20[stor5].field_1280 + mem[352] > !mem[384]:
                                revert with 0, 17
                            if stor20[stor5].field_1280 + mem[352] + mem[384] > !mem[416]:
                                revert with 0, 17
                            if stor20[stor5].field_1280 + mem[352] + mem[384] + mem[416] > !mem[448]:
                                revert with 0, 17
                            if stor20[stor5].field_1280 + mem[352] + mem[384] + mem[416] + mem[448] > !mem[480]:
                                revert with 0, 17
                            if stor20[stor5].field_1280 + mem[352] + mem[384] + mem[416] + mem[448] + mem[480] != 10000:
                                revert with 0, 'Rewards must equal 10000'
                            if viewCurrentLotteryId == -1:
                                revert with 0, 17
                            viewCurrentLotteryId++
                            if uint8(stor19.field_0):
                                if pendingInjectionNextLottery < stor17:
                                    if sub_7b8cbb86 > stor18:
                                        if pendingInjectionNextLottery > !stor18:
                                            revert with 0, 17
                                        pendingInjectionNextLottery += stor18
                                        if sub_7b8cbb86 < stor18:
                                            revert with 0, 17
                                        sub_7b8cbb86 -= stor18
                            else:
                                if pendingInjectionNextLottery < stor15:
                                    if sub_7b8cbb86 > stor16:
                                        if pendingInjectionNextLottery > !stor16:
                                            revert with 0, 17
                                        pendingInjectionNextLottery += stor16
                                        if sub_7b8cbb86 < stor16:
                                            revert with 0, 17
                                        sub_7b8cbb86 -= stor16
                            mem[512] = 1
                            mem[960] = 0
                            mem[992] = 0
                            mem[1024] = 0
                            mem[1056] = 0
                            mem[1088] = 0
                            mem[1120] = 0
                            mem[1152] = 0
                            mem[1184] = 0
                            mem[1216] = 0
                            mem[1248] = 0
                            mem[1280] = 0
                            mem[1312] = 0
                            uint8(stor20[stor5].field_0) = 1
                            stor20[stor5].field_256 = block.timestamp
                            stor20[stor5].field_512 = block.timestamp + 86399
                            stor20[stor5].field_768 = sub_60f3c325
                            s = 5
                            idx = 320
                            while 512 > idx:
                                stor20[stor5][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 11
                            while 11 > idx:
                                stor20[stor5][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            s = 12
                            idx = 960
                            while 1152 > idx:
                                stor20[stor5][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 18
                            while 18 > idx:
                                stor20[stor5][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            s = 18
                            idx = 1152
                            while 1344 > idx:
                                stor20[stor5][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 24
                            while 24 > idx:
                                stor20[stor5][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            stor20[stor5].field_6144 = currentTicketId
                            stor20[stor5].field_6400 = currentTicketId
                            stor20[stor5].field_6656 = pendingInjectionNextLottery
                            stor20[stor5].field_6912 = 0
                            stor20[stor5].field_7168 = 0
                            emit LotteryOpen(block.timestamp, block.timestamp + 86399, sub_60f3c325, currentTicketId, pendingInjectionNextLottery, viewCurrentLotteryId);
                            pendingInjectionNextLottery = 0
}



}
