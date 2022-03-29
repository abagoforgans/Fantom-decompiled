contract main {




// =====================  Runtime code  =====================


#
#  - breed(uint256 arg1, uint256 arg2)
#  - createGen0BudBatch(uint256[] arg1, uint256[] arg2, uint256[] arg3, address arg4)
#
const GEN0_GENERATION_FACTOR = 10

const MAX_GEN0_THC = 600

const MAX_GEN0_CBD = 800


address owner;
uint256 autoGrowingFee;
uint256 baseBreedingFee;
address rewardAddress;
address devAddress;
address artistAddress;
address stakingAddress;
uint256 devBreedingPercentage;
uint256 artistBreedingPercentage;
uint256 secondsPerBlock;
uint256 newBornBreedingCoolDown;
uint256 seedingDuration;
uint256 breedingMultiplierCoolDown;
uint16 maxBreedCostMultiplier;
uint256 generationBreedingFeeMultiplier;
address geneScienceAddress;
array of struct stor16;
array of struct stor17;
mapping of uint256 stor18;
mapping of uint8 stor19;
mapping of uint256 balanceOf;
mapping of uint8 stor21;
array of uint256 uri;
uint256 stor23;
uint8 paused;
address operatorAddress; offset 8
array of struct stor12396694973890998440467380340983585058878106250672390494374587083972727727731;
array of struct stor12396694973890998440467380340983585058878106250672390494374587083972727727732;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x30455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor19[Mask(32, 224, arg1)])
}

function uri(uint256 arg1) {
    return uri[0 len uri.length]
}

function reward() {
    return rewardAddress
}

function devAddress() {
    return devAddress
}

function getTotalBud() {
    return stor16.length
}

function devBreedingPercentage() {
    return devBreedingPercentage
}

function operator() {
    return operatorAddress
}

function seedingDuration() {
    return seedingDuration
}

function paused() {
    return bool(paused)
}

function baseBreedingFee() {
    return baseBreedingFee
}

function secondsPerBlock() {
    return secondsPerBlock
}

function artistBreedingPercentage() {
    return artistBreedingPercentage
}

function owner() {
    return owner
}

function maxBreedCostMultiplier() {
    return maxBreedCostMultiplier
}

function generationBreedingFeeMultiplier() {
    return generationBreedingFeeMultiplier
}

function autoGrowingFee() {
    return autoGrowingFee
}

function newBornBreedingCoolDown() {
    return newBornBreedingCoolDown
}

function stakingAddress() {
    return stakingAddress
}

function artistAddress() {
    return artistAddress
}

function breedingMultiplierCoolDown() {
    return breedingMultiplierCoolDown
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor21[address(arg1)][address(arg2)])
}

function geneScience() {
    return geneScienceAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAutoGrowFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    autoGrowingFee = arg1
}

function setRewardContract(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    rewardAddress = arg1
}

function setStakingAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stakingAddress = arg1
}

function setSecondsPerBlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    secondsPerBlock = arg1
}

function setBaseBreedingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    baseBreedingFee = arg1
}

function setSeedingDuration(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    seedingDuration = arg1
}

function setMaxBreedCostMultiplier(uint16 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    maxBreedCostMultiplier = arg1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function setNewBornBreedingCoolDown(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    newBornBreedingCoolDown = arg1
}

function setBreedingMultiplierCoolDown(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    breedingMultiplierCoolDown = arg1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setGenerationBreedingFeeMultiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    generationBreedingFeeMultiplier = arg1
}

function isReadyToGrow(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor16.length
    require stor16[arg1].field_688 <= 1
    if stor16[arg1].field_688:
        return not stor16[arg1].field_688
    return stor16[arg1].field_560 <= uint64(block.number)
}

function withdrawBalance(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    uri[] = Array(len=arg1.length, data=arg1[all])
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6843727970746f427564733a2063616c6c6572206973206e6f7420746865206465,
                    mem[197 len 31]
    devAddress = arg1
}

function setArtistAddress(address arg1) {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6843727970746f427564733a2063616c6c6572206973206e6f7420746865206465,
                    mem[197 len 31]
    artistAddress = arg1
}

function isOwnerOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x30455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    return (1 == balanceOf[arg2][address(arg1)])
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x74455243313135353a2073657474696e6720617070726f76616c2073746174757320666f722073656c,
                    mem[205 len 23]
    stor21[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setDevBreedingPercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if devBreedingPercentage > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x7243727970746f427564733a20696e76616c6964206272656564696e672070657263656e74616765202d206d757374206265206265747765656e203020616e64203130,
                    mem[231 len 29]
    devBreedingPercentage = arg1
}

function hasPermissionToBreedAsSire(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x30455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    if 1 == balanceOf[arg2][address(arg1)]:
        return 1
    if not stor18[arg2]:
        revert with 0, 'EnumerableMap: nonexistent key'
    require stor18[arg2] - 1 < stor17.length
    return (stor17[stor18[arg2] - 1].field_256 == arg1)
}

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6843727970746f427564733a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[202 len 26]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6443727970746f427564733a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[208 len 20]
    operatorAddress = arg1
}

function setGeneScience(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x54c15b82 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7343727970746f427564733a20696e76616c69642067656e6520736369656e636520636f6e74726163,
                    mem[205 len 23]
    geneScienceAddress = arg1
}

function grandPermissionToBreed(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x30455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    if balanceOf[arg2][address(msg.sender)] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7343727970746f427564733a20596f7520646f206e6f74206f776e2073697265206275,
                    mem[199 len 29]
    if stor18[arg2]:
        require stor18[arg2] - 1 < stor17.length
        stor17[stor18[arg2] - 1].field_256 = arg1
        stor17[stor18[arg2] - 1].field_416 = 0
    else:
        stor17.length++
        stor17[stor17.length].field_0 = arg2
        stor17[stor17.length].field_256 = arg1
        stor17[stor17.length].field_416 = 0
        stor18[arg2] = stor17.length
    emit GrantedToBreed(arg1, arg2);
}

