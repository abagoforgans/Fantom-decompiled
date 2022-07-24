contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const sub_1f8920a0(?) = 200

const sub_2ff3af2b(?) = 50

const swapRouter = 0x10ed43c718714eb63d5aa57b78b54704e256024e

const MAXIMUM_TRANSFER_TAX_RATE = 800

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf

const BURN_ADDRESS = 57005


address owner;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct name;
array of uint256 symbol;
uint8 decimals;
uint16 stor7;
uint16 transferTaxRate; offset 8
uint16 burnRate; offset 24
uint16 maxTransferAmountRate; offset 200
address masterchefAddress; offset 40
uint256 stor7; offset 8
mapping of uint8 stor8;
uint8 stor9;
uint256 stor10; offset 1
uint256 minAmountToLiquify;
uint8 stor11; offset 160
uint8 stor11; offset 168
uint128 stor11; offset 168
uint128 stor11; offset 160
address swapPairAddress;
uint256 stor11;
mapping of uint8 stor12;
uint256 sub_6098fed1;
address operatorAddress;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function swapPair() {
    return swapPairAddress
}

function isExcludedFromAntiWhale(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[address(arg1)])
}

function decimals() {
    return decimals
}

function maxTransferAmountRate() {
    return maxTransferAmountRate
}

function swapAndLiquifyEnabled() {
    return bool(stor9)
}

function sub_4bd61ee3(?) {
    return bool(uint8(stor11.field_168))
}

function operator() {
    return operatorAddress
}

function delegates(address arg1) {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
}

function sub_6098fed1(?) {
    return sub_6098fed1
}

function numCheckpoints(address arg1) {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transferTaxRate() {
    return transferTaxRate
}

function burnRate() {
    return burnRate
}

function minAmountToLiquify() {
    return minAmountToLiquify
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isBlackListed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor12[address(arg1)])
}

function checkpoints(address arg1, uint32 arg2) {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function masterchef() {
    return masterchefAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getCurrentVotes(address arg1) {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)] > 0:
        return checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function updateMasterchef(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    masterchefAddress = arg1
}

function addToBlackList(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    stor12[address(arg1)] = uint8(arg2)
}

function setExcludedFromAntiWhale(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    stor8[address(arg1)] = uint8(arg2)
}

function updateSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    emit SwapAndLiquifyEnabledUpdated(arg1, msg.sender);
    stor9 = uint8(arg1)
}

function updateMinAmountToLiquify(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    emit MinAmountToLiquifyUpdated(minAmountToLiquify, arg1, msg.sender);
    minAmountToLiquify = arg1
}

function maxTransferAmount() {
    if not totalSupply:
        return 0
    require totalSupply
    if totalSupply * maxTransferAmountRate / totalSupply != maxTransferAmountRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (totalSupply * maxTransferAmountRate / 10000)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function updateBurnRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x7742544e3a3a7570646174654275726e526174653a204275726e2072617465206d757374206e6f742065786365656420746865206d6178696d756d2072617465
    emit BurnRateUpdated(uint16(stor7.field_0), arg1, msg.sender);
    burnRate = arg1
}

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x2e42544e3a3a7472616e736665724f70657261746f723a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[219 len 9]
    emit OperatorTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function enableTransaction() {
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if uint8(stor11.field_168):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x6442544e3a3a656e61626c655472616e73616374696f6e3a2054686973206d656f74686f642063616e206f6e6c792062652063616c6c6564206f6e63,
                    mem[224 len 4]
    Mask(88, 0, stor11.field_168) = 1
    if block.number + 200 < block.number:
        revert with 0, 'SafeMath: addition overflow'
    sub_6098fed1 = block.number + 200
}

function updateTransferTaxRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 800:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    79,
                    0x6f42544e3a3a7570646174655472616e73666572546178526174653a205472616e73666572207461782072617465206d757374206e6f742065786365656420746865206d6178696d756d2072617465,
                    mem[243 len 17]
    emit TransferTaxRateUpdated(uint16(stor7.field_0), arg1, msg.sender);
    transferTaxRate = arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6542455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function updateMaxTransferAmountRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    92,
                    0x6542544e3a3a7570646174654d61785472616e73666572416d6f756e74526174653a204d6178207472616e7366657220616d6f756e742072617465206d757374206e6f742065786365656420746865206d6178696d756d2072617465,
                    mem[256 len 4]
    if arg1 < 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    87,
                    0x7342544e3a3a7570646174654d61785472616e73666572416d6f756e74526174653a204d6178207472616e7366657220616d6f756e742072617465206d75737420626520677261746572207468616e206d696e20726174,
                    mem[251 len 9]
    emit MaxTransferAmountRateUpdated(uint16(stor7.field_0), arg1, msg.sender);
    maxTransferAmountRate = arg1
}

