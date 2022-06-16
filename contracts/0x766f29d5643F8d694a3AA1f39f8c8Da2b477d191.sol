contract main {




// =====================  Runtime code  =====================


const maxPriceTaxRates = 15 * 10^17

const paprMultiplierStepExpansion = 10^17

const minPriceTaxRates = 6 * 10^17


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address primaryOwner; offset 8
address secondaryOwner;
address primaryOperatorAddress;
address operatorAddress;
mapping of uint256 feesTaxRate;
uint256 lockRatio;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
address paprOracleAddress;
address paprAddress;
address injectorAddress;

function getLockRatio() payable {
    return lockRatio
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function sub_1c000a6c(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function decimals() payable {
    return decimals
}

function secondaryOwner() payable {
    return secondaryOwner
}

function injector() payable {
    return injectorAddress
}

function operator() payable {
    return operatorAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function paprOracle() payable {
    return paprOracleAddress
}

function primaryOwner() payable {
    return primaryOwner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function lockRatio() payable {
    return lockRatio
}

function papr() payable {
    return paprAddress
}

function isSenderExcludedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[address(arg1)])
}

function isRecipientExcludedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[address(arg1)])
}

function primaryOperator() payable {
    return primaryOperatorAddress
}

function getfeesTaxRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return feesTaxRate[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function senderExcludedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function recipientExcludedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function _fallback() payable {
    revert
}

function isOperator() payable {
    if msg.sender == primaryOperatorAddress:
        return True
    return (msg.sender == operatorAddress)
}

function renounceOwnership() payable {
    if primaryOwner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit PrimaryOwnershipTransferred(primaryOwner, 0);
    primaryOwner = 0
}

function setfeesLockRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if primaryOperatorAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                        mem[200 len 28]
    lockRatio = arg1
}

function setpaprAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if primaryOperatorAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                        mem[200 len 28]
    paprAddress = arg1
}

function setInjectorAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if primaryOperatorAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                        mem[200 len 28]
    injectorAddress = arg1
}

function setpaprOracleAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if primaryOperatorAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                        mem[200 len 28]
    paprOracleAddress = arg1
}

function setfeesTaxRate(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if primaryOperatorAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                        mem[200 len 28]
    require arg2 <= 40
    feesTaxRate[arg1] = arg2
}

function removeSenderExcludedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    if primaryOperatorAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                        mem[200 len 28]
    require stor11[address(arg1)]
    stor11[address(arg1)] = 0
    return 1
}

function addSenderExcludedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    if primaryOperatorAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                        mem[200 len 28]
    require not stor11[address(arg1)]
    stor11[address(arg1)] = 1
    return 1
}

function removeRecipientExcludedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    if primaryOperatorAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                        mem[200 len 28]
    require stor12[address(arg1)]
    stor12[address(arg1)] = 0
    return 1
}

function addRecipientExcludedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    if primaryOperatorAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                        mem[200 len 28]
    require not stor12[address(arg1)]
    stor12[address(arg1)] = 1
    return 1
}

function transferPrimaryOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit PrimaryOwnershipTransferred(primaryOwner, arg1);
    primaryOwner = arg1
}

function setSecondaryOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x656f70657261746f723a207a65726f206164647265737320676976656e20666f72206e6577206f70657261746f,
                    mem[209 len 19]
    emit SecondaryOperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function setSecondaryOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit SecondaryOwnershipTransferred(secondaryOwner, arg1);
    secondaryOwner = arg1
}

function transferPrimaryOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x656f70657261746f723a207a65726f206164647265737320676976656e20666f72206e6577206f70657261746f,
                    mem[209 len 19]
    emit PrimaryOperatorTransferred(0, arg1);
    primaryOperatorAddress = arg1
}

