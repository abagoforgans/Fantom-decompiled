contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint256 stor5;
address ethPriceSourceAddress;
uint256 stor7;
address erc721Address;
uint256 vaultCount;
uint256 debtCeiling;
uint256 closingFee;
uint256 openingFee;
uint256 treasury;
uint256 tokenPeg;
mapping of uint8 stor15;
mapping of address vaultOwner;
mapping of uint256 vaultCollateral;
mapping of uint256 vaultDebt;
address stabilityPoolAddress;
address owner;

function stabilityPool() {
    return stabilityPoolAddress
}

function totalSupply() {
    return totalSupply
}

function closingFee() {
    return closingFee
}

function vaultOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return vaultOwner[arg1]
}

function ethPriceSource() {
    return ethPriceSourceAddress
}

function treasury() {
    return treasury
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function openingFee() {
    return openingFee
}

function owner() {
    return owner
}

function getDebtCeiling() {
    return debtCeiling
}

function vaultExistence(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function getClosingFee() {
    return closingFee
}

function vaultCount() {
    return vaultCount
}

function getOpeningFee() {
    return openingFee
}

function erc721() {
    return erc721Address
}

function getTokenPriceSource() {
    return tokenPeg
}

function tokenPeg() {
    return tokenPeg
}

function vaultDebt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return vaultDebt[arg1]
}

function vaultCollateral(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return vaultCollateral[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function debtCeiling() {
    return debtCeiling
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTokenPeg(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenPeg = arg1
}

function setClosingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    closingFee = arg1
}

function setOpeningFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    openingFee = arg1
}

function setStabilityPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stabilityPoolAddress = arg1
}

function changeEthPriceSource(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ethPriceSourceAddress = arg1
}

function setTreasury(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor15[arg1]:
        revert with 0, 'Vault does not exist'
    treasury = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setDebtCeiling(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'setCeiling: Must be over the amount of outstanding debt.'
    debtCeiling = arg1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function createVault() {
    if vaultCount > -2:
        revert with 'NH{q', 17
    vaultCount++
    if vaultCount < vaultCount:
        revert with 'NH{q', 1
    stor15[stor9] = 1
    vaultOwner[stor9] = msg.sender
    emit CreateVault(vaultCount, msg.sender);
    require ext_code.size(erc721Address)
    call erc721Address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, vaultCount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return vaultCount
}

function depositCollateral(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor15[arg1]:
        revert with 0, 'Vault does not exist'
    if vaultOwner[arg1] != msg.sender:
        revert with 0, 'Vault is not owned by you'
    if vaultCollateral[arg1] > -msg.value - 1:
        revert with 'NH{q', 17
    if vaultCollateral[arg1] + msg.value < vaultCollateral[arg1]:
        revert with 'NH{q', 1
    vaultCollateral[arg1] += msg.value
    emit DepositCollateral(arg1, msg.value);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function getEthPriceSource() {
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferVault(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor15[arg1]:
        revert with 0, 'Vault does not exist'
    if vaultOwner[arg1] != msg.sender:
        revert with 0, 'Vault is not owned by you'
    vaultOwner[arg1] = arg2
    require ext_code.size(erc721Address)
    call erc721Address.burn(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc721Address)
    call erc721Address.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TransferVault(arg1, msg.sender, arg2);
}

function destroyVault(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor15[arg1]:
        revert with 0, 'Vault does not exist'
    if vaultOwner[arg1] != msg.sender:
        revert with 0, 'Vault is not owned by you'
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if vaultDebt[arg1]:
        revert with 0, 'Vault has outstanding debt'
    if vaultCollateral[arg1]:
        call msg.sender with:
           value vaultCollateral[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc721Address)
    call erc721Address.burn(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor15[arg1] = 0
    vaultOwner[arg1] = 0
    vaultCollateral[arg1] = 0
    vaultDebt[arg1] = 0
    emit DestroyVault(arg1);
    stor5 = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function payBackToken(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor15[arg1]:
        revert with 0, 'Vault does not exist'
    if vaultOwner[arg1] != msg.sender:
        revert with 0, 'Vault is not owned by you'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'Token balance too low'
    if vaultDebt[arg1] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault debt less than amount to pay back'
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] and 10000 > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if arg2 and closingFee > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * closingFee and tokenPeg > -1 / arg2 * closingFee:
        revert with 'NH{q', 17
    if not 10000 * ext_call.return_data[32]:
        revert with 'NH{q', 18
    if vaultDebt[arg1] < arg2:
        revert with 'NH{q', 17
    vaultDebt[arg1] -= arg2
    if vaultCollateral[arg1] < arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32]:
        revert with 'NH{q', 17
    vaultCollateral[arg1] -= arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32]
    if vaultCollateral[stor13] > -(arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32]) - 1:
        revert with 'NH{q', 17
    vaultCollateral[stor13] += arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32]
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, msg.sender, 0);
    emit PayBackToken(arg1, arg2, arg2 * closingFee * tokenPeg / 10000 * ext_call.return_data[32]);
}

function borrowToken(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor15[arg1]:
        revert with 0, 'Vault does not exist'
    if vaultOwner[arg1] != msg.sender:
        revert with 0, 'Vault is not owned by you'
    if arg2 <= 0:
        revert with 0, 'Must borrow non-zero amount'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    if totalSupply + arg2 > debtCeiling:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'borrowToken: Cannot mint over totalSupply.'
    if vaultDebt[arg1] > -arg2 - 1:
        revert with 'NH{q', 17
    if vaultDebt[arg1] + arg2 <= vaultDebt[arg1]:
        revert with 'NH{q', 1
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32]:
        revert with 'NH{q', 1
    if not tokenPeg:
        revert with 'NH{q', 1
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if vaultCollateral[arg1] and ext_call.return_data[32] > -1 / vaultCollateral[arg1]:
        revert with 'NH{q', 17
    if vaultCollateral[arg1] * ext_call.return_data[32] < vaultCollateral[arg1]:
        revert with 'NH{q', 1
    if vaultDebt[arg1] + arg2 and tokenPeg > -1 / vaultDebt[arg1] + arg2:
        revert with 'NH{q', 17
    if (vaultDebt[arg1] * tokenPeg) + (arg2 * tokenPeg) < vaultDebt[arg1] + arg2:
        revert with 'NH{q', 1
    if vaultCollateral[arg1] * ext_call.return_data[32] and 100 > -1 / vaultCollateral[arg1] * ext_call.return_data[32]:
        revert with 'NH{q', 17
    if 100 * vaultCollateral[arg1] * ext_call.return_data[32] <= vaultCollateral[arg1] * ext_call.return_data[32]:
        revert with 'NH{q', 1
    if not (vaultDebt[arg1] * tokenPeg) + (arg2 * tokenPeg):
        revert with 'NH{q', 18
    if 100 * vaultCollateral[arg1] * ext_call.return_data[32] / (vaultDebt[arg1] * tokenPeg) + (arg2 * tokenPeg) < stor7:
        revert with 0, 'Borrow would put vault below minimum collateral percentage'
    vaultDebt[arg1] += arg2
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(msg.sender)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += arg2
    emit Transfer(arg2, 0, msg.sender);
    emit BorrowToken(arg1, arg2);
}