function setSwapPair() {
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor11.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11.field_0))
    if not swapPairAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0x7342544e3a3a75706461746553776170526f757465723a20496e76616c6964207061697220616464726573732e20436865636b206966206c6971756964697479207761732061646465,
                    mem[237 len 23]
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e42544e3a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[202 len 26]
    if not numCheckpoints[address(arg1)]:
        return 0
    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 <= arg2:
        return checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256
    if checkpoints[address(arg1)][0].field_0 > arg2:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = 0
        mem[_33 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 16)
        _36 = mem[64]
        mem[64] = mem[64] + 64
        mem[_36] = checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_36 + 32] = checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 == arg2:
            return checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if checkpoints[address(arg1)][stor17[address(arg1)] + -(uint32(stor17[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 >= arg2:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor15[address(arg1)]] > 0:
                    if checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[179 len 13],
                                    Mask(152, -256, mem[179 len 13]) << 256
                    if numCheckpoints[stor15[address(arg1)]] <= 0:
                        checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_256 = checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256 + arg2
                        numCheckpoints[stor15[address(arg1)]] = uint32(numCheckpoints[stor15[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_256 = checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256 + arg2
                            numCheckpoints[stor15[address(arg1)]] = uint32(numCheckpoints[stor15[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256, checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[179 len 13],
                                    Mask(152, -256, mem[179 len 13]) << 256
                    if numCheckpoints[stor15[address(arg1)]] <= 0:
                        checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor15[address(arg1)]] = uint32(numCheckpoints[stor15[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor15[address(arg1)]][stor17[stor15[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor15[address(arg1)]] = uint32(numCheckpoints[stor15[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
}

function delegate(address arg1) {
    require calldata.size - 4 >= 32
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[179 len 13],
                                        Mask(152, -256, mem[179 len 13]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[179 len 13],
                                        Mask(152, -256, mem[179 len 13]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor15[address(msg.sender)]] > 0:
                    if balanceOf[address(msg.sender)] > checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[179 len 13],
                                    Mask(152, -256, mem[179 len 13]) << 256
                    if numCheckpoints[stor15[address(msg.sender)]] <= 0:
                        checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_256 = checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor15[address(msg.sender)]] = uint32(numCheckpoints[stor15[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[339 len 13],
                                                Mask(152, -256, mem[339 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[339 len 13],
                                                Mask(152, -256, mem[339 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[275 len 13],
                                                    Mask(152, -256, mem[275 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[275 len 13],
                                                    Mask(152, -256, mem[275 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_256 = checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor15[address(msg.sender)]] = uint32(numCheckpoints[stor15[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[339 len 13],
                                                    Mask(152, -256, mem[339 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[339 len 13],
                                                    Mask(152, -256, mem[339 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[179 len 13],
                                    Mask(152, -256, mem[179 len 13]) << 256
                    if numCheckpoints[stor15[address(msg.sender)]] <= 0:
                        checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor15[address(msg.sender)]] = uint32(numCheckpoints[stor15[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[339 len 13],
                                                Mask(152, -256, mem[339 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[339 len 13],
                                                Mask(152, -256, mem[339 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[275 len 13],
                                                    Mask(152, -256, mem[275 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[275 len 13],
                                                    Mask(152, -256, mem[275 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor15[address(msg.sender)]][stor17[stor15[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor15[address(msg.sender)]] = uint32(numCheckpoints[stor15[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[339 len 13],
                                                    Mask(152, -256, mem[339 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[339 len 13],
                                                    Mask(152, -256, mem[339 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    require calldata.size - 4 >= 192
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[128 len name.length]), chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    37,
                    0x6442544e3a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    Mask(184, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 
                    32,
                    33,
                    0x6442544e3a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                    Mask(216, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    37,
                    0x6442544e3a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    Mask(184, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        Mask(104, 0, arg5),
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        Mask(104, 0, arg5),
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor15[address(signer)]] > 0:
                    if balanceOf[address(signer)] > checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    Mask(104, 0, arg5),
                                    0
                    if numCheckpoints[stor15[address(signer)]] <= 0:
                        checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_256 = checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor15[address(signer)]] = uint32(numCheckpoints[stor15[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 821 len 13],
                                                Mask(152, -256, mem[ceil32(name.length) + 821 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 821 len 13],
                                                Mask(152, -256, mem[ceil32(name.length) + 821 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 757 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 757 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 757 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 757 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_256 = checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor15[address(signer)]] = uint32(numCheckpoints[stor15[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256, checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 821 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 821 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 821 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 821 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    Mask(104, 0, arg5),
                                    0
                    if numCheckpoints[stor15[address(signer)]] <= 0:
                        checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor15[address(signer)]] = uint32(numCheckpoints[stor15[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 821 len 13],
                                                Mask(152, -256, mem[ceil32(name.length) + 821 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 821 len 13],
                                                Mask(152, -256, mem[ceil32(name.length) + 821 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 757 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 757 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 757 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 757 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor15[address(signer)]][stor17[stor15[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor15[address(signer)]] = uint32(numCheckpoints[stor15[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 821 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 821 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342544e3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 821 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 821 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor17[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor17[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor11.field_168):
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        62,
                        0x6542544e3a3a626c6f636b5472616e73616374696f6e3a205472616e73666572732063616e206f6e6c7920626520646f6e65206279206f70657261746f72,
                        mem[226 len 2]
    if totalSupply:
        require totalSupply
        if totalSupply * maxTransferAmountRate / totalSupply != maxTransferAmountRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply * maxTransferAmountRate / 10000 > 0:
            if not stor8[address(msg.sender)]:
                if not stor8[address(arg1)]:
                    if not totalSupply:
                        if arg2 > 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        61,
                                        0x7342544e3a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e,
                                        mem[225 len 3]
                    else:
                        require totalSupply
                        if totalSupply * maxTransferAmountRate / totalSupply != maxTransferAmountRate:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg2 > totalSupply * maxTransferAmountRate / 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        61,
                                        0x7342544e3a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e,
                                        mem[225 len 3]
    if uint8(stor11.field_168):
        if block.number <= sub_6098fed1:
            if not totalSupply:
                if balanceOf[address(arg1)] > 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6542544e3a3a20616e7469426f743a2053757370656374656420626f742061637469766974,
                                mem[201 len 27]
            else:
                require totalSupply
                if totalSupply * maxTransferAmountRate / totalSupply != maxTransferAmountRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if balanceOf[address(arg1)] > totalSupply * maxTransferAmountRate / 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6542544e3a3a20616e7469426f743a2053757370656374656420626f742061637469766974,
                                mem[201 len 27]
    if stor12[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7942544e3a3a7472616e736665723a20596f7527726520626c61636b6c69737465,
                    mem[197 len 31]
    if bool(stor9) != 1:
        if arg1 == 57005:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not transferTaxRate:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg1 == masterchefAddress:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if msg.sender == masterchefAddress:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 != arg2:
                                revert with 0, 'BTN::transfer: Tax value invalid'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            if balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, 57005);
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                            if not this.address:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[262 len 26],
                                            mem[314 len 6]
                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, this.address);
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            require arg2
                            if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not arg2 * transferTaxRate / 10000:
                                if 0 > arg2 * transferTaxRate / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x7442544e3a3a7472616e736665723a204275726e2076616c756520696e76616c69,
                                                mem[197 len 31]
                                if arg2 * transferTaxRate / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != arg2:
                                    revert with 0, 'BTN::transfer: Tax value invalid'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[262 len 26],
                                                mem[314 len 6]
                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                            else:
                                require arg2 * transferTaxRate / 10000
                                if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if arg2 * transferTaxRate / 10000 * burnRate / 100 > arg2 * transferTaxRate / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x7442544e3a3a7472616e736665723a204275726e2076616c756520696e76616c69,
                                                mem[197 len 31]
                                if arg2 * transferTaxRate / 10000 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != arg2:
                                    revert with 0, 'BTN::transfer: Tax value invalid'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if arg2 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 100
                                emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[262 len 26],
                                                mem[314 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                            if not msg.sender:
                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                            if not arg1:
                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                            if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                            if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                            emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
    else:
        if uint8(stor11.field_160):
            if arg1 == 57005:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not transferTaxRate:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg1 == masterchefAddress:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if msg.sender == masterchefAddress:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 != arg2:
                                    revert with 0, 'BTN::transfer: Tax value invalid'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[262 len 26],
                                                mem[314 len 6]
                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                require arg2
                                if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not arg2 * transferTaxRate / 10000:
                                    if 0 > arg2 * transferTaxRate / 10000:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x7442544e3a3a7472616e736665723a204275726e2076616c756520696e76616c69,
                                                    mem[197 len 31]
                                    if arg2 * transferTaxRate / 10000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'BTN::transfer: Tax value invalid'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                    if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[262 len 26],
                                                    mem[314 len 6]
                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                    emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                else:
                                    require arg2 * transferTaxRate / 10000
                                    if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if arg2 * transferTaxRate / 10000 * burnRate / 100 > arg2 * transferTaxRate / 10000:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x7442544e3a3a7472616e736665723a204275726e2076616c756520696e76616c69,
                                                    mem[197 len 31]
                                    if arg2 * transferTaxRate / 10000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'BTN::transfer: Tax value invalid'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if arg2 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                    if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 100
                                    emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                    if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[262 len 26],
                                                    mem[314 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                    emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
        else:
            if not swapPairAddress:
                if arg1 == 57005:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not transferTaxRate:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg1 == masterchefAddress:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if msg.sender == masterchefAddress:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'BTN::transfer: Tax value invalid'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[262 len 26],
                                                    mem[314 len 6]
                                    if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    require arg2
                                    if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not arg2 * transferTaxRate / 10000:
                                        if 0 > arg2 * transferTaxRate / 10000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x7442544e3a3a7472616e736665723a204275726e2076616c756520696e76616c69,
                                                        mem[197 len 31]
                                        if arg2 * transferTaxRate / 10000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 != arg2:
                                            revert with 0, 'BTN::transfer: Tax value invalid'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                        if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[262 len 26],
                                                        mem[314 len 6]
                                        balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                        if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                        emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                    else:
                                        require arg2 * transferTaxRate / 10000
                                        if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if arg2 * transferTaxRate / 10000 * burnRate / 100 > arg2 * transferTaxRate / 10000:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x7442544e3a3a7472616e736665723a204275726e2076616c756520696e76616c69,
                                                        mem[197 len 31]
                                        if arg2 * transferTaxRate / 10000 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 != arg2:
                                            revert with 0, 'BTN::transfer: Tax value invalid'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if arg2 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                        if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 100
                                        emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                        if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[262 len 26],
                                                        mem[314 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                        if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                        emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                    if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                    emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
            else:
                if msg.sender == swapPairAddress:
                    if arg1 == 57005:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not transferTaxRate:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 == masterchefAddress:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == masterchefAddress:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg2 != arg2:
                                            revert with 0, 'BTN::transfer: Tax value invalid'
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[262 len 26],
                                                        mem[314 len 6]
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[358 len 26],
                                                        mem[410 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        require arg2
                                        if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not arg2 * transferTaxRate / 10000:
                                            if 0 > arg2 * transferTaxRate / 10000:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x7442544e3a3a7472616e736665723a204275726e2076616c756520696e76616c69,
                                                            mem[197 len 31]
                                            if arg2 * transferTaxRate / 10000 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 != arg2:
                                                revert with 0, 'BTN::transfer: Tax value invalid'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            37,
                                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                            mem[201 len 27]
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            if balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, 57005);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                            if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[262 len 26],
                                                            mem[314 len 6]
                                            balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                            if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                            emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                        else:
                                            require arg2 * transferTaxRate / 10000
                                            if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if arg2 * transferTaxRate / 10000 * burnRate / 100 > arg2 * transferTaxRate / 10000:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x7442544e3a3a7472616e736665723a204275726e2076616c756520696e76616c69,
                                                            mem[197 len 31]
                                            if arg2 * transferTaxRate / 10000 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 != arg2:
                                                revert with 0, 'BTN::transfer: Tax value invalid'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            37,
                                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                            mem[201 len 27]
                                            if arg2 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                            if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 100) < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 100
                                            emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                            if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[262 len 26],
                                                            mem[314 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                            if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                            emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[358 len 26],
                                                        mem[410 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                        if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                        emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                else:
                    if msg.sender == owner:
                        if arg1 == 57005:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not transferTaxRate:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == masterchefAddress:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == masterchefAddress:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if arg2 != arg2:
                                                revert with 0, 'BTN::transfer: Tax value invalid'
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            37,
                                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                            mem[201 len 27]
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            if balanceOf[57005] < balanceOf[57005]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, 57005);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[262 len 26],
                                                            mem[314 len 6]
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[358 len 26],
                                                            mem[410 len 6]
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            require arg2
                                            if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not arg2 * transferTaxRate / 10000:
                                                if 0 > arg2 * transferTaxRate / 10000:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x7442544e3a3a7472616e736665723a204275726e2076616c756520696e76616c69,
                                                                mem[197 len 31]
                                                if arg2 * transferTaxRate / 10000 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if arg2 != arg2:
                                                    revert with 0, 'BTN::transfer: Tax value invalid'
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                37,
                                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                mem[201 len 27]
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[166 len 26],
                                                                mem[218 len 6]
                                                if balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                emit Transfer(0, msg.sender, 57005);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[262 len 26],
                                                                mem[314 len 6]
                                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                            else:
                                                require arg2 * transferTaxRate / 10000
                                                if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if arg2 * transferTaxRate / 10000 * burnRate / 100 > arg2 * transferTaxRate / 10000:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x7442544e3a3a7472616e736665723a204275726e2076616c756520696e76616c69,
                                                                mem[197 len 31]
                                                if arg2 * transferTaxRate / 10000 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if arg2 != arg2:
                                                    revert with 0, 'BTN::transfer: Tax value invalid'
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                37,
                                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                mem[201 len 27]
                                                if arg2 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[166 len 26],
                                                                mem[218 len 6]
                                                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                                if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 100) < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 100
                                                emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[262 len 26],
                                                                mem[314 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                                if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                                emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[358 len 26],
                                                            mem[410 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                            if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                            emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                    else:
                        Mask(96, 0, stor11.field_160) = 1
                        transferTaxRate = 0
                        if balanceOf[address(this.address)] < minAmountToLiquify:
                            Mask(248, 0, stor7.field_8) = transferTaxRate
                            Mask(96, 0, stor11.field_160) = 0
                            if arg1 == 57005:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not transferTaxRate:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == masterchefAddress:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == masterchefAddress:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            37,
                                                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                            mem[201 len 27]
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            35,
                                                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                            mem[199 len 29]
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[166 len 26],
                                                            mem[218 len 6]
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if not arg2:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if arg2 != arg2:
                                                    revert with 0, 'BTN::transfer: Tax value invalid'
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                37,
                                                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                mem[201 len 27]
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[166 len 26],
                                                                mem[218 len 6]
                                                if balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                emit Transfer(0, msg.sender, 57005);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[262 len 26],
                                                                mem[314 len 6]
                                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                emit Transfer(0, msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[358 len 26],
                                                                mem[410 len 6]
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                require arg2
                                                if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if not arg2 * transferTaxRate / 10000:
                                                    if 0 > arg2 * transferTaxRate / 10000:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x7442544e3a3a7472616e736665723a204275726e2076616c756520696e76616c69,
                                                                    mem[197 len 31]
                                                    if arg2 * transferTaxRate / 10000 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 != arg2:
                                                        revert with 0, 'BTN::transfer: Tax value invalid'
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    37,
                                                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[201 len 27]
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[166 len 26],
                                                                    mem[218 len 6]
                                                    if balanceOf[57005] < balanceOf[57005]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    emit Transfer(0, msg.sender, 57005);
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                    if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[262 len 26],
                                                                    mem[314 len 6]
                                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                    emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                else:
                                                    require arg2 * transferTaxRate / 10000
                                                    if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if arg2 * transferTaxRate / 10000 * burnRate / 100 > arg2 * transferTaxRate / 10000:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x7442544e3a3a7472616e736665723a204275726e2076616c756520696e76616c69,
                                                                    mem[197 len 31]
                                                    if arg2 * transferTaxRate / 10000 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 != arg2:
                                                        revert with 0, 'BTN::transfer: Tax value invalid'
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    37,
                                                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[201 len 27]
                                                    if arg2 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[166 len 26],
                                                                    mem[218 len 6]
                                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                                    if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 100) < balanceOf[57005]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 100
                                                    emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                                                    if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[262 len 26],
                                                                    mem[314 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                                    emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[358 len 26],
                                                                mem[410 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
                        else:
                            if stor10 > minAmountToLiquify:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e] = stor10
                            emit Approval(stor10, this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                            mem[388 len 0] = None
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 2 * Mask(256, -1, stor10), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not this.address:
                                revert with 0, 'sBEP20: approve from the zero addresddres'
                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e] = minAmountToLiquify - stor10
                            emit Approval((minAmountToLiquify - stor10), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args address(this.address), minAmountToLiquify - stor10, 0, 0, operatorAddress, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit SwapAndLiquify(2 * Mask(256, -1, stor10), 0, minAmountToLiquify - stor10);
                            Mask(248, 0, stor7.field_8) = transferTaxRate
                            Mask(96, 0, stor11.field_160) = 0
                            if arg1 == 57005:
                                if not msg.sender:
                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                if not arg1:
                                    revert with 0, 'eBEP20: transfer to the zero addres'
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                Mask(208, 0, minAmountToLiquify - stor10),
                                                0
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not transferTaxRate:
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                    if not arg1:
                                        revert with 0, 'eBEP20: transfer to the zero addres'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    Mask(208, 0, minAmountToLiquify - stor10),
                                                    0
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == masterchefAddress:
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                        if not arg1:
                                            revert with 0, 'eBEP20: transfer to the zero addres'
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        Mask(208, 0, minAmountToLiquify - stor10),
                                                        0
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == masterchefAddress:
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                            if not arg1:
                                                revert with 0, 'eBEP20: transfer to the zero addres'
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            Mask(208, 0, minAmountToLiquify - stor10),
                                                            0
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if not arg2:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if arg2 != arg2:
                                                    revert with 0, 'BTN::transfer: Tax value invalid'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                Mask(208, 0, minAmountToLiquify - stor10),
                                                                0
                                                if balanceOf[57005] < balanceOf[57005]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                emit Transfer(0, msg.sender, 57005);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                emit Transfer(0, msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                require arg2
                                                if arg2 * transferTaxRate / arg2 != transferTaxRate:
                                                    revert with 0, '.SafeMath: multiplication overflo'
                                                if not arg2 * transferTaxRate / 10000:
                                                    if 0 > arg2 * transferTaxRate / 10000:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                        revert with 0, 'tBTN::transfer: Burn value invali'
                                                    if arg2 * transferTaxRate / 10000 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 != arg2:
                                                        revert with 0, 'BTN::transfer: Tax value invalid'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    Mask(208, 0, minAmountToLiquify - stor10),
                                                                    0
                                                    if balanceOf[57005] < balanceOf[57005]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    emit Transfer(0, msg.sender, 57005);
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                    if arg2 * transferTaxRate / 10000 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] += arg2 * transferTaxRate / 10000
                                                    emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                                                else:
                                                    require arg2 * transferTaxRate / 10000
                                                    if arg2 * transferTaxRate / 10000 * burnRate / arg2 * transferTaxRate / 10000 != burnRate:
                                                        revert with 0, '.SafeMath: multiplication overflo'
                                                    if arg2 * transferTaxRate / 10000 * burnRate / 100 > arg2 * transferTaxRate / 10000:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 * transferTaxRate / 10000 != arg2 * transferTaxRate / 10000:
                                                        revert with 0, 'tBTN::transfer: Burn value invali'
                                                    if arg2 * transferTaxRate / 10000 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if arg2 != arg2:
                                                        revert with 0, 'BTN::transfer: Tax value invalid'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, 0
                                                    if arg2 * transferTaxRate / 10000 * burnRate / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    Mask(208, 0, minAmountToLiquify - stor10),
                                                                    0
                                                    balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000 * burnRate / 100
                                                    if balanceOf[57005] + (arg2 * transferTaxRate / 10000 * burnRate / 100) < balanceOf[57005]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[57005] += arg2 * transferTaxRate / 10000 * burnRate / 100
                                                    emit Transfer((arg2 * transferTaxRate / 10000 * burnRate / 100), msg.sender, 57005);
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                    if (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 'rBEP20: transfer amount exceeds balancimestam', 0
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * transferTaxRate / 10000) + (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                                    if balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100) < balanceOf[address(this.address)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[address(this.address)] + (arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)
                                                    emit Transfer(((arg2 * transferTaxRate / 10000) - (arg2 * transferTaxRate / 10000 * burnRate / 100)), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if arg2 - (arg2 * transferTaxRate / 10000) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000)
                                                if balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000)
                                                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000)), msg.sender, arg1);
    return 1
}



}
