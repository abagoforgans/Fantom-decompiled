contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const sub_86fac490(?) = 200

const MAXIMUM_TRANSFER_TAX_RATE = 500

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf

const BURN_ADDRESS = 57005


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct name;
array of uint256 symbol;
uint8 decimals;
uint16 stor6;
uint16 transferTaxRate; offset 8
uint16 burnRate; offset 24
uint16 maxTransferAmountRate; offset 40
mapping of uint8 stor7;
uint8 stor8;
uint256 minAmountToLiquify;
address sub_2738ee79Address;
address sub_03cbcd8aAddress;
uint256 stor11;
address masterchefAddress;
address sub_4be7a2f1Address;
address sub_a9aec512Address;
address operatorAddress;
address essentialOperatorAddress;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function sub_03cbcd8a(?) {
    return address(sub_03cbcd8aAddress)
}

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function isExcludedFromAntiWhale(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function sub_2738ee79(?) {
    return sub_2738ee79Address
}

function essentialOperator() {
    return essentialOperatorAddress
}

function decimals() {
    return decimals
}

function maxTransferAmountRate() {
    return maxTransferAmountRate
}

function swapAndLiquifyEnabled() {
    return bool(stor8)
}

function sub_4be7a2f1(?) {
    return sub_4be7a2f1Address
}

function operator() {
    return operatorAddress
}

function delegates(address arg1) {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
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

function sub_a9aec512(?) {
    return sub_a9aec512Address
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
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getCurrentVotes(address arg1) {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function setMasterchefAddress(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    masterchefAddress = arg1
}

function setTestCGPresaleAddress(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    sub_4be7a2f1Address = arg1
}

function setExcludedFromAntiWhale(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    stor7[address(arg1)] = uint8(arg2)
}

function updateSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    emit SwapAndLiquifyEnabledUpdated(arg1, msg.sender);
    stor8 = uint8(arg1)
}

function maxTransferAmount() {
    if not totalSupply:
        return 0
    if maxTransferAmountRate * totalSupply / totalSupply != maxTransferAmountRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (maxTransferAmountRate * totalSupply / 10000)
}

function updateMinAmountToLiquify(uint256 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    emit MinAmountToLiquifyUpdated(minAmountToLiquify, arg1, msg.sender);
    minAmountToLiquify = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
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
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x645445535443473a3a7472616e736665724f70657261746f723a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[222 len 6]
    emit OperatorTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function updateBurnRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x725445535443473a3a7570646174654275726e526174653a204275726e2072617465206d757374206e6f742065786365656420746865206d6178696d756d2072617465,
                    mem[231 len 29]
    emit BurnRateUpdated(stor6, arg1, msg.sender);
    burnRate = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function updateTransferTaxRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    82,
                    0x725445535443473a3a7570646174655472616e73666572546178526174653a205472616e73666572207461782072617465206d757374206e6f742065786365656420746865206d6178696d756d2072617465,
                    mem[246 len 14]
    emit TransferTaxRateUpdated(stor6, arg1, msg.sender);
    transferTaxRate = arg1
}

function transferEssentialOperator(address arg1) {
    require calldata.size - 4 >= 32
    if essentialOperatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0xfe657373656e7469616c4f70657261746f723a2063616c6c6572206973206e6f742074686520657373656e7469616c206f70657261746f,
                    mem[219 len 9]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x655445535443473a3a7472616e73666572457373656e7469616c4f70657261746f723a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[231 len 29]
    essentialOperatorAddress = arg1
    emit EssentialOperatorTransferred(operatorAddress, arg1);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
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
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function updateLocker(address arg1) {
    require calldata.size - 4 >= 32
    if essentialOperatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0xfe657373656e7469616c4f70657261746f723a2063616c6c6572206973206e6f742074686520657373656e7469616c206f70657261746f,
                    mem[219 len 9]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x2e5445535443473a3a7570646174655465737443474c6f636b65723a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[224 len 4]
    sub_a9aec512Address = arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not sub_a9aec512Address:
    else:
        stor7[stor14] = 0
    stor7[stor14] = 1
    emit LockerUpdated(sub_a9aec512Address, sub_a9aec512Address);
}

function updateMaxTransferAmountRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    95,
                    0x645445535443473a3a7570646174654d61785472616e73666572416d6f756e74526174653a204d6178207472616e7366657220616d6f756e742072617465206d757374206e6f742065786365656420746865206d6178696d756d2072617465,
                    mem[259 len 1]
    if arg1 < 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    91,
                    0x735445535443473a3a7570646174654d61785472616e73666572416d6f756e74526174653a204d6178207472616e7366657220616d6f756e742072617465206d7573742065786365656420746865206d696e696d756d2072617465,
                    mem[255 len 5]
    emit MaxTransferAmountRateUpdated(stor6, arg1, msg.sender);
    maxTransferAmountRate = arg1
}

function updatetestCGSwapRouter(address arg1) {
    require calldata.size - 4 >= 32
    if essentialOperatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0xfe657373656e7469616c4f70657261746f723a2063616c6c6572206973206e6f742074686520657373656e7469616c206f70657261746f,
                    mem[219 len 9]
    sub_2738ee79Address = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2738ee79Address)
    staticcall sub_2738ee79Address.WETH() with:
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
    uint256(stor11) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor11))
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x735445535443473a3a75706461746574657374434753776170526f757465723a20496e76616c696420706169722061646472657373,
                    mem[217 len 11]
    emit TestCGSwapRouterUpdated(msg.sender, sub_2738ee79Address, address(sub_03cbcd8aAddress));
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x655445535443473a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[205 len 23]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 18)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = checkpoints[address(arg1)][stor19[address(arg1)] + -(uint32(stor19[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor19[address(arg1)] + -(uint32(stor19[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == checkpoints[address(arg1)][stor19[address(arg1)] + -(uint32(stor19[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor19[address(arg1)] + -(uint32(stor19[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= checkpoints[address(arg1)][stor19[address(arg1)] + -(uint32(stor19[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'BEP20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor17[address(arg1)]]:
                    if arg2 + checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                    if numCheckpoints[stor17[address(arg1)]] <= 0:
                        checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]]].field_256 = arg2 + checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]] - 1 << 224].field_256
                        numCheckpoints[stor17[address(arg1)]] = uint32(numCheckpoints[stor17[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]]].field_256 = arg2 + checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]] - 1 << 224].field_256
                            numCheckpoints[stor17[address(arg1)]] = uint32(numCheckpoints[stor17[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                    if numCheckpoints[stor17[address(arg1)]] <= 0:
                        checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor17[address(arg1)]] = uint32(numCheckpoints[stor17[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor17[address(arg1)]][stor19[stor17[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor17[address(arg1)]] = uint32(numCheckpoints[stor17[address(arg1)]] + 1)
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
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor17[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                    if numCheckpoints[stor17[address(msg.sender)]] <= 0:
                        checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]]].field_256 = checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor17[address(msg.sender)]] = uint32(numCheckpoints[stor17[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[278 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[278 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]]].field_256 = checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor17[address(msg.sender)]] = uint32(numCheckpoints[stor17[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                    if numCheckpoints[stor17[address(msg.sender)]] <= 0:
                        checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor17[address(msg.sender)]] = uint32(numCheckpoints[stor17[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[278 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[278 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor17[address(msg.sender)]][stor19[stor17[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor17[address(msg.sender)]] = uint32(numCheckpoints[stor17[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
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
                    40,
                    0x2e5445535443473a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    address(arg6),
                    mem[ceil32(name.length) + 706 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 
                    32,
                    36,
                    0x735445535443473a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                    Mask(192, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    40,
                    0x735445535443473a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    address(arg6),
                    mem[ceil32(name.length) + 706 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, Mask(80, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, Mask(80, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor17[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, Mask(80, 0, arg5))
                    if numCheckpoints[stor17[address(signer)]] <= 0:
                        checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]]].field_256 = checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor17[address(signer)]] = uint32(numCheckpoints[stor17[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]] - 1 << 224].field_256, checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 824 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 824 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]] - 1 << 224].field_256, checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 760 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 760 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]]].field_256 = checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor17[address(signer)]] = uint32(numCheckpoints[stor17[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]] - 1 << 224].field_256, checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 824 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 824 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, Mask(80, 0, arg5))
                    if numCheckpoints[stor17[address(signer)]] <= 0:
                        checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor17[address(signer)]] = uint32(numCheckpoints[stor17[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 824 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 824 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 760 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 760 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor17[address(signer)]][stor19[stor17[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor17[address(signer)]] = uint32(numCheckpoints[stor17[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 824 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 824 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor19[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor19[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}



}
