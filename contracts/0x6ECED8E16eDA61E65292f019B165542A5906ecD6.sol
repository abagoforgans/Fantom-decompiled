contract main {




// =====================  Runtime code  =====================


const name = 'PUMPKINS'

const decimals = 18

const symbol = ''


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
uint256 totalSupply;
uint256 totalFees;
uint256 totalBurn;
uint256 _BURN_FEE;
uint256 _FARM_FEE;
uint256 _ILP_FEE;
uint256 _DEV_FEE;
uint256 _MARKETING_FEE;
uint256 _MAX_TX_SIZE;
address wDevAddress;
address wFarmAddress;
address wKinsIlpAddress;
address wKinsmasterAddress;
address wMarketingAddress;
uint8 takeFee; offset 160
uint128 stor19; offset 160
address operatorAddress;

function WKinsIlp() payable {
    return wKinsIlpAddress
}

function totalFees() payable {
    return totalFees
}

function totalSupply() payable {
    return totalSupply
}

function WDev() payable {
    return wDevAddress
}

function WFarm() payable {
    return wFarmAddress
}

function totalBurn() payable {
    return totalBurn
}

function isExcludedFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function operator() payable {
    return operatorAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _BURN_FEE() payable {
    return _BURN_FEE
}

function owner() payable {
    return owner
}

function WMarketing() payable {
    return wMarketingAddress
}

function _MAX_TX_SIZE() payable {
    return _MAX_TX_SIZE
}

function _MARKETING_FEE() payable {
    return _MARKETING_FEE
}

function _ILP_FEE() payable {
    return _ILP_FEE
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _FARM_FEE() payable {
    return _FARM_FEE
}

function WKinsmaster() payable {
    return wKinsmasterAddress
}

function TakeFee() payable {
    return bool(takeFee)
}

function _DEV_FEE() payable {
    return _DEV_FEE
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function includeInFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor3[address(arg1)]:
        revert with 0, 'Account is not excluded From Fee'
    stor3[address(arg1)] = 0
    emit IncludeInFee(arg1);
}

function setTakeFee(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    stor19 = Mask(96, 0, arg1)
    return 1
}

function setWFarm(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    wFarmAddress = arg1
    stor3[address(arg1)] = 1
    return 1
}

function setWKinsIlp(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    wKinsIlpAddress = arg1
    stor3[address(arg1)] = 1
    return 1
}

function setWMarketing(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    wMarketingAddress = arg1
    stor3[address(arg1)] = 1
    return 1
}

function setDev(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    wDevAddress = arg1
    stor3[address(arg1)] = 1
    emit 0x627687be: arg1
}

function setWKinsmaster(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    wKinsmasterAddress = arg1
    stor3[address(arg1)] = 1
    return 1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    operatorAddress = arg1
    stor3[address(arg1)] = 1
    emit 0x627687be: arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function excludeFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x654163636f756e7420697320616c7265616479206578636c756465642046726f6d204665,
                    mem[200 len 28]
    stor3[address(arg1)] = 1
    emit ExcludeFromFee(arg1);
}

function setIlpFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    if arg1 > 20:
        revert with 0, 'Error : MaxIlpFee is 2%'
    _ILP_FEE = arg1
    emit 0x87fcfbee: _ILP_FEE, arg1
}

function setDevFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    if arg1 > 20:
        revert with 0, 'Error : MaxDevFee is 2%'
    _DEV_FEE = arg1
    emit DevFeeUpdated(_DEV_FEE, arg1);
}

function setBurnFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    if arg1 > 50:
        revert with 0, 'Error : MaxBurnFee is 5%'
    _BURN_FEE = arg1
    emit 0x78f14612: _BURN_FEE, arg1
}

function setFarmFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    if arg1 > 100:
        revert with 0, 'Error : MaxFarmFee is 10%'
    _FARM_FEE = arg1
    emit 0x78f14612: _FARM_FEE, arg1
}

function setMarketingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    if arg1 > 20:
        revert with 0, 'Error : MaxMarketingFee is 2%'
    _MARKETING_FEE = arg1
    emit DevFeeUpdated(_MARKETING_FEE, _DEV_FEE);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    if arg1 + totalBurn < totalBurn:
        revert with 0, 'SafeMath: addition overflow'
    totalBurn += arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function setMaxTxPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x654572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    if arg1 < 5:
        revert with 0, 'Error : Minimum maxTxLimit is 5%'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x724572726f72203a204d6178696d756d206d617854784c696d697420697320313030,
                    mem[198 len 30]
    if not totalSupply:
        _MAX_TX_SIZE = 0
    else:
        if arg1 * totalSupply / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        _MAX_TX_SIZE = arg1 * totalSupply / 100
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor3[address(arg1)]:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if stor3[address(arg2)]:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if not takeFee:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
            else:
                if arg3 > _MAX_TX_SIZE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x73416d6f756e74206c6172676572207468616e204d6178207472616e73666572206c696d69,
                                mem[201 len 27]
                if not arg3:
                    if not arg3:
                        if not arg3:
                            if not arg3:
                                if not arg3:
                                    if 0 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] -= arg3
                                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _MARKETING_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg3 / 1000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += _MARKETING_FEE * arg3 / 1000
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000)), arg1, arg2);
                            else:
                                if _DEV_FEE * arg3 / arg3 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg3:
                                    if _DEV_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg3 / 1000 < _DEV_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg3 / 1000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += _DEV_FEE * arg3 / 1000
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_DEV_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_DEV_FEE * arg3 / 1000)
                                    if arg3 - (_DEV_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_DEV_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_DEV_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _DEV_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) < _DEV_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000)), arg1, arg2);
                        else:
                            if _ILP_FEE * arg3 / arg3 != _ILP_FEE:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not arg3:
                                if not arg3:
                                    if _ILP_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg3 / 1000 < _ILP_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg3 / 1000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_ILP_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += _ILP_FEE * arg3 / 1000
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_ILP_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_ILP_FEE * arg3 / 1000)
                                    if arg3 - (_ILP_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_ILP_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_ILP_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _ILP_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg3 / 1000 < _ILP_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) < _ILP_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000)), arg1, arg2);
                            else:
                                if _DEV_FEE * arg3 / arg3 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg3:
                                    if _ILP_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) < _ILP_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000)
                                    if arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _ILP_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) < _ILP_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000)), arg1, arg2);
                    else:
                        if _BURN_FEE * arg3 / arg3 != _BURN_FEE:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not arg3:
                            if not arg3:
                                if not arg3:
                                    if _BURN_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg3 / 1000 < _BURN_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg3 / 1000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_BURN_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += _BURN_FEE * arg3 / 1000
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_BURN_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_BURN_FEE * arg3 / 1000)
                                    if arg3 - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_BURN_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _BURN_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg3 / 1000 < _BURN_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) < _BURN_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000)), arg1, arg2);
                            else:
                                if _DEV_FEE * arg3 / arg3 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg3:
                                    if _BURN_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg3 / 1000 < _BURN_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) < _BURN_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000)
                                    if arg3 - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _BURN_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg3 / 1000 < _BURN_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) < _BURN_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000)), arg1, arg2);
                        else:
                            if _ILP_FEE * arg3 / arg3 != _ILP_FEE:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not arg3:
                                if not arg3:
                                    if _BURN_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) < _BURN_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000)
                                    if arg3 - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _BURN_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) < _BURN_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000)), arg1, arg2);
                            else:
                                if _DEV_FEE * arg3 / arg3 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg3:
                                    if _BURN_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) < _BURN_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000)
                                    if arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _BURN_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) < _BURN_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000)), arg1, arg2);
                else:
                    if _FARM_FEE * arg3 / arg3 != _FARM_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not arg3:
                        if not arg3:
                            if not arg3:
                                if not arg3:
                                    if _FARM_FEE * arg3 / 1000 < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _FARM_FEE * arg3 / 1000 > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += _FARM_FEE * arg3 / 1000
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _FARM_FEE * arg3 / 1000 < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                            else:
                                if _DEV_FEE * arg3 / arg3 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg3:
                                    if _FARM_FEE * arg3 / 1000 < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_DEV_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_DEV_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_DEV_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_DEV_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_DEV_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_DEV_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _FARM_FEE * arg3 / 1000 < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                        else:
                            if _ILP_FEE * arg3 / arg3 != _ILP_FEE:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not arg3:
                                if not arg3:
                                    if _FARM_FEE * arg3 / 1000 < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _FARM_FEE * arg3 / 1000 < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                            else:
                                if _DEV_FEE * arg3 / arg3 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg3:
                                    if _FARM_FEE * arg3 / 1000 < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _FARM_FEE * arg3 / 1000 < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                    else:
                        if _BURN_FEE * arg3 / arg3 != _BURN_FEE:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not arg3:
                            if not arg3:
                                if not arg3:
                                    if (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                            else:
                                if _DEV_FEE * arg3 / arg3 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg3:
                                    if (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                        else:
                            if _ILP_FEE * arg3 / arg3 != _ILP_FEE:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not arg3:
                                if not arg3:
                                    if (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                            else:
                                if _DEV_FEE * arg3 / arg3 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg3:
                                    if (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                                else:
                                    if _MARKETING_FEE * arg3 / arg3 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) < _FARM_FEE * arg3 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg3 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) > arg3:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg3 != arg3:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000) + totalFees
                                    if not arg1:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(arg1)] -= _BURN_FEE * arg3 / 1000
                                    if _BURN_FEE * arg3 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg3 / 1000
                                    if (_BURN_FEE * arg3 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg3 / 1000
                                    emit Transfer((_BURN_FEE * arg3 / 1000), arg1, 0);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(arg1)] -= _FARM_FEE * arg3 / 1000
                                    if (_FARM_FEE * arg3 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg3 / 1000
                                    emit Transfer((_FARM_FEE * arg3 / 1000), arg1, wFarmAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(arg1)] -= _ILP_FEE * arg3 / 1000
                                    if (_ILP_FEE * arg3 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg3 / 1000
                                    emit Transfer((_ILP_FEE * arg3 / 1000), arg1, wKinsIlpAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(arg1)] -= _DEV_FEE * arg3 / 1000
                                    if (_DEV_FEE * arg3 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg3 / 1000
                                    emit Transfer((_DEV_FEE * arg3 / 1000), arg1, wDevAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg3 / 1000 > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(arg1)] -= _MARKETING_FEE * arg3 / 1000
                                    if (_MARKETING_FEE * arg3 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg3 / 1000
                                    emit Transfer((_MARKETING_FEE * arg3 / 1000), arg1, wMarketingAddress);
                                    if not arg1:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg2:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) > balanceOf[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (_MARKETING_FEE * arg3 / 1000) + (_DEV_FEE * arg3 / 1000) + (_ILP_FEE * arg3 / 1000) + (_BURN_FEE * arg3 / 1000) + (_FARM_FEE * arg3 / 1000)
                                    if arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2] < balanceOf[arg2]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg2)] = arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000) + balanceOf[arg2]
                                    emit Transfer((arg3 - (_MARKETING_FEE * arg3 / 1000) - (_DEV_FEE * arg3 / 1000) - (_ILP_FEE * arg3 / 1000) - (_BURN_FEE * arg3 / 1000) - (_FARM_FEE * arg3 / 1000)), arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[1192 len 24],
                                mem[1240 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[1320 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[1318 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor3[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
    else:
        if stor3[address(arg1)]:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
        else:
            if not takeFee:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
            else:
                if arg2 > _MAX_TX_SIZE:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x73416d6f756e74206c6172676572207468616e204d6178207472616e73666572206c696d69,
                                mem[201 len 27]
                if not arg2:
                    if not arg2:
                        if not arg2:
                            if not arg2:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += _MARKETING_FEE * arg2 / 1000
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < _DEV_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += _DEV_FEE * arg2 / 1000
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_DEV_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) < _DEV_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000)), msg.sender, arg1);
                        else:
                            if _ILP_FEE * arg2 / arg2 != _ILP_FEE:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not arg2:
                                if not arg2:
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg2 / 1000 < _ILP_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_ILP_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += _ILP_FEE * arg2 / 1000
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_ILP_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_ILP_FEE * arg2 / 1000)
                                    if arg2 - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_ILP_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg2 / 1000 < _ILP_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) < _ILP_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) < _ILP_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) < _ILP_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000)), msg.sender, arg1);
                    else:
                        if _BURN_FEE * arg2 / arg2 != _BURN_FEE:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not arg2:
                            if not arg2:
                                if not arg2:
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg2 / 1000 < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += _BURN_FEE * arg2 / 1000
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg2 / 1000 < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg2 / 1000 < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _BURN_FEE * arg2 / 1000 < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                        else:
                            if _ILP_FEE * arg2 / arg2 != _ILP_FEE:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not arg2:
                                if not arg2:
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _BURN_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) < _BURN_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    if balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] = balanceOf[stor15]
                                    emit Transfer(0, msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000)), msg.sender, arg1);
                else:
                    if _FARM_FEE * arg2 / arg2 != _FARM_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not arg2:
                        if not arg2:
                            if not arg2:
                                if not arg2:
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _FARM_FEE * arg2 / 1000 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += _FARM_FEE * arg2 / 1000
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                        else:
                            if _ILP_FEE * arg2 / arg2 != _ILP_FEE:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not arg2:
                                if not arg2:
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if _FARM_FEE * arg2 / 1000 < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    if 0 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                    else:
                        if _BURN_FEE * arg2 / arg2 != _BURN_FEE:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not arg2:
                            if not arg2:
                                if not arg2:
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    if balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] = balanceOf[stor16]
                                    emit Transfer(0, msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                        else:
                            if _ILP_FEE * arg2 / arg2 != _ILP_FEE:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not arg2:
                                if not arg2:
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    if balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] = balanceOf[stor14]
                                    emit Transfer(0, msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                            else:
                                if _DEV_FEE * arg2 / arg2 != _DEV_FEE:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not arg2:
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    if balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] = balanceOf[stor18]
                                    emit Transfer(0, msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
                                else:
                                    if _MARKETING_FEE * arg2 / arg2 != _MARKETING_FEE:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) < _FARM_FEE * arg2 / 1000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _ILP_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _DEV_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if _MARKETING_FEE * arg2 / 1000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg2 != arg2:
                                        revert with 0, 'KINS Transfer: Fee value invalid'
                                    if (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees = (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000) + totalFees
                                    if not msg.sender:
                                        revert with 0, 32, 33, 0x2545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[581 len 31]
                                    if _BURN_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[546 len 30], mem[606 len 2]
                                    balanceOf[address(msg.sender)] -= _BURN_FEE * arg2 / 1000
                                    if _BURN_FEE * arg2 / 1000 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalSupply -= _BURN_FEE * arg2 / 1000
                                    if (_BURN_FEE * arg2 / 1000) + totalBurn < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalBurn += _BURN_FEE * arg2 / 1000
                                    emit Transfer((_BURN_FEE * arg2 / 1000), msg.sender, 0);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[745 len 27]
                                    if not wFarmAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[743 len 29]
                                    if _FARM_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[710 len 26],
                                                    mem[762 len 6]
                                    balanceOf[address(msg.sender)] -= _FARM_FEE * arg2 / 1000
                                    if (_FARM_FEE * arg2 / 1000) + balanceOf[stor15] < balanceOf[stor15]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor15] += _FARM_FEE * arg2 / 1000
                                    emit Transfer((_FARM_FEE * arg2 / 1000), msg.sender, wFarmAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[841 len 27]
                                    if not wKinsIlpAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[839 len 29]
                                    if _ILP_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[806 len 26],
                                                    mem[858 len 6]
                                    balanceOf[address(msg.sender)] -= _ILP_FEE * arg2 / 1000
                                    if (_ILP_FEE * arg2 / 1000) + balanceOf[stor16] < balanceOf[stor16]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor16] += _ILP_FEE * arg2 / 1000
                                    emit Transfer((_ILP_FEE * arg2 / 1000), msg.sender, wKinsIlpAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[937 len 27]
                                    if not wDevAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[935 len 29]
                                    if _DEV_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[902 len 26],
                                                    mem[954 len 6]
                                    balanceOf[address(msg.sender)] -= _DEV_FEE * arg2 / 1000
                                    if (_DEV_FEE * arg2 / 1000) + balanceOf[stor14] < balanceOf[stor14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor14] += _DEV_FEE * arg2 / 1000
                                    emit Transfer((_DEV_FEE * arg2 / 1000), msg.sender, wDevAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1033 len 27]
                                    if not wMarketingAddress:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1031 len 29]
                                    if _MARKETING_FEE * arg2 / 1000 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[998 len 26],
                                                    mem[1050 len 6]
                                    balanceOf[address(msg.sender)] -= _MARKETING_FEE * arg2 / 1000
                                    if (_MARKETING_FEE * arg2 / 1000) + balanceOf[stor18] < balanceOf[stor18]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor18] += _MARKETING_FEE * arg2 / 1000
                                    emit Transfer((_MARKETING_FEE * arg2 / 1000), msg.sender, wMarketingAddress);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[1094 len 26],
                                                    mem[1146 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (_MARKETING_FEE * arg2 / 1000) + (_DEV_FEE * arg2 / 1000) + (_ILP_FEE * arg2 / 1000) + (_BURN_FEE * arg2 / 1000) + (_FARM_FEE * arg2 / 1000)
                                    if arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000) + balanceOf[arg1]
                                    emit Transfer((arg2 - (_MARKETING_FEE * arg2 / 1000) - (_DEV_FEE * arg2 / 1000) - (_ILP_FEE * arg2 / 1000) - (_BURN_FEE * arg2 / 1000) - (_FARM_FEE * arg2 / 1000)), msg.sender, arg1);
    return 1
}



}