function withdrawCollateral(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor15[arg1]:
        revert with 0, 'Vault does not exist'
    if vaultOwner[arg1] != msg.sender:
        revert with 0, 'Vault is not owned by you'
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if vaultCollateral[arg1] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault does not have enough collateral'
    if vaultCollateral[arg1] < arg2:
        revert with 'NH{q', 17
    if vaultDebt[arg1]:
        require ext_code.size(ethPriceSourceAddress)
        staticcall ethPriceSourceAddress.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if not ext_call.return_data[32]:
            revert with 'NH{q', 1
        if not tokenPeg:
            revert with 'NH{q', 1
        require ext_code.size(ethPriceSourceAddress)
        staticcall ethPriceSourceAddress.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if vaultCollateral[arg1] - arg2 and ext_call.return_data[32] > -1 / vaultCollateral[arg1] - arg2:
            revert with 'NH{q', 17
        if (vaultCollateral[arg1] * ext_call.return_data[32]) - (arg2 * ext_call.return_data[32]) < vaultCollateral[arg1] - arg2:
            revert with 'NH{q', 1
        if vaultDebt[arg1] and tokenPeg > -1 / vaultDebt[arg1]:
            revert with 'NH{q', 17
        if vaultDebt[arg1] * tokenPeg < vaultDebt[arg1]:
            revert with 'NH{q', 1
        if (vaultCollateral[arg1] * ext_call.return_data[32]) - (arg2 * ext_call.return_data[32]) and 100 > -1 / (vaultCollateral[arg1] * ext_call.return_data[32]) - (arg2 * ext_call.return_data[32]):
            revert with 'NH{q', 17
        if (100 * vaultCollateral[arg1] * ext_call.return_data[32]) - (100 * arg2 * ext_call.return_data[32]) <= (vaultCollateral[arg1] * ext_call.return_data[32]) - (arg2 * ext_call.return_data[32]):
            revert with 'NH{q', 1
        if not vaultDebt[arg1] * tokenPeg:
            revert with 'NH{q', 18
        if (100 * vaultCollateral[arg1] * ext_call.return_data[32]) - (100 * arg2 * ext_call.return_data[32]) / vaultDebt[arg1] * tokenPeg < stor7:
            revert with 0, 'Withdrawal would put vault below minimum collateral percentage'
    vaultCollateral[arg1] -= arg2
    call msg.sender with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit WithdrawCollateral(arg1, arg2);
    stor5 = 1
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function buyRiskyVault(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor15[arg1]:
        revert with 0, 'Vault does not exist'
    if stabilityPoolAddress:
        if stabilityPoolAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'buyRiskyVault disabled for public'
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32]:
        revert with 'NH{q', 1
    if not tokenPeg:
        revert with 'NH{q', 1
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if vaultCollateral[arg1] and ext_call.return_data[32] > -1 / vaultCollateral[arg1]:
        revert with 'NH{q', 17
    if vaultCollateral[arg1] * ext_call.return_data[32] < vaultCollateral[arg1]:
        revert with 'NH{q', 1
    if vaultDebt[arg1] and tokenPeg > -1 / vaultDebt[arg1]:
        revert with 'NH{q', 17
    if vaultDebt[arg1] * tokenPeg < vaultDebt[arg1]:
        revert with 'NH{q', 1
    if vaultCollateral[arg1] * ext_call.return_data[32] and 100 > -1 / vaultCollateral[arg1] * ext_call.return_data[32]:
        revert with 'NH{q', 17
    if 100 * vaultCollateral[arg1] * ext_call.return_data[32] <= vaultCollateral[arg1] * ext_call.return_data[32]:
        revert with 'NH{q', 1
    if not vaultDebt[arg1] * tokenPeg:
        revert with 'NH{q', 18
    if 100 * vaultCollateral[arg1] * ext_call.return_data[32] / vaultDebt[arg1] * tokenPeg >= stor7:
        revert with 0, 'Vault is not below minimum collateral percentage'
    if not stor7:
        revert with 'NH{q', 18
    if not tokenPeg:
        revert with 'NH{q', 18
    if vaultDebt[arg1] < 100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg:
        revert with 'NH{q', 17
    if balanceOf[address(msg.sender)] < vaultDebt[arg1] - (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg):
        revert with 0, 'Token balance too low to pay off outstanding debt'
    vaultOwner[arg1] = msg.sender
    vaultDebt[arg1] = 100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] and 10000 > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if vaultDebt[arg1] - (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg) and closingFee > -1 / vaultDebt[arg1] - (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg):
        revert with 'NH{q', 17
    if (vaultDebt[arg1] * closingFee) - (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg * closingFee) and tokenPeg > -1 / (vaultDebt[arg1] * closingFee) - (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg * closingFee):
        revert with 'NH{q', 17
    if not 10000 * ext_call.return_data[32]:
        revert with 'NH{q', 18
    if vaultCollateral[arg1] < (vaultDebt[arg1] * closingFee * tokenPeg) - (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg * closingFee * tokenPeg) / 10000 * ext_call.return_data[32]:
        revert with 'NH{q', 17
    vaultCollateral[arg1] -= (vaultDebt[arg1] * closingFee * tokenPeg) - (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg * closingFee * tokenPeg) / 10000 * ext_call.return_data[32]
    if vaultCollateral[stor13] > -((vaultDebt[arg1] * closingFee * tokenPeg) - (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg * closingFee * tokenPeg) / 10000 * ext_call.return_data[32]) - 1:
        revert with 'NH{q', 17
    vaultCollateral[stor13] += (vaultDebt[arg1] * closingFee * tokenPeg) - (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg * closingFee * tokenPeg) / 10000 * ext_call.return_data[32]
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < vaultDebt[arg1] - (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg):
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - vaultDebt[arg1] + (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg)
    if totalSupply < vaultDebt[arg1] - (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg):
        revert with 'NH{q', 17
    totalSupply = totalSupply - vaultDebt[arg1] + (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg)
    emit Transfer((vaultDebt[arg1] - (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg)), msg.sender, 0);
    require ext_code.size(erc721Address)
    call erc721Address.burn(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(erc721Address)
    call erc721Address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BuyRiskyVault(arg1, vaultOwner[arg1], msg.sender, vaultDebt[arg1] - (100 * vaultCollateral[arg1] * ext_call.return_data[32] / stor7 / tokenPeg));
}



}