function clearPermissionToBreed(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x30455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    if balanceOf[arg1][address(msg.sender)] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7243727970746f427564733a20596f7520646f206e6f74206f776e2074686973206275,
                    mem[199 len 29]
    if stor18[arg1]:
        require stor17.length - 1 < stor17.length
        require stor18[arg1] - 1 < stor17.length
        stor17[stor18[arg1] - 1].field_0 = stor17[stor17.length - 1].field_0
        stor17[stor18[arg1] - 1].field_256 = stor17[stor17.length - 1].field_256
        stor18[stor17[stor17.length - 1].field_0] = stor18[arg1]
        require stor17.length
        stor17[stor17.length - 1].field_0 = 0
        stor17[stor17.length - 1].field_256 = 0
        stor17.length--
        stor18[arg1] = 0
}

function getBud(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor16.length
    if stor16[arg1].field_384 > block.number:
        if stor16[arg1].field_688 <= 1:
            return arg1, 
                   stor16[arg1].field_512,
                   stor16[arg1].field_256,
                   stor16[arg1].field_256,
                   stor16[arg1].field_512,
                   stor16[arg1].field_256,
                   stor16[arg1].field_256,
                   stor16[arg1].field_512,
                   stor16[arg1].field_0,
                   stor16[arg1].field_256,
                   stor16[arg1].field_256,
                   stor16[arg1].field_688
    else:
        if stor16[arg1].field_688 <= 1:
            return arg1, 
                   stor16[arg1].field_512,
                   stor16[arg1].field_256,
                   stor16[arg1].field_256,
                   stor16[arg1].field_512,
                   1,
                   stor16[arg1].field_256,
                   stor16[arg1].field_512,
                   stor16[arg1].field_0,
                   stor16[arg1].field_256,
                   stor16[arg1].field_256,
                   stor16[arg1].field_688
    ('gt', ('field', 688, ('stor', ('array', ('mul', 3, ('param', 'arg1')), ('name', 'stor16', 16)))), 1)
    revert
}

function updateBudThc(address arg1, uint256 arg2, uint32 arg3) {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6843727970746f427564733a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[202 len 26]
    if stor23 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor23 = 2
    if not arg3:
        revert with 0, 'CryptoBuds: invalid thc'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x30455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    if balanceOf[arg2][address(arg1)] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7343727970746f427564733a2062756420646f6573206e6f742062656c6f6e677320746f206f776e65,
                    mem[205 len 23]
    require arg2 < stor16.length
    stor16[arg2].field_256 = arg3
    emit ThcChanged(stor16[arg2].field_256, arg3, arg2);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        staticcall arg1.supportsInterface(bytes4 rg1) with:
                gas gas_remaining wei
               args 0x5a864e1c00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            call arg1.onCryptoBudThcChanged(uint256 rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args arg2, stor16[arg2].field_256, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor23 = 1
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    41,
                    0x66455243313135353a206163636f756e747320616e6420696473206c656e677468206d69736d617463,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 269 len 23]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        43,
                        0x30455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[(64 * arg1.length) + (32 * arg2.length) + 303 len 21]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 20)
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][address(mem[(32 * idx) + 128])]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + (32 * arg2.length) + 192
       len (161 * arg1.length) + 64
}

