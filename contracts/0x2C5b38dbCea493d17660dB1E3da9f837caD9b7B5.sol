contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#
const decimals = 18

const MAXIMUM_TRANSFER_TAX_RATE = 1000

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf

const BURN_ADDRESS = 57005


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint16 stor5;
uint16 transferTaxRate; offset 160
uint16 burnRate; offset 176
uint16 liquidityRate; offset 192
address owner;
uint16 maxTransferAmountRate;
mapping of uint8 stor9;
uint256 sub_b07a812e;
uint8 stor12;
uint256 minAmountToLiquify;
address sub_2eabaa0fAddress;
address sub_f08bd0fdAddress;
uint256 stor15;
address sub_297845f8Address;
address sub_24c38742Address;
address operatorAddress;
address stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_24c38742(?) {
    return sub_24c38742Address
}

function isExcludedFromAntiWhale(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[address(arg1)])
}

function sub_297845f8(?) {
    return sub_297845f8Address
}

function sub_2eabaa0f(?) {
    return sub_2eabaa0fAddress
}

function getTransferTaxRate() {
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    return transferTaxRate
}

function maxTransferAmountRate() {
    return maxTransferAmountRate
}

function swapAndLiquifyEnabled() {
    return bool(stor12)
}

function liquidityRate() {
    return liquidityRate
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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_b07a812e(?) {
    return sub_b07a812e
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

function sub_f08bd0fd(?) {
    return address(sub_f08bd0fdAddress)
}

function checkpoints(address arg1, uint32 arg2) {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getCurrentVotes(address arg1) {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function setExcludedFromAntiWhale(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    stor9[address(arg1)] = uint8(arg2)
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
    stor12 = uint8(arg1)
}

function maxTransferAmount() {
    if not totalSupply:
        return 0
    if maxTransferAmountRate * totalSupply / totalSupply != maxTransferAmountRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (maxTransferAmountRate * totalSupply / 10000)
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
                    0x2e4251423a3a7570646174654275726e526174653a204275726e2072617465206d757374206e6f742065786365656420746865206d6178696d756d2072617465
    emit BurnRateUpdated(stor5, arg1, msg.sender);
    burnRate = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function updateMasterchef(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if sub_297845f8Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734251423a3a4d6173746572636865663a204d61737465726368656620616c72656164792075706461746564,
                    mem[208 len 20]
    sub_297845f8Address = arg1
    emit BloqMasterchefUpdated(msg.sender, arg1);
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
                    0x734251423a3a7472616e736665724f70657261746f723a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
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
                    0x7945524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    79,
                    0x6f4251423a3a7570646174655472616e73666572546178526174653a205472616e73666572207461782072617465206d757374206e6f742065786365656420746865206d6178696d756d2072617465,
                    mem[243 len 17]
    emit TransferTaxRateUpdated(stor5, arg1, msg.sender);
    transferTaxRate = arg1
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
                    0x2e4251423a3a7570646174654d61785472616e73666572416d6f756e74526174653a204d6178207472616e7366657220616d6f756e742072617465206d757374206e6f742065786365656420746865206d6178696d756d2072617465,
                    mem[256 len 4]
    emit MaxTransferAmountRateUpdated(maxTransferAmountRate, arg1, msg.sender);
    maxTransferAmountRate = arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_f9342f9b(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(sub_2eabaa0fAddress)
    staticcall sub_2eabaa0fAddress.WFTM() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        revert with 0, 32, 36, 0x6445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not sub_2eabaa0fAddress:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg2)][stor14] = arg1
    emit Approval(arg1, arg2, sub_2eabaa0fAddress);
    mem[420 len 0] = None
    require ext_code.size(sub_2eabaa0fAddress)
    call sub_2eabaa0fAddress.0x552cb133 with:
         gas gas_remaining wei
        args arg1, 0, 192, address(arg2), address(arg3), block.timestamp, 2, mem[420 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateLottery(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0, 'Update Lottery: Wrong address.'
    stor22++
    if 3 < stor22 + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73557064617465204c6f74746572793a20746f6f206d756368207570646174696e67206c6f7474657279,
                    mem[206 len 22]
    sub_24c38742Address = arg1
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + 10000000 * 10^18 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 10000000 * 10^18
    if balanceOf[address(arg1)] + 10000000 * 10^18 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += 10000000 * 10^18
    emit Transfer(10000000 * 10^18, 0, arg1);
}

function sub_7237310b(?) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg2 > 200000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734251423a3a7472616e736665723a20746f6f206d75636820616d6f756e74206d6f6e74686c,
                    mem[202 len 26]
    if stor21:
        if block.timestamp - stor20 <= 696 * 24 * 3600:
            revert with 0, 'Need to wait 1 month'
    if stor21 + arg2 > 10000000 * 10^18:
        revert with 0, 'BQB::transfer: too much amount'
    stor21 += arg2
    stor20 = block.timestamp
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    stor19 = arg1
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734251423a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[202 len 26]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 24)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = checkpoints[address(arg1)][stor25[address(arg1)] + -(uint32(stor25[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor25[address(arg1)] + -(uint32(stor25[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == checkpoints[address(arg1)][stor25[address(arg1)] + -(uint32(stor25[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor25[address(arg1)] + -(uint32(stor25[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= checkpoints[address(arg1)][stor25[address(arg1)] + -(uint32(stor25[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function updateBloqBallRouter(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e6f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if sub_2eabaa0fAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x654251423a3a757064617465426c6f7142616c6c526f757465723a20426c6f7142616c6c20526f7574657220616c72656164792075706461746564,
                    mem[223 len 5]
    sub_2eabaa0fAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2eabaa0fAddress)
    staticcall sub_2eabaa0fAddress.WFTM() with:
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
    uint256(stor15) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor15))
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x724251423a3a757064617465426c6f7142616c6c526f757465723a20496e76616c696420706169722061646472657373,
                    mem[212 len 16]
    emit BloqBallRouterUpdated(msg.sender, sub_2eabaa0fAddress, address(sub_f08bd0fdAddress));
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
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
                if numCheckpoints[stor23[address(arg1)]]:
                    if arg2 + checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[179 len 13])
                    if numCheckpoints[stor23[address(arg1)]] <= 0:
                        checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]]].field_256 = arg2 + checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]] - 1 << 224].field_256
                        numCheckpoints[stor23[address(arg1)]] = uint32(numCheckpoints[stor23[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]]].field_256 = arg2 + checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]] - 1 << 224].field_256
                            numCheckpoints[stor23[address(arg1)]] = uint32(numCheckpoints[stor23[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[179 len 13])
                    if numCheckpoints[stor23[address(arg1)]] <= 0:
                        checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor23[address(arg1)]] = uint32(numCheckpoints[stor23[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor23[address(arg1)]][stor25[stor23[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor23[address(arg1)]] = uint32(numCheckpoints[stor23[address(arg1)]] + 1)
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
                        if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[179 len 13])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                        Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[179 len 13])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor23[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[179 len 13])
                    if numCheckpoints[stor23[address(msg.sender)]] <= 0:
                        checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]]].field_256 = checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor23[address(msg.sender)]] = uint32(numCheckpoints[stor23[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[275 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[275 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]]].field_256 = checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor23[address(msg.sender)]] = uint32(numCheckpoints[stor23[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[179 len 13])
                    if numCheckpoints[stor23[address(msg.sender)]] <= 0:
                        checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor23[address(msg.sender)]] = uint32(numCheckpoints[stor23[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[275 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[275 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor23[address(msg.sender)]][stor25[stor23[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor23[address(msg.sender)]] = uint32(numCheckpoints[stor23[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x734251423a3a5f7772697465436865636b706f696e743a20626c6f636b206e75,
                                                    Mask(152, 0, 0x6d626572206578636565647320333220626974, mem[339 len 13])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor25[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor25[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}



}