function getPaprPrice() payable {
    require ext_code.size(paprOracleAddress)
    staticcall paprOracleAddress.0x3ddac953 with:
            gas gas_remaining wei
           args paprAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x654661696c656420746f20636f6e73756c7420504150522070726963652066726f6d20746865206f7261636c,
                    mem[208 len 20]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return (balanceOf[address(arg1)] > balanceOf[address(arg1)])
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function addBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    if primaryOperatorAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                        mem[200 len 28]
    if not arg1:
        revert with 0, 'You cannot blacklist 0x address'
    if stor13[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x735468697320757365722068617320616c7265616479206265656e20626c61636b6c69737465,
                    mem[202 len 26]
    stor13[address(arg1)] = 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function removeBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    if primaryOperatorAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                        mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65596f752063616e6e6f742064652d626c61636b6c69737420307820616464726573,
                    mem[198 len 30]
    if bool(stor13[address(arg1)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7254686973207573657220686173206e6f74206265656e20626c61636b6c69737465,
                    mem[198 len 30]
    stor13[address(arg1)] = 0
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x6445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x73596f752068617665206265656e20706170722d65642c206e6f207072696e746572692d6e6f,
                    mem[202 len 26]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor13[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x73596f752068617665206265656e20706170722d65642c206e6f207072696e746572692d6e6f,
                    mem[202 len 26]
    require ext_code.size(paprOracleAddress)
    staticcall paprOracleAddress.0x3ddac953 with:
            gas gas_remaining wei
           args paprAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x654661696c656420746f20636f6e73756c7420504150522070726963652066726f6d20746865206f7261636c,
                    mem[208 len 20]
    require return_data.size >= 32
    if bool(stor11[address(arg1)]) == 1:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if bool(stor12[address(arg2)]) == 1:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            require ext_code.size(paprOracleAddress)
            staticcall paprOracleAddress.0x3ddac953 with:
                    gas gas_remaining wei
                   args paprAddress, 10^18
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            44,
                            0x654661696c656420746f20636f6e73756c7420504150522070726963652066726f6d20746865206f7261636c,
                            mem[208 len 20]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 15 * 10^17:
                if not arg3:
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 32, 36, 0x6445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
                    if not arg1:
                        revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
                    if not arg1:
                        revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                    if 0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit Transfer(0, arg1, 0);
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                    if not injectorAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[358 len 26],
                                    mem[410 len 6]
                    if balanceOf[stor16] < balanceOf[stor16]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor16] = balanceOf[stor16]
                    emit Transfer(0, arg1, injectorAddress);
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[454 len 26],
                                    mem[506 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if feesTaxRate[10] * arg3 / arg3 != feesTaxRate[10]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if feesTaxRate[10] * arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not feesTaxRate[10] * arg3 / 100:
                        if 0 > feesTaxRate[10] * arg3 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if feesTaxRate[10] * arg3 / 100 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 32, 36, 0x6445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
                        if not arg1:
                            revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        allowance[address(arg1)][address(msg.sender)] -= feesTaxRate[10] * arg3 / 100
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - (feesTaxRate[10] * arg3 / 100)), arg1, msg.sender);
                        if not arg1:
                            revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
                        if feesTaxRate[10] * arg3 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                        balanceOf[address(arg1)] -= feesTaxRate[10] * arg3 / 100
                        if feesTaxRate[10] * arg3 / 100 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= feesTaxRate[10] * arg3 / 100
                        emit Transfer((feesTaxRate[10] * arg3 / 100), arg1, 0);
                        if not arg1:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                        if not injectorAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        if balanceOf[stor16] < balanceOf[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor16] = balanceOf[stor16]
                        emit Transfer(0, arg1, injectorAddress);
                    else:
                        if lockRatio * feesTaxRate[10] * arg3 / 100 / feesTaxRate[10] * arg3 / 100 != lockRatio:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if lockRatio * feesTaxRate[10] * arg3 / 100 / 100 > feesTaxRate[10] * arg3 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (feesTaxRate[10] * arg3 / 100) - (lockRatio * feesTaxRate[10] * arg3 / 100 / 100) > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 32, 36, 0x6445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
                        if not arg1:
                            revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - (feesTaxRate[10] * arg3 / 100) + (lockRatio * feesTaxRate[10] * arg3 / 100 / 100)
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - (feesTaxRate[10] * arg3 / 100) + (lockRatio * feesTaxRate[10] * arg3 / 100 / 100)), arg1, msg.sender);
                        if not arg1:
                            revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
                        if (feesTaxRate[10] * arg3 / 100) - (lockRatio * feesTaxRate[10] * arg3 / 100 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (feesTaxRate[10] * arg3 / 100) + (lockRatio * feesTaxRate[10] * arg3 / 100 / 100)
                        if (feesTaxRate[10] * arg3 / 100) - (lockRatio * feesTaxRate[10] * arg3 / 100 / 100) > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply = totalSupply - (feesTaxRate[10] * arg3 / 100) + (lockRatio * feesTaxRate[10] * arg3 / 100 / 100)
                        emit Transfer(((feesTaxRate[10] * arg3 / 100) - (lockRatio * feesTaxRate[10] * arg3 / 100 / 100)), arg1, 0);
                        if not arg1:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                        if not injectorAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                        if lockRatio * feesTaxRate[10] * arg3 / 100 / 100 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(arg1)] -= lockRatio * feesTaxRate[10] * arg3 / 100 / 100
                        if (lockRatio * feesTaxRate[10] * arg3 / 100 / 100) + balanceOf[stor16] < balanceOf[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor16] += lockRatio * feesTaxRate[10] * arg3 / 100 / 100
                        emit Transfer((lockRatio * feesTaxRate[10] * arg3 / 100 / 100), arg1, injectorAddress);
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                    if arg3 - (feesTaxRate[10] * arg3 / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[454 len 26],
                                    mem[506 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (feesTaxRate[10] * arg3 / 100)
                    if arg3 - (feesTaxRate[10] * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (feesTaxRate[10] * arg3 / 100) + balanceOf[arg2]
                    emit Transfer((arg3 - (feesTaxRate[10] * arg3 / 100)), arg1, arg2);
            else:
                if ext_call.return_data[0] <= 6 * 10^17:
                    if not arg3:
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 32, 36, 0x6445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
                        if not arg1:
                            revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
                        if not arg1:
                            revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit Transfer(0, arg1, 0);
                        if not arg1:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                        if not injectorAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        if balanceOf[stor16] < balanceOf[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor16] = balanceOf[stor16]
                        emit Transfer(0, arg1, injectorAddress);
                        if not arg1:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[454 len 26],
                                        mem[506 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if feesTaxRate[0] * arg3 / arg3 != feesTaxRate[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if feesTaxRate[0] * arg3 / 100 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not feesTaxRate[0] * arg3 / 100:
                            if 0 > feesTaxRate[0] * arg3 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if feesTaxRate[0] * arg3 / 100 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 36, 0x6445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
                            if not arg1:
                                revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                            allowance[address(arg1)][address(msg.sender)] -= feesTaxRate[0] * arg3 / 100
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - (feesTaxRate[0] * arg3 / 100)), arg1, msg.sender);
                            if not arg1:
                                revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
                            if feesTaxRate[0] * arg3 / 100 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                            balanceOf[address(arg1)] -= feesTaxRate[0] * arg3 / 100
                            if feesTaxRate[0] * arg3 / 100 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= feesTaxRate[0] * arg3 / 100
                            emit Transfer((feesTaxRate[0] * arg3 / 100), arg1, 0);
                            if not arg1:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                            if not injectorAddress:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            if balanceOf[stor16] < balanceOf[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor16] = balanceOf[stor16]
                            emit Transfer(0, arg1, injectorAddress);
                        else:
                            if lockRatio * feesTaxRate[0] * arg3 / 100 / feesTaxRate[0] * arg3 / 100 != lockRatio:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if lockRatio * feesTaxRate[0] * arg3 / 100 / 100 > feesTaxRate[0] * arg3 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (feesTaxRate[0] * arg3 / 100) - (lockRatio * feesTaxRate[0] * arg3 / 100 / 100) > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 36, 0x6445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
                            if not arg1:
                                revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - (feesTaxRate[0] * arg3 / 100) + (lockRatio * feesTaxRate[0] * arg3 / 100 / 100)
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - (feesTaxRate[0] * arg3 / 100) + (lockRatio * feesTaxRate[0] * arg3 / 100 / 100)), arg1, msg.sender);
                            if not arg1:
                                revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
                            if (feesTaxRate[0] * arg3 / 100) - (lockRatio * feesTaxRate[0] * arg3 / 100 / 100) > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - (feesTaxRate[0] * arg3 / 100) + (lockRatio * feesTaxRate[0] * arg3 / 100 / 100)
                            if (feesTaxRate[0] * arg3 / 100) - (lockRatio * feesTaxRate[0] * arg3 / 100 / 100) > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply = totalSupply - (feesTaxRate[0] * arg3 / 100) + (lockRatio * feesTaxRate[0] * arg3 / 100 / 100)
                            emit Transfer(((feesTaxRate[0] * arg3 / 100) - (lockRatio * feesTaxRate[0] * arg3 / 100 / 100)), arg1, 0);
                            if not arg1:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                            if not injectorAddress:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                            if lockRatio * feesTaxRate[0] * arg3 / 100 / 100 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(arg1)] -= lockRatio * feesTaxRate[0] * arg3 / 100 / 100
                            if (lockRatio * feesTaxRate[0] * arg3 / 100 / 100) + balanceOf[stor16] < balanceOf[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor16] += lockRatio * feesTaxRate[0] * arg3 / 100 / 100
                            emit Transfer((lockRatio * feesTaxRate[0] * arg3 / 100 / 100), arg1, injectorAddress);
                        if not arg1:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                        if arg3 - (feesTaxRate[0] * arg3 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[454 len 26],
                                        mem[506 len 6]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (feesTaxRate[0] * arg3 / 100)
                        if arg3 - (feesTaxRate[0] * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = arg3 - (feesTaxRate[0] * arg3 / 100) + balanceOf[arg2]
                        emit Transfer((arg3 - (feesTaxRate[0] * arg3 / 100)), arg1, arg2);
                else:
                    if 6 * 10^17 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1 < ext_call.return_data[0] - 6 * 10^17 / 10^17:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg3:
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 32, 36, 0x6445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
                        if not arg1:
                            revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
                        if not arg1:
                            revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit Transfer(0, arg1, 0);
                        if not arg1:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                        if not injectorAddress:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        if balanceOf[stor16] < balanceOf[stor16]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor16] = balanceOf[stor16]
                        emit Transfer(0, arg1, injectorAddress);
                        if not arg1:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[454 len 26],
                                        mem[506 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / arg3 != feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100:
                            if 0 > feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 36, 0x6445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
                            if not arg1:
                                revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                            allowance[address(arg1)][address(msg.sender)] -= feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - (feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100)), arg1, msg.sender);
                            if not arg1:
                                revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
                            if feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                            balanceOf[address(arg1)] -= feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100
                            if feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100
                            emit Transfer((feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100), arg1, 0);
                            if not arg1:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                            if not injectorAddress:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                            if 0 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            if balanceOf[stor16] < balanceOf[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor16] = balanceOf[stor16]
                            emit Transfer(0, arg1, injectorAddress);
                        else:
                            if lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 != lockRatio:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / 100 > feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100) - (lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / 100) > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 36, 0x6445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
                            if not arg1:
                                revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - (feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100) + (lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / 100)
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - (feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100) + (lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / 100)), arg1, msg.sender);
                            if not arg1:
                                revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
                            if (feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100) - (lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / 100) > balanceOf[address(arg1)]:
                                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - (feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100) + (lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / 100)
                            if (feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100) - (lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / 100) > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply = totalSupply - (feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100) + (lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / 100)
                            emit Transfer(((feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100) - (lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / 100)), arg1, 0);
                            if not arg1:
                                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                            if not injectorAddress:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                            if lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / 100 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(arg1)] -= lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / 100
                            if (lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / 100) + balanceOf[stor16] < balanceOf[stor16]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor16] += lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / 100
                            emit Transfer((lockRatio * feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100 / 100), arg1, injectorAddress);
                        if not arg1:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                        if arg3 - (feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100) > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[454 len 26],
                                        mem[506 len 6]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100)
                        if arg3 - (feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = arg3 - (feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100) + balanceOf[arg2]
                        emit Transfer((arg3 - (feesTaxRate[(ext_call.return_data[0] - 6 * 10^17 / 10^17) + 1] * arg3 / 100)), arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[552 len 24],
                            mem[600 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x2e45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[680 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[678 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