function grow(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor23 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor23 = 2
    require arg1 < stor16.length
    if not stor16[arg1].field_320:
        revert with 0, 'CryptoBuds: not valid seed'
    require stor16[arg1].field_688 <= 1
    if stor16[arg1].field_688:
        revert with 0, 'CryptoBuds: not a valid seed'
    require stor16[arg1].field_688 <= 1
    if stor16[arg1].field_688:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7443727970746f427564733a20736565642063616e742062652067726f776e207965,
                    mem[198 len 30]
    if stor16[arg1].field_560 >= uint64(block.number):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7443727970746f427564733a20736565642063616e742062652067726f776e207965,
                    mem[198 len 30]
    require stor16[arg1].field_464 < stor16.length
    require stor16[arg1].field_512 < stor16.length
    if 1 > stor16[arg1].field_560:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(geneScienceAddress)
    call geneScienceAddress.0x44b3b11b with:
         gas gas_remaining wei
        args 0, stor16[stor16[arg1].field_464].field_0, stor16[stor16[arg1].field_512].field_0, stor16[arg1].field_512, stor16[arg1].field_560 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    stor16[arg1].field_0 = ext_call.return_data[0]
    stor16[arg1].field_256 = stor16[arg1].field_320
    stor16[arg1].field_688 = 1
    if secondsPerBlock <= 0:
        revert with 0, 'SafeMath: division by zero'
    require secondsPerBlock
    if block.number + (newBornBreedingCoolDown / secondsPerBlock) < newBornBreedingCoolDown / secondsPerBlock:
        revert with 0, 'SafeMath: addition overflow'
    stor16[arg1].field_560 = uint64(block.number + (newBornBreedingCoolDown / secondsPerBlock))
    stor16[arg1].field_624 = uint64(ext_call.return_data[96])
    stor16[arg1].field_688 = 0
    if autoGrowingFee:
        call msg.sender with:
           value autoGrowingFee wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit GrownSingle(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], arg1);
    stor23 = 1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x76455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg5.length) + 233 len 27]
    if arg1 != msg.sender:
        if not stor21[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        41,
                        0x73455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                        mem[ceil32(arg5.length) + 237 len 23]
    mem[ceil32(arg5.length) + 128] = 1
    require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    mem[ceil32(arg5.length) + 160] = arg3
    mem[ceil32(arg5.length) + 192] = 1
    mem[ceil32(arg5.length) + 224] = arg4
    idx = 0
    while idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
        require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
        mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
        mem[32] = 18
        if stor18[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
            require idx < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
            mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
            mem[32] = 18
            if stor18[mem[(32 * idx) + ceil32(arg5.length) + 160]]:
                require stor17.length - 1 < stor17.length
                require stor18[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1 < stor17.length
                stor17[stor18[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1].field_0 = stor17[stor17.length - 1].field_0
                stor17[stor18[mem[(32 * idx) + ceil32(arg5.length) + 160]] - 1].field_256 = stor17[stor17.length - 1].field_256
                stor18[stor17[stor17.length - 1].field_0] = stor18[mem[(32 * idx) + ceil32(arg5.length) + 160]]
                require stor17.length
                stor17[stor17.length - 1].field_0 = 0
                stor17[stor17.length - 1].field_256 = 0
                stor17.length--
                mem[0] = mem[(32 * idx) + ceil32(arg5.length) + 160]
                mem[32] = 18
                stor18[mem[(32 * idx) + ceil32(arg5.length) + 160]] = 0
        idx = idx + 1
        continue 
    if arg4 > balanceOf[arg3][address(arg1)]:
        revert with 0, 
                    32,
                    42,
                    0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                    mem[ceil32(arg5.length) + 330 len 22],
                    mem[ceil32(arg5.length) + 374 len 10]
    balanceOf[arg3][address(arg1)] -= arg4
    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, arg4)
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
}

function createGen0Bud(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2 > 600:
        revert with 0, 'CryptoBuds: invalid thc'
    if arg3 > 800:
        revert with 0, 'CryptoBuds: invalid cbd'
    stor16.length++
    stor16[stor16.length].field_0 = arg1
    stor1B68[stor16.length].field_0 = uint32(arg2)
    stor1B68[stor16.length].field_32 = uint32(arg3)
    stor1B68[stor16.length].field_64 = uint64(block.timestamp)
    stor1B68[stor16.length].field_128 = 0
    stor1B68[stor16.length].field_192 = 1
    stor1B68[stor16.length].field_200 = 0
    stor1B68[stor16.length].field_256 = 0
    stor1B68[stor16.length].field_256 = 0
    stor1B68[stor16.length].field_0 = 0
    stor1B68[stor16.length].field_112 = 10
    stor1B68[stor16.length].field_120 = 0
    stor1B68[stor16.length].field_256 = 0
    stor1B68[stor16.length].field_256 = 0
    stor1B68[stor16.length].field_256 = 0
    stor1B68[stor16.length].field_0 = 0
    stor1B68[stor16.length].field_112 = 10
    stor1B68[stor16.length].field_120 = 0
    stor1B68[stor16.length].field_176 = 1
    stor1B68[stor16.length].field_256 = 0
    stor1B68[stor16.length].field_256 = 0
    stor1B68[stor16.length].field_256 = 0
    if arg4:
        if not arg4:
            revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[997 len 31]
        mem[928] = stor16.length - 1
        mem[960] = 1
        mem[992] = 1
        idx = 0
        while idx < 1:
            require idx < 1
            mem[0] = mem[(32 * idx) + 928]
            mem[32] = 18
            if stor18[mem[(32 * idx) + 928]]:
                require idx < 1
                mem[0] = mem[(32 * idx) + 928]
                mem[32] = 18
                if stor18[mem[(32 * idx) + 928]]:
                    require stor17.length - 1 < stor17.length
                    require stor18[mem[(32 * idx) + 928]] - 1 < stor17.length
                    stor17[stor18[mem[(32 * idx) + 928]] - 1].field_0 = stor17[stor17.length - 1].field_0
                    stor17[stor18[mem[(32 * idx) + 928]] - 1].field_256 = stor17[stor17.length - 1].field_256
                    stor18[stor17[stor17.length - 1].field_0] = stor18[mem[(32 * idx) + 928]]
                    require stor17.length
                    stor17[stor17.length - 1].field_0 = 0
                    stor17[stor17.length - 1].field_256 = 0
                    stor17.length--
                    mem[0] = mem[(32 * idx) + 928]
                    mem[32] = 18
                    stor18[mem[(32 * idx) + 928]] = 0
            idx = idx + 1
            continue 
        if balanceOf[stor16.length - 1][address(arg4)] + 1 < balanceOf[stor16.length - 1][address(arg4)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor16.length - 1][address(arg4)]++
        emit TransferSingle(stor16.length - 1, 1, msg.sender, 0, arg4);
        if ext_code.size(arg4):
            require ext_code.size(arg4)
            call arg4.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, stor16.length - 1, 1, 160, 0
            if not ext_call.success:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            0
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'rERC1155: ERC1155Receiver rejected token'
    else:
        if not owner:
            revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[997 len 31]
        mem[928] = stor16.length - 1
        mem[960] = 1
        mem[992] = 1
        idx = 0
        while idx < 1:
            require idx < 1
            mem[0] = mem[(32 * idx) + 928]
            mem[32] = 18
            if stor18[mem[(32 * idx) + 928]]:
                require idx < 1
                mem[0] = mem[(32 * idx) + 928]
                mem[32] = 18
                if stor18[mem[(32 * idx) + 928]]:
                    require stor17.length - 1 < stor17.length
                    require stor18[mem[(32 * idx) + 928]] - 1 < stor17.length
                    stor17[stor18[mem[(32 * idx) + 928]] - 1].field_0 = stor17[stor17.length - 1].field_0
                    stor17[stor18[mem[(32 * idx) + 928]] - 1].field_256 = stor17[stor17.length - 1].field_256
                    stor18[stor17[stor17.length - 1].field_0] = stor18[mem[(32 * idx) + 928]]
                    require stor17.length
                    stor17[stor17.length - 1].field_0 = 0
                    stor17[stor17.length - 1].field_256 = 0
                    stor17.length--
                    mem[0] = mem[(32 * idx) + 928]
                    mem[32] = 18
                    stor18[mem[(32 * idx) + 928]] = 0
            idx = idx + 1
            continue 
        if balanceOf[stor16.length - 1][stor0] + 1 < balanceOf[stor16.length - 1][stor0]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor16.length - 1][stor0]++
        emit TransferSingle(stor16.length - 1, 1, msg.sender, 0, owner);
        if ext_code.size(owner):
            require ext_code.size(owner)
            call owner.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, stor16.length - 1, 1, 160, 0
            if not ext_call.success:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            0
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'rERC1155: ERC1155Receiver rejected token'
    emit GrownSingle(arg1, arg2, arg3, stor16.length - 1);
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
    if arg3.length != arg4.length:
        revert with 0, 
                    32,
                    40,
                    0x72455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 300 len 24]
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x76455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 297 len 27]
    if arg1 == msg.sender:
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 18
            if stor18[mem[(32 * idx) + 128]]:
                require idx < arg3.length
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 18
                if stor18[mem[(32 * idx) + 128]]:
                    require stor17.length - 1 < stor17.length
                    require stor18[mem[(32 * idx) + 128]] - 1 < stor17.length
                    stor17[stor18[mem[(32 * idx) + 128]] - 1].field_0 = stor17[stor17.length - 1].field_0
                    stor17[stor18[mem[(32 * idx) + 128]] - 1].field_256 = stor17[stor17.length - 1].field_256
                    stor18[stor17[stor17.length - 1].field_0] = stor18[mem[(32 * idx) + 128]]
                    require stor17.length
                    stor17[stor17.length - 1].field_0 = 0
                    stor17[stor17.length - 1].field_256 = 0
                    stor17.length--
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 18
                    stor18[mem[(32 * idx) + 128]] = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _492 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _499 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _500 = mem[64]
            mem[64] = mem[64] + 96
            mem[_500] = 42
            mem[_500 + 32 len 42] = 0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_492, 20)
            if _499 <= balanceOf[_492][address(arg1)]:
                balanceOf[_492][address(arg1)] -= _499
                if _499 + balanceOf[_492][arg2] < balanceOf[_492][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_492, 20)
                balanceOf[_492][address(arg2)] = _499 + balanceOf[_492][arg2]
                idx = idx + 1
                continue 
            _512 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _512 + 68] = mem[idx + _500 + 32]
                idx = idx + 32
                continue 
            mem[_512 + 100] = mem[_512 + 122 len 10]
            revert with memory
              from mem[64]
               len _512 + -mem[64] + 132
        _484 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _486 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _484 + 96] = mem[(32 * arg3.length) + 128]
        _693 = mem[(32 * arg3.length) + 128]
        mem[(32 * _486) + _484 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                           mem[mem[64] len (32 * _693) + (32 * _486) + _484 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        _866 = mem[96]
        mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
        _1015 = mem[(32 * arg3.length) + 128]
        mem[(32 * _866) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        mem[mem[64] + 132] = (32 * _1015) + (32 * _866) + 224
        mem[(32 * _1015) + (32 * _866) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _1159 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[(32 * _1015) + (32 * _866) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
        if not _1159 % 32:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _1015) + (32 * _866) + 224, mem[mem[64] + 164 len _1159 + (32 * _1015) + (32 * _866) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                40,
                                0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                                mem[mem[64] + 108 len 24]
            if return_data.size < 68:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _1324 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _1324 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_1324 + ext_call.return_data[0]]
            _1350 = mem[_1324 + ext_call.return_data[0]]
            if not mem[_1324 + ext_call.return_data[0]]:
                if not mem[_1324 + ext_call.return_data[0]] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_1324 + ext_call.return_data[0]] + 32]
                mem[floor32(mem[_1324 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1324 + ext_call.return_data[0]]) + mem[64] + -(mem[_1324 + ext_call.return_data[0]] % 32) + 100 len mem[_1324 + ext_call.return_data[0]] % 32]
                revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_1350)]
            mem[mem[64] + 68] = mem[_1324 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_1350 - 1)] = mem[_1324 + ext_call.return_data[0] + 64 len floor32(_1350 - 1)]
            if not _1350 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1350 + 32]
            mem[floor32(_1350) + mem[64] + 68] = mem[floor32(_1350) + mem[64] + -(_1350 % 32) + 100 len _1350 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_1350) + 64]
        mem[floor32(_1159) + (32 * _1015) + (32 * _866) + mem[64] + 260] = mem[floor32(_1159) + (32 * _1015) + (32 * _866) + mem[64] + -(_1159 % 32) + 292 len _1159 % 32]
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _1015) + (32 * _866) + 224, mem[mem[64] + 164 len floor32(_1159) + (32 * _1015) + (32 * _866) + 128]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1331 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1331 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1367 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_1331 + ext_call.return_data[0]]
        _1369 = mem[_1331 + ext_call.return_data[0]]
        if not mem[_1331 + ext_call.return_data[0]]:
            if not mem[_1331 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_1331 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_1331 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1331 + ext_call.return_data[0]]) + mem[64] + -(mem[_1331 + ext_call.return_data[0]] % 32) + 100 len mem[_1331 + ext_call.return_data[0]] % 32]
            revert with memory
              from mem[64]
               len floor32(_1369) + _1367 + -mem[64] + 100
        mem[mem[64] + 68] = mem[_1331 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_1369 - 1)] = mem[_1331 + ext_call.return_data[0] + 64 len floor32(_1369 - 1)]
        if not _1369 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _1369 + 32]
        mem[floor32(_1369) + mem[64] + 68] = mem[floor32(_1369) + mem[64] + -(_1369 % 32) + 100 len _1369 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_1369) + 64]
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 21)
    if not stor21[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    50,
                    0x73455243313135353a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 310 len 14]
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 18
        if stor18[mem[(32 * idx) + 128]]:
            require idx < arg3.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 18
            if stor18[mem[(32 * idx) + 128]]:
                require stor17.length - 1 < stor17.length
                require stor18[mem[(32 * idx) + 128]] - 1 < stor17.length
                stor17[stor18[mem[(32 * idx) + 128]] - 1].field_0 = stor17[stor17.length - 1].field_0
                stor17[stor18[mem[(32 * idx) + 128]] - 1].field_256 = stor17[stor17.length - 1].field_256
                stor18[stor17[stor17.length - 1].field_0] = stor18[mem[(32 * idx) + 128]]
                require stor17.length
                stor17[stor17.length - 1].field_0 = 0
                stor17[stor17.length - 1].field_256 = 0
                stor17.length--
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 18
                stor18[mem[(32 * idx) + 128]] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _494 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg3.length) + 128]
        _506 = mem[(32 * idx) + (32 * arg3.length) + 160]
        _507 = mem[64]
        mem[64] = mem[64] + 96
        mem[_507] = 42
        mem[_507 + 32 len 42] = 0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
        mem[32] = sha3(_494, 20)
        if _506 <= balanceOf[_494][address(arg1)]:
            balanceOf[_494][address(arg1)] -= _506
            if _506 + balanceOf[_494][arg2] < balanceOf[_494][arg2]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(_494, 20)
            balanceOf[_494][address(arg2)] = _506 + balanceOf[_494][arg2]
            idx = idx + 1
            continue 
        _517 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 42
        idx = 0
        while idx < 42:
            mem[idx + _517 + 68] = mem[idx + _507 + 32]
            idx = idx + 32
            continue 
        mem[_517 + 100] = mem[_517 + 122 len 10]
        revert with memory
          from mem[64]
           len _517 + -mem[64] + 132
    _488 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _490 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _488 + 96] = mem[(32 * arg3.length) + 128]
    _697 = mem[(32 * arg3.length) + 128]
    mem[(32 * _490) + _488 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                       mem[mem[64] len (32 * _697) + (32 * _490) + _488 + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if not ext_code.size(arg2):
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    _869 = mem[96]
    mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
    _1018 = mem[(32 * arg3.length) + 128]
    mem[(32 * _869) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    mem[mem[64] + 132] = (32 * _1018) + (32 * _869) + 224
    mem[(32 * _1018) + (32 * _869) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    _1162 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[(32 * _1018) + (32 * _869) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
    if not _1162 % 32:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _1018) + (32 * _869) + 224, mem[mem[64] + 164 len _1162 + (32 * _1018) + (32 * _869) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1326 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1326 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1355 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_1326 + ext_call.return_data[0]]
        _1357 = mem[_1326 + ext_call.return_data[0]]
        if not mem[_1326 + ext_call.return_data[0]]:
            if not mem[_1326 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_1326 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_1326 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1326 + ext_call.return_data[0]]) + mem[64] + -(mem[_1326 + ext_call.return_data[0]] % 32) + 100 len mem[_1326 + ext_call.return_data[0]] % 32]
            revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_1357)]
        mem[mem[64] + 68] = mem[_1326 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_1357 - 1)] = mem[_1326 + ext_call.return_data[0] + 64 len floor32(_1357 - 1)]
        if not _1357 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _1357 + 32]
        mem[floor32(_1357) + mem[64] + 68] = mem[floor32(_1357) + mem[64] + -(_1357 % 32) + 100 len _1357 % 32]
        revert with memory
          from mem[64]
           len floor32(_1357) + _1355 + -mem[64] + 100
    mem[floor32(_1162) + (32 * _1018) + (32 * _869) + mem[64] + 260] = mem[floor32(_1162) + (32 * _1018) + (32 * _869) + mem[64] + -(_1162 % 32) + 292 len _1162 % 32]
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), 160, mem[mem[64] + 100], (32 * _1018) + (32 * _869) + 224, mem[mem[64] + 164 len floor32(_1162) + (32 * _1018) + (32 * _869) + 128]
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        40,
                        0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                        mem[mem[64] + 108 len 24]
    if return_data.size < 68:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    _1336 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
    if not _1336 + ext_call.return_data[0]:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_1336 + ext_call.return_data[0]]
    _1379 = mem[_1336 + ext_call.return_data[0]]
    if not mem[_1336 + ext_call.return_data[0]]:
        if not mem[_1336 + ext_call.return_data[0]] % 32:
            revert with 0, 32, mem[mem[64] + 36 len mem[_1336 + ext_call.return_data[0]] + 32]
        mem[floor32(mem[_1336 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1336 + ext_call.return_data[0]]) + mem[64] + -(mem[_1336 + ext_call.return_data[0]] % 32) + 100 len mem[_1336 + ext_call.return_data[0]] % 32]
        revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_1379)]
    mem[mem[64] + 68] = mem[_1336 + ext_call.return_data[0] + 32]
    mem[mem[64] + 100 len floor32(_1379 - 1)] = mem[_1336 + ext_call.return_data[0] + 64 len floor32(_1379 - 1)]
    if not _1379 % 32:
        revert with 0, 32, mem[mem[64] + 36 len _1379 + 32]
    mem[floor32(_1379) + mem[64] + 68] = mem[floor32(_1379) + mem[64] + -(_1379 % 32) + 100 len _1379 % 32]
    revert with 0, 32, mem[mem[64] + 36 len floor32(_1379) + 64]
}

function breedingRewardCost(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < stor16.length
    if not stor16[arg2].field_544:
        if baseBreedingFee < baseBreedingFee:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < stor16.length
        if block.number + 1 <= stor16[arg2].field_384:
            if not stor16[arg1].field_544:
                if baseBreedingFee < baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseBreedingFee:
                    return 0
                if block.number + 1 <= stor16[arg1].field_384:
                    if stor16[arg1].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg1].field_448:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not baseBreedingFee:
                        if stor16[arg1].field_448 * baseBreedingFee < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (stor16[arg1].field_448 * baseBreedingFee)
                    if stor16[arg2].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg2].field_448:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (stor16[arg1].field_448 * baseBreedingFee) + (stor16[arg2].field_448 * baseBreedingFee) < stor16[arg2].field_448 * baseBreedingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor16[arg1].field_448 * baseBreedingFee) + (stor16[arg2].field_448 * baseBreedingFee))
                if baseBreedingFee / baseBreedingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseBreedingFee:
                    if baseBreedingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return baseBreedingFee
                if stor16[arg2].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg2].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if baseBreedingFee + (stor16[arg2].field_448 * baseBreedingFee) < stor16[arg2].field_448 * baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseBreedingFee + (stor16[arg2].field_448 * baseBreedingFee))
            if generationBreedingFeeMultiplier * stor16[arg1].field_544 / stor16[arg1].field_544 != generationBreedingFeeMultiplier:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not generationBreedingFeeMultiplier * stor16[arg1].field_544:
                if baseBreedingFee < baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseBreedingFee:
                    return 0
                if block.number + 1 <= stor16[arg1].field_384:
                    if stor16[arg1].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg1].field_448:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not baseBreedingFee:
                        if stor16[arg1].field_448 * baseBreedingFee < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (stor16[arg1].field_448 * baseBreedingFee)
                    if stor16[arg2].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg2].field_448:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (stor16[arg1].field_448 * baseBreedingFee) + (stor16[arg2].field_448 * baseBreedingFee) < stor16[arg2].field_448 * baseBreedingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor16[arg1].field_448 * baseBreedingFee) + (stor16[arg2].field_448 * baseBreedingFee))
                if baseBreedingFee / baseBreedingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseBreedingFee:
                    if baseBreedingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return baseBreedingFee
                if stor16[arg2].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg2].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if baseBreedingFee + (stor16[arg2].field_448 * baseBreedingFee) < stor16[arg2].field_448 * baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseBreedingFee + (stor16[arg2].field_448 * baseBreedingFee))
            if 10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 / generationBreedingFeeMultiplier * stor16[arg1].field_544 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee:
                if not baseBreedingFee:
                    return 0
                if stor16[arg2].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg2].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if stor16[arg2].field_448 * baseBreedingFee < stor16[arg2].field_448 * baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return (stor16[arg2].field_448 * baseBreedingFee)
            if block.number + 1 <= stor16[arg1].field_384:
                if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee != stor16[arg1].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseBreedingFee:
                    if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448))
                if stor16[arg2].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg2].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) + (stor16[arg2].field_448 * baseBreedingFee) < stor16[arg2].field_448 * baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) + (stor16[arg2].field_448 * baseBreedingFee))
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseBreedingFee:
                if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee)
            if stor16[arg2].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg2].field_448:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee + (stor16[arg2].field_448 * baseBreedingFee) < stor16[arg2].field_448 * baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee + (stor16[arg2].field_448 * baseBreedingFee))
        if not stor16[arg1].field_544:
            if baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not baseBreedingFee:
                return 0
            if block.number + 1 <= stor16[arg1].field_384:
                if stor16[arg1].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg1].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseBreedingFee:
                    if stor16[arg1].field_448 * baseBreedingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (stor16[arg1].field_448 * baseBreedingFee)
                if baseBreedingFee / baseBreedingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (stor16[arg1].field_448 * baseBreedingFee) + baseBreedingFee < baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor16[arg1].field_448 * baseBreedingFee) + baseBreedingFee)
            if baseBreedingFee / baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseBreedingFee:
                if baseBreedingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseBreedingFee
            if baseBreedingFee / baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * baseBreedingFee)
        if generationBreedingFeeMultiplier * stor16[arg1].field_544 / stor16[arg1].field_544 != generationBreedingFeeMultiplier:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not generationBreedingFeeMultiplier * stor16[arg1].field_544:
            if baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not baseBreedingFee:
                return 0
            if block.number + 1 <= stor16[arg1].field_384:
                if stor16[arg1].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg1].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseBreedingFee:
                    if stor16[arg1].field_448 * baseBreedingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (stor16[arg1].field_448 * baseBreedingFee)
                if baseBreedingFee / baseBreedingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (stor16[arg1].field_448 * baseBreedingFee) + baseBreedingFee < baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor16[arg1].field_448 * baseBreedingFee) + baseBreedingFee)
            if baseBreedingFee / baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseBreedingFee:
                if baseBreedingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseBreedingFee
            if baseBreedingFee / baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * baseBreedingFee)
        if 10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 / generationBreedingFeeMultiplier * stor16[arg1].field_544 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee < baseBreedingFee:
            revert with 0, 'SafeMath: addition overflow'
        if not (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee:
            if not baseBreedingFee:
                return 0
            if baseBreedingFee / baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            return baseBreedingFee
        if block.number + 1 <= stor16[arg1].field_384:
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee != stor16[arg1].field_448:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseBreedingFee:
                if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448))
            if baseBreedingFee / baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) + baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) + baseBreedingFee)
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not baseBreedingFee:
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee)
        if baseBreedingFee / baseBreedingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + (2 * baseBreedingFee) < baseBreedingFee:
            revert with 0, 'SafeMath: addition overflow'
        return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + (2 * baseBreedingFee))
    if generationBreedingFeeMultiplier * stor16[arg2].field_544 / stor16[arg2].field_544 != generationBreedingFeeMultiplier:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not generationBreedingFeeMultiplier * stor16[arg2].field_544:
        if baseBreedingFee < baseBreedingFee:
            revert with 0, 'SafeMath: addition overflow'
        require arg1 < stor16.length
        if block.number + 1 <= stor16[arg2].field_384:
            if not stor16[arg1].field_544:
                if baseBreedingFee < baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseBreedingFee:
                    return 0
                if block.number + 1 <= stor16[arg1].field_384:
                    if stor16[arg1].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg1].field_448:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not baseBreedingFee:
                        if stor16[arg1].field_448 * baseBreedingFee < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (stor16[arg1].field_448 * baseBreedingFee)
                    if stor16[arg2].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg2].field_448:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (stor16[arg1].field_448 * baseBreedingFee) + (stor16[arg2].field_448 * baseBreedingFee) < stor16[arg2].field_448 * baseBreedingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor16[arg1].field_448 * baseBreedingFee) + (stor16[arg2].field_448 * baseBreedingFee))
                if baseBreedingFee / baseBreedingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseBreedingFee:
                    if baseBreedingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return baseBreedingFee
                if stor16[arg2].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg2].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if baseBreedingFee + (stor16[arg2].field_448 * baseBreedingFee) < stor16[arg2].field_448 * baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseBreedingFee + (stor16[arg2].field_448 * baseBreedingFee))
            if generationBreedingFeeMultiplier * stor16[arg1].field_544 / stor16[arg1].field_544 != generationBreedingFeeMultiplier:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not generationBreedingFeeMultiplier * stor16[arg1].field_544:
                if baseBreedingFee < baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseBreedingFee:
                    return 0
                if block.number + 1 <= stor16[arg1].field_384:
                    if stor16[arg1].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg1].field_448:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not baseBreedingFee:
                        if stor16[arg1].field_448 * baseBreedingFee < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (stor16[arg1].field_448 * baseBreedingFee)
                    if stor16[arg2].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg2].field_448:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (stor16[arg1].field_448 * baseBreedingFee) + (stor16[arg2].field_448 * baseBreedingFee) < stor16[arg2].field_448 * baseBreedingFee:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((stor16[arg1].field_448 * baseBreedingFee) + (stor16[arg2].field_448 * baseBreedingFee))
                if baseBreedingFee / baseBreedingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseBreedingFee:
                    if baseBreedingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return baseBreedingFee
                if stor16[arg2].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg2].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if baseBreedingFee + (stor16[arg2].field_448 * baseBreedingFee) < stor16[arg2].field_448 * baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseBreedingFee + (stor16[arg2].field_448 * baseBreedingFee))
            if 10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 / generationBreedingFeeMultiplier * stor16[arg1].field_544 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee:
                if not baseBreedingFee:
                    return 0
                if stor16[arg2].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg2].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if stor16[arg2].field_448 * baseBreedingFee < stor16[arg2].field_448 * baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return (stor16[arg2].field_448 * baseBreedingFee)
            if block.number + 1 <= stor16[arg1].field_384:
                if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee != stor16[arg1].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseBreedingFee:
                    if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448))
                if stor16[arg2].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg2].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) + (stor16[arg2].field_448 * baseBreedingFee) < stor16[arg2].field_448 * baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) + (stor16[arg2].field_448 * baseBreedingFee))
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseBreedingFee:
                if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee)
            if stor16[arg2].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg2].field_448:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee + (stor16[arg2].field_448 * baseBreedingFee) < stor16[arg2].field_448 * baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee + (stor16[arg2].field_448 * baseBreedingFee))
        if not stor16[arg1].field_544:
            if baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not baseBreedingFee:
                return 0
            if block.number + 1 <= stor16[arg1].field_384:
                if stor16[arg1].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg1].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseBreedingFee:
                    if stor16[arg1].field_448 * baseBreedingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (stor16[arg1].field_448 * baseBreedingFee)
                if baseBreedingFee / baseBreedingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (stor16[arg1].field_448 * baseBreedingFee) + baseBreedingFee < baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor16[arg1].field_448 * baseBreedingFee) + baseBreedingFee)
            if baseBreedingFee / baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseBreedingFee:
                if baseBreedingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseBreedingFee
            if baseBreedingFee / baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * baseBreedingFee)
        if generationBreedingFeeMultiplier * stor16[arg1].field_544 / stor16[arg1].field_544 != generationBreedingFeeMultiplier:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not generationBreedingFeeMultiplier * stor16[arg1].field_544:
            if baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not baseBreedingFee:
                return 0
            if block.number + 1 <= stor16[arg1].field_384:
                if stor16[arg1].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg1].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not baseBreedingFee:
                    if stor16[arg1].field_448 * baseBreedingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (stor16[arg1].field_448 * baseBreedingFee)
                if baseBreedingFee / baseBreedingFee != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (stor16[arg1].field_448 * baseBreedingFee) + baseBreedingFee < baseBreedingFee:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor16[arg1].field_448 * baseBreedingFee) + baseBreedingFee)
            if baseBreedingFee / baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseBreedingFee:
                if baseBreedingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseBreedingFee
            if baseBreedingFee / baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * baseBreedingFee)
        if 10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 / generationBreedingFeeMultiplier * stor16[arg1].field_544 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee < baseBreedingFee:
            revert with 0, 'SafeMath: addition overflow'
        if not (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee:
            if not baseBreedingFee:
                return 0
            if baseBreedingFee / baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            return baseBreedingFee
        if block.number + 1 <= stor16[arg1].field_384:
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee != stor16[arg1].field_448:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not baseBreedingFee:
                if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448))
            if baseBreedingFee / baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) + baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) + baseBreedingFee)
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not baseBreedingFee:
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee)
        if baseBreedingFee / baseBreedingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + (2 * baseBreedingFee) < baseBreedingFee:
            revert with 0, 'SafeMath: addition overflow'
        return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + (2 * baseBreedingFee))
    if 10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 / generationBreedingFeeMultiplier * stor16[arg2].field_544 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee < baseBreedingFee:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < stor16.length
    if block.number + 1 <= stor16[arg2].field_384:
        if not stor16[arg1].field_544:
            if baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not baseBreedingFee:
                if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
                    return 0
                if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != stor16[arg2].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448))
            if block.number + 1 <= stor16[arg1].field_384:
                if stor16[arg1].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg1].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
                    if stor16[arg1].field_448 * baseBreedingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (stor16[arg1].field_448 * baseBreedingFee)
                if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != stor16[arg2].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if stor16[arg1].field_448 * baseBreedingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor16[arg1].field_448 * baseBreedingFee) + (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448))
            if baseBreedingFee / baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
                if baseBreedingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseBreedingFee
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != stor16[arg2].field_448:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if baseBreedingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (baseBreedingFee + (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448))
        if generationBreedingFeeMultiplier * stor16[arg1].field_544 / stor16[arg1].field_544 != generationBreedingFeeMultiplier:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not generationBreedingFeeMultiplier * stor16[arg1].field_544:
            if baseBreedingFee < baseBreedingFee:
                revert with 0, 'SafeMath: addition overflow'
            if not baseBreedingFee:
                if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
                    return 0
                if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != stor16[arg2].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448))
            if block.number + 1 <= stor16[arg1].field_384:
                if stor16[arg1].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg1].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
                    if stor16[arg1].field_448 * baseBreedingFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (stor16[arg1].field_448 * baseBreedingFee)
                if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != stor16[arg2].field_448:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if stor16[arg1].field_448 * baseBreedingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((stor16[arg1].field_448 * baseBreedingFee) + (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448))
            if baseBreedingFee / baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
                if baseBreedingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseBreedingFee
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != stor16[arg2].field_448:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if baseBreedingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (baseBreedingFee + (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448))
        if 10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 / generationBreedingFeeMultiplier * stor16[arg1].field_544 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee < baseBreedingFee:
            revert with 0, 'SafeMath: addition overflow'
        if not (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee:
            if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
                return 0
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != stor16[arg2].field_448:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448))
        if block.number + 1 <= stor16[arg1].field_384:
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee != stor16[arg1].field_448:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
                if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448))
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != stor16[arg2].field_448:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) + (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448))
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee)
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != stor16[arg2].field_448:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee + (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544 * stor16[arg2].field_448) + (baseBreedingFee * stor16[arg2].field_448))
    if not stor16[arg1].field_544:
        if baseBreedingFee < baseBreedingFee:
            revert with 0, 'SafeMath: addition overflow'
        if not baseBreedingFee:
            if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
                return 0
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee)
        if block.number + 1 <= stor16[arg1].field_384:
            if stor16[arg1].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg1].field_448:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
                if stor16[arg1].field_448 * baseBreedingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (stor16[arg1].field_448 * baseBreedingFee)
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor16[arg1].field_448 * baseBreedingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor16[arg1].field_448 * baseBreedingFee) + (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee)
        if baseBreedingFee / baseBreedingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
            if baseBreedingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return baseBreedingFee
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 2 * baseBreedingFee < baseBreedingFee:
            revert with 0, 'SafeMath: addition overflow'
        return ((2 * baseBreedingFee) + (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544))
    if generationBreedingFeeMultiplier * stor16[arg1].field_544 / stor16[arg1].field_544 != generationBreedingFeeMultiplier:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not generationBreedingFeeMultiplier * stor16[arg1].field_544:
        if baseBreedingFee < baseBreedingFee:
            revert with 0, 'SafeMath: addition overflow'
        if not baseBreedingFee:
            if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
                return 0
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee)
        if block.number + 1 <= stor16[arg1].field_384:
            if stor16[arg1].field_448 * baseBreedingFee / baseBreedingFee != stor16[arg1].field_448:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
                if stor16[arg1].field_448 * baseBreedingFee < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (stor16[arg1].field_448 * baseBreedingFee)
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor16[arg1].field_448 * baseBreedingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((stor16[arg1].field_448 * baseBreedingFee) + (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee)
        if baseBreedingFee / baseBreedingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
            if baseBreedingFee < 0:
                revert with 0, 'SafeMath: addition overflow'
            return baseBreedingFee
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 2 * baseBreedingFee < baseBreedingFee:
            revert with 0, 'SafeMath: addition overflow'
        return ((2 * baseBreedingFee) + (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544))
    if 10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 / generationBreedingFeeMultiplier * stor16[arg1].field_544 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee < baseBreedingFee:
        revert with 0, 'SafeMath: addition overflow'
    if not (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee:
        if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
            return 0
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee)
    if block.number + 1 <= stor16[arg1].field_384:
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) / (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee != stor16[arg1].field_448:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
            if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448))
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544 * stor16[arg1].field_448) + (baseBreedingFee * stor16[arg1].field_448) + (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee)
    if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee:
        if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + baseBreedingFee)
    if (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee / (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544) + baseBreedingFee != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + (2 * baseBreedingFee) < baseBreedingFee:
        revert with 0, 'SafeMath: addition overflow'
    return ((10^18 * generationBreedingFeeMultiplier * stor16[arg1].field_544) + (2 * baseBreedingFee) + (10^18 * generationBreedingFeeMultiplier * stor16[arg2].field_544))
}



}
